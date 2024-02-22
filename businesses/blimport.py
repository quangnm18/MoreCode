from repositories.dlimport import DLImport
import pandas as pd
from datetime import datetime
import numpy as np
import json
import math
from enities.medicine import Medicine

class BLImport:
    oDL = None
    catalog = 0
    
    def __init__(self) -> None:
        self.oDL = DLImport()
        pass
    
    """ Doc noi dung file
    """
    def load_file(self, file, sheet, header):
        df = pd.read_excel(file, sheet_name=sheet, header=header)
        return df
    
    def load_import_config(self):
        config = self.oDL.get_import_config(self.catalog)
        require_column = config[0]["ColumnRequire"].split(",")
        return require_column
    
    """Lay thiet lap cua tung cot
    """
    def load_column_config(self, data_fields):
        column_configs = self.oDL.get_column_config(data_fields, self.catalog)
        return column_configs

    """Lay mapping cot voi field
    """
    def load_mapping_column_config(self):
        mapping_column_config = self.oDL.get_mapping_column_config(self.catalog)
        return mapping_column_config

    """Mapping du lieu
    """
    def mapping_datafield(self, title_columns):
        mapping_column_config = self.load_mapping_column_config()
        lst_mapping = {}
        for i in range(len(mapping_column_config)):
            mapping = mapping_column_config[i]["MappingValue"].split(",")
            f_mapping = []
            for item in mapping:
                item = item.replace("Đ", "Đ").replace("Ð", "Đ")
                f_mapping.append(item)
            lst_mapping[mapping_column_config[i]["DataField"]] = f_mapping
            
        mapping_data_fields = []
        for i in range(len(title_columns)):
            finded = False
            for key in lst_mapping.keys():
                if finded:
                    break
                if title_columns[i] in lst_mapping[key]:
                    temp = { "index": i, "data_field": key }
                    mapping_data_fields.append(temp)
                    finded = True
                    break
        
        return mapping_data_fields
    
    def handle_read_file(self, file, sheet, header):
        df = self.load_file(file, sheet, header)
        df.select_dtypes(include=[np.datetime64])
        title = df.columns
        data = df.head().to_numpy()
        f_title = []
        for item in title:
            item = item.replace("Đ", "Đ").replace("Ð", "Đ")
            f_title.append(item.replace("*", "").strip())
            
        return (f_title, data)
    
    def preview_data(self, file, sheet, header):
        (f_title, data) = self.handle_read_file(file, sheet, header)
        mapping_data_field = self.mapping_datafield(f_title)
        read_data = self.read_data(f_title, data, mapping_data_field)
        if len(read_data) > 20:
            read_data = read_data[0: 20]
        
        result = {
            "title": f_title,
            "data": read_data
        }
        return result
    
    def read_data(self, title, data, mapping_data_field):
        result = []
        columns = {}
        for i in range(len(title)):
            for item in mapping_data_field:
                if item["index"] == i:
                    columns[i] = item["data_field"]
                    break
        for i in range(len(data)):
            temp_data = {}
            for j in range(len(title)):
                if j in columns.keys():
                    if isinstance(data[i][j], pd._libs.tslibs.timestamps.Timestamp):
                        data[i][j] = data[i][j].date().strftime("%Y-%m-%d")
                    temp_data[columns[j]] = data[i][j]
            result.append(temp_data)
            
        return result
    
    def validate_data(self, file, sheet, header):
        (f_title, data) = self.handle_read_file(file, sheet, header)
        require_column = self.load_import_config()
        mapping_data_field = self.mapping_datafield(f_title)
        data_field = []
        for item in mapping_data_field:
            data_field.append(item["data_field"])
        lst_column_not_exist = self.validate_require_column_exist(require_column, data_field)
        if len(lst_column_not_exist) > 0:
            return False
        
        column_config = self.oDL.get_column_config(data_field, self.catalog)
        read_data = self.read_data(f_title, data, mapping_data_field)
        check = self.handle_validate_data(column_config, require_column, read_data, True)
        if type(check) == bool:
            return check
        else:
            return True
        
    
    def validate_require_column_exist(self, require_column, data_field):
        lst_column_not_exist = []
        for column in require_column:
            if not(column in data_field):
                lst_column_not_exist.append(column)
        return lst_column_not_exist
        
    def handle_validate_data(self, column_config, require_column, data, return_when_error, error_msg = []):
        final_data = []
        for item in data:
            valid_data = True
            error = []
            for key in item.keys():
                config = list(filter(lambda x : x["DataField"] == key, column_config))
                if len(config[0]["Config"]) == 0:
                    continue
                config = json.loads(config[0]["Config"])
                if key in require_column:
                    if (type(item[key]) == str and len(item[key]) == 0) or ((type(item[key]) == float or type(item[key]) == int) and math.isnan(item[key])):
                        valid_data = False
                        error.append({"key": key, "msg": "Không được để trống"})
                
                if "DataType" in config.keys():
                    if config["DataType"] == "string":
                        try:
                            item[key] = str(item[key])
                            if item[key] == 'nan':
                                item[key] = ""
                        except:
                            valid_data = False
                            error.append({"key": key, "msg": "Dữ liệu không đúng định dạng"})
                    elif config["DataType"] == "int" and not(math.isnan(item[key])):
                        try:
                            item[key] = int(item[key])
                        except:
                            valid_data = False
                            error.append({"key": key, "msg": "Dữ liệu không đúng định dạng"})
                    elif config["DataType"] == "float" and not(math.isnan(item[key])):
                        try:
                            item[key] = float(item[key])
                        except:
                            valid_data = False
                            error.append({"key": key, "msg": "Dữ liệu không đúng định dạng"})
                    elif config["DataType"] == "date":
                        if str(item[key]) == 'nan':
                            item[key] = ""
                        if item[key] != '':
                            try:
                                datetime.strptime(item[key],"%Y-%m-%d")
                            except:
                                valid_data = False
                                error.append({"key": key, "msg": "Dữ liệu không đúng định dạng"})
                
                if "MaxLength" in config.keys() and len(item[key]) > config["MaxLength"]:
                    valid_data = False
                    error.append({"key": key, "msg": "Dữ liệu vượt quá " + str(config["MaxLength"]) + " ký tự"})
                
                if "Exist" in config.keys(): 
                    if (type(item[key]) == str and len(item[key]) > 0) or (type(item[key]) == int and not(math.isnan(item[key]))):
                        check = self.oDL.check_element_exist(config["Exist"], config["Key"], item[key])
                        if not(check):
                            valid_data = False
                            error.append({"key": key, "msg": "Dữ liệu không có trong danh mục"})
            
            if valid_data:
                final_data.append(item)
            elif return_when_error:
                return False
            
            error_msg.append(error)
                
        return (final_data, error_msg)
    
    def download_file_validate(self, file, sheet, header):
        (f_title, data) = self.handle_read_file(file, sheet, header)
        require_column = self.load_import_config()
        mapping_data_field = self.mapping_datafield(f_title)
        data_field = []
        export_column = ["Lỗi"]
        for item in mapping_data_field:
            data_field.append(item["data_field"])
            export_column.append(f_title[item["index"]])
        lst_column_not_exist = self.validate_require_column_exist(require_column, data_field)
        mapping_column_config = self.load_mapping_column_config()
        content_column_not_exist = []
        for column in lst_column_not_exist:
            config = list(filter(lambda x : x["DataField"] == column, mapping_column_config))
            content_column_not_exist.append("<" + config[0]["MappingValue"].split(",")[0] + ">")
        data_export = []
        if len(content_column_not_exist) > 0:
            data_export.append(["Không được thiếu các cột: " + ";".join(content_column_not_exist)])
        column_config = self.oDL.get_column_config(data_field, self.catalog)
        read_data = self.read_data(f_title, data, mapping_data_field)
        (_, error_msg) = self.handle_validate_data(column_config, require_column, read_data, False, [])
        for i in range(len(error_msg)):
            error = error_msg[i]
            content_msg = ""
            for msg in error:
                config = list(filter(lambda x : x["data_field"] == msg["key"], mapping_data_field))
                content_msg = content_msg + "<%s>: %s" % (f_title[config[0]["index"]], msg["msg"]) + "; "
            temp_data = [content_msg]
            for key in read_data[i].keys():
                temp_data.append(read_data[i][key])
            data_export.append(temp_data)
        
        df = pd.DataFrame(data_export, columns=export_column)
        file_name = "filevalidates/file_validate.xlsx" 
        with pd.ExcelWriter(file_name, engine='xlsxwriter') as writer:
            df.to_excel(writer, sheet_name='Sheet1', index=None)
            workbook = writer.book
            worksheet = writer.sheets['Sheet1']
            border_format = workbook.add_format({'color': 'red'})
            for i, col in enumerate(df.columns):
                column_len = max(df[col].astype(str).apply(len).max(), len(col))
                if i == 0:
                    worksheet.set_column(i, i, column_len + 20, cell_format=border_format)
                else: 
                    worksheet.set_column(i, i, column_len + 20)
        return file_name
    
    def import_data(self, file, sheet, header):
        (f_title, data) = self.handle_read_file(file, sheet, header)
        require_column = self.load_import_config()
        mapping_data_field = self.mapping_datafield(f_title)
        data_field = []
        for item in mapping_data_field:
            data_field.append(item["data_field"])
        lst_column_not_exist = self.validate_require_column_exist(require_column, data_field)
        if len(lst_column_not_exist) > 0:
            return False
        
        column_config = self.oDL.get_column_config(data_field, self.catalog)
        read_data = self.read_data(f_title, data, mapping_data_field)
        (save_data, _) = self.handle_validate_data(column_config, require_column, read_data, False)
        if self.catalog == 1:
            self.handle_save_medicine(save_data)
        return (len(save_data), len(read_data))
    
    def handle_save_medicine(self, data):
        for item in data:
            save_data = Medicine()
            for key in item.keys():
                if hasattr(save_data, key):
                    if str(item[key]) == 'nan' or str(item[key]) == '':
                        item[key] = None
                    setattr(save_data, key, item[key])

            unit_id = self.oDL.get_unitid_by_unitcode(item["unit_code"])
            group_id = None
            if len(item["group_code"]) > 0:
                group_id = self.oDL.get_groupid_by_groupcode(item["group_code"])
            
            param = (save_data.sdk, save_data.han_sdk, save_data.ten, save_data.hoat_chat, save_data.ham_luong, save_data.sqd, save_data.nam_cap, save_data.dot_cap, save_data.dang_bao_che, save_data.dong_goi, save_data.tieu_chuan, save_data.han_dung, save_data.cty_dk, save_data.dchi_ctydk, save_data.cty_sx, save_data.dchi_ctysx, group_id, unit_id)       
            print(param)
            self.oDL.save_data(param, self.catalog)