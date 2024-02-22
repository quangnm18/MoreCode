from .dlbase import DLBase

class DLInvoice(DLBase):
    def __init__(self) -> None:
        super().__init__()
        
    def get_invoice_data(self, id):
        sql = "select * from sale_cp s where s.id = %s;"
        param = (id, )
        data = self.query_command(sql, param)
        return data
    
    def get_invoice_detail_data(self, ma_hoa_don):
        sql = "select * from sale_detail s where s.ma_hoa_don = %s;"
        param = (ma_hoa_don, )
        data = self.query_command(sql, param)
        return data