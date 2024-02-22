from .dlbase import DLBase

class DLTest(DLBase):
    def __init__(self) -> None:
        super().__init__()
        
        
    def test(self):
        sql = "select * from importcolumnmapping;"
        data = self.query_command(sql, ())
        return data