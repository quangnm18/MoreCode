from .dlbase import DLBase

class DLImport(DLBase):
    def __init__(self) -> None:
        super().__init__()
        
    def get_import_config(self, catalog):
        sql = "SELECT * FROM importconfig i WHERE i.Catalog = %s;"
        param = (catalog, )
        data = self.query_command(sql, param)
        return data
    
    def get_mapping_column_config(self, catalog):
        sql = "SELECT * FROM importcolumnmapping i WHERE i.Catalog = %s;"
        data = self.query_command(sql, (catalog, ))
        return data
    
    def get_column_config(self, data_fields, catalog):
        if len(data_fields) == 1:
            sql = "SELECT * FROM importcolumnconfig i WHERE i.Catalog = %s AND i.DataField = %s; "
            data = self.query_command(sql, (catalog, data_fields[0]))
            return data
        else:
            format_strings = ','.join(['%s'] * len(data_fields))
            sql = "SELECT * FROM importcolumnconfig i WHERE i.Catalog = %s AND i.DataField IN (%s)" % ('%s', format_strings)
            data_fields.insert(0, catalog)
            param = tuple(data_fields)
            data = self.query_command(sql, param)
            return data
        
    def check_element_exist(self, table, field, value):
        sql = "SELECT * FROM %s c WHERE c.%s = '%s';" % (table, field, value)
        data = self.query_command(sql, ())
        return len(data) > 0
    
    def save_data(self, param, catalog):
        if catalog == 1:
            sql = '''INSERT INTO medicine(sdk, han_sdk, ten, hoat_chat, ham_luong, sqd, nam_cap, dot_cap, dang_bao_che, dong_goi, tieu_chuan, han_dung, cty_dk, dchi_ctydk, cty_sx, dchi_ctysx, isDeleted, deletedAt, nhom_thuoc, don_vi_duoc)
                    VALUE(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, FALSE, NULL, %s, %s);'''
            self.excute_command(sql, param)
    
    def get_unitid_by_unitcode(self, unit_code):
        sql = "SELECT um.id FROM unit_med um WHERE um.unit_code = %s;"
        data = self.query_command(sql, (unit_code, ))
        return data[0]["id"]
        
    def get_groupid_by_groupcode(self, group_code):
        sql = "SELECT gm.id FROM group_medicine gm WHERE gm.group_code = %s;"
        data = self.query_command(sql, (group_code, ))
        return data[0]["id"]
        