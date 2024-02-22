CREATE TABLE `importcolumnconfig` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `DataField` varchar(255) NOT NULL DEFAULT '',
  `Config` text,
  `Catalog` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `importcolumnmapping` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `DataField` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MappingValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Catalog` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `importconfig` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Catalog` int NOT NULL,
  `ColumnRequire` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `importconfig`
(`Catalog`, `ColumnRequire`)
VALUES (1, 'sdk,ten,hoat_chat,ham_luong,dang_bao_che,dong_goi,han_dung,cty_dk,cty_sx,unit_code');

INSERT INTO `importcolumnconfig`
(`DataField`, `Config`, `Catalog`)
VALUES
('sdk', '{"MaxLength":255, "DataType": "string"}', 1),
('han_sdk', '{"DataType": "date"}', 1),
('ten', '{"MaxLength":255, "DataType": "string"}', 1),
('hoat_chat', '{"DataType": "string"}', 1),
('ham_luong', '{"MaxLength":1000,"DataType": "string"}', 1),
('sqd', '{"MaxLength":255, "DataType": "string"}', 1),
('nam_cap', '{"DataType": "date"}', 1),
('dot_cap', '{"MaxLength":255, "DataType": "string"}', 1),
('dang_bao_che', '{"MaxLength":1000, "DataType": "string"}', 1),
('dong_goi', '{"DataType": "string"}', 1),
('tieu_chuan', '{"MaxLength":255, "DataType": "string"}', 1),
('han_dung', '{"MaxLength":255, "DataType": "string"}', 1),
('cty_dk', '{"MaxLength":1000, "DataType": "string"}', 1),
('dchi_ctydk', '{"MaxLength":1000, "DataType": "string"}', 1),
('cty_sx', '{"MaxLength":1000, "DataType": "string"}', 1),
('dchi_ctysx', '{"MaxLength":1000, "DataType": "string"}', 1),
('group_code', '{"MaxLength":255, "Exist": "group_medicine", "Key": "group_code", "DataType": "string"}', 1),
('unit_code', '{"MaxLength":255, "Exist": "unit_med", "Key": "unit_code", "DataType": "string"}', 1);

INSERT INTO `importcolumnmapping`
(`DataField`, `MappingValue`, `Catalog`)
VALUES
('sdk', 'Số đăng ký,SỐ ĐĂNG KÝ,SỐ ĐK', 1),
('han_sdk', 'Ngày hết hạn đăng ký,Hạn đăng ký,Hạn ÐK,Ngày hết hạn ĐK,NGÀY HẾT HẠN ĐĂNG KÝ,HẠN ĐĂNG KÝ,NGÀY HẾT HẠN ĐK,HẠN ĐK', 1),
('ten', 'Tên thuốc,TÊN THUỐC,THUỐC,Thuốc', 1),
('hoat_chat', 'Hoạt chất,HOẠT CHẤT', 1),
('ham_luong', 'Hàm lượng,HÀM LƯỢNG', 1),
('sqd', 'Số quyết định,SỐ QUYẾT ĐỊNH,SỐ QĐ,Số QĐ', 1),
('nam_cap', 'Năm cấp,NĂM CẤP', 1),
('dot_cap', 'Đợt cấp,ĐỢT CẤP', 1),
('dang_bao_che', 'Dạng bào chế,DẠNG BÀO CHẾ', 1),
('dong_goi', 'Quy cách đóng gói,QUY CÁCH ĐÓNG GÓI,Quy cách,QUY CÁCH', 1),
('tieu_chuan', 'Tiêu chuẩn,TIÊU CHUẨN', 1),
('han_dung', 'Hạn dùng,HẠN DÙNG,HSD', 1),
('cty_dk', 'Công ty đăng ký,CÔNG TY ĐĂNG KÝ,Công ty ĐK,CÔNG TY ĐK', 1),
('dchi_ctydk', 'Địa chỉ công ty đăng ký,ĐỊA CHỈ CÔNG TY ĐĂNG KÝ,Địa chỉ công ty ĐK,ĐỊA CHỈ CÔNG TY ĐK', 1),
('cty_sx', 'Công ty sản xuất,CÔNG TY SẢN XUẤT,CÔNG TY SX,Công ty sx', 1),
('dchi_ctysx', 'Địa chỉ công ty sản xuất,ĐỊA CHỈ CÔNG TY SẢN XUẤT,ĐỊA CHỈ CÔNG TY SX,Địa chỉ công ty SX', 1),
('group_code', 'Mã nhóm thuốc,MÃ NHÓM THUỐC', 1),
('unit_code', 'MÃ ĐƠN VỊ DƯỢC,Mã đơn vị dược', 1);

