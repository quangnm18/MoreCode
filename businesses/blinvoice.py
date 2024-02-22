import lxml.html
from lxml import etree
from datetime import datetime
import pdfkit
from repositories.dlinvoice import DLInvoice
import os
import requests
from dotenv import load_dotenv

load_dotenv()

class BLInvoice:
    oDL = None
    say_digit = {
        "0": "không",
        "1": "một",
        "2": "hai",
        "3": "ba",
        "4": "bốn",
        "5": "năm",
        "6": "sáu",
        "7": "bảy",
        "8": "tám",
        "9": "chín"
    }
    
    seperate = {
        2: ("nghìn"),
        3: ("triệu", "nghìn"),
        4: ("tỷ", "triệu", "nghìn")    
    }
    
    def __init__(self) -> None:
        self.oDL = DLInvoice()
        
    def get_invoice_pdf(self, id):
        (master_data, detail_data) = self.get_invoice_data(id)
        template_detail = self.get_file_content("template/template_item.xml")
        template_master = self.get_file_content("template/template_data.xml")
        
        xml = self.binding_data_master(master_data, template_master)
        detail = self.binding_data_detail(detail_data, template_detail)
        xml = xml.replace("##HHDVu##", detail)
        
        xslt_doc = etree.parse("template/template_invoice.xslt")
        xslt_transformer = etree.XSLT(xslt_doc)
        source_doc = etree.fromstring(xml)
        output_doc = xslt_transformer(source_doc)
        html = str(output_doc)
        config = pdfkit.configuration(wkhtmltopdf='C:\\Program Files\\wkhtmltopdf\\bin\\wkhtmltopdf.exe')
        pdf = pdfkit.from_string(html, False, configuration=config)
        
        return pdf
        
    def get_invoice_data(self, id):
        master_data = None
        detail_data = None
        temp_data = self.oDL.get_invoice_data(id)
        if len(temp_data) > 0:
            master_data = temp_data[0]
            detail_data = self.oDL.get_invoice_detail_data(master_data["ma_hoa_don"])
            
        return (master_data, detail_data)
            
    
    def get_file_content(self, path):
        content = ''
        with open(path, encoding="utf8") as f: content = f.read()
        return content
    
    def binding_data_detail(self, data, template):
        if len(data) == 0:
            return ""
        
        result = ""
        for i in range(len(data)):
            item = data[i]
            result = result + template.replace("##STT##", str(i+1)).replace("##THHDVu##", item["ten_duoc"]).replace("##DVTinh##", item["don_vi_ban"]).replace("##SLuong##", str(item["so_luong_ban"])).replace("##DGia##", str(item["don_gia_ban"])).replace("##ThTien##", str(item["thanh_tien"]))
            
        return result
    
    def binding_data_master(self, data, template):
        invoice_date = str(data["createdDate"])
        phram_name = os.environ.get("PHRAM_NAME")
        tax_code = os.environ.get("PHRAM_TAXCODE") 
        address = os.environ.get("PHRAM_ADDRESS") 
        phone = os.environ.get("PHRAM_PHONE")
        bank_account = os.environ.get("PHRAM_BANK") 
        bank_name = os.environ.get("PHRAM_BANK_NAME") 
        template = template.replace("##NLap##", invoice_date).replace("##Ten##", phram_name).replace("##MST##", tax_code).replace("##DChi##", address).replace("##SDThoai##", phone).replace("##STKNHang##", bank_account).replace("##TNHang##", bank_name)
        template = template.replace("##TgTCThue##", str(data["tong_tien_hang"]))
        template = template.replace("##TTCKTMai##", str(data["tong_ck"]))
        template = template.replace("##TgTTTBSo##", str(data["tong_phai_tra"]))
        template = template.replace("##TgTTTBChu##", self.say_money(str(data["tong_phai_tra"])))
        
        return template
        
    def say_money(self, money):
        result = ""
        if len(money) == 0:
            return result
        money = money.split(".")[0]
        api = "http://forum.vdevs.net/nossl/mtw.php?number="+money
        response = requests.get(f"{api}")
        if response.status_code == 200:
            data = response.json()
            result = data.get("result")
        else:
            result = ""

        return result
        
        