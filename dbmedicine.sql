CREATE TABLE `branchs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `branchscol` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `export_cp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creatorId` int DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `totalPrice` float DEFAULT NULL,
  `sendTo` int DEFAULT NULL,
  `status` tinyint DEFAULT '2',
  `updateStatusDate` datetime DEFAULT NULL,
  `invoice_code` varchar(1000) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `export_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_code` varchar(1000) DEFAULT NULL,
  `importDetail_id` int DEFAULT NULL,
  `ten` varchar(1000) DEFAULT NULL,
  `count` float DEFAULT NULL,
  `convertCount` float DEFAULT NULL,
  `totalCount` float DEFAULT NULL,
  `importPrice` float DEFAULT NULL,
  `totalImportPrice` float DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `lotNumber` varchar(1000) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `isExported` tinyint DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `group_medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_nhom_thuoc` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `userId_del` int DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ipt_cp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `thanh_tien` float DEFAULT NULL,
  `supplier` int DEFAULT NULL,
  `status` tinyint DEFAULT '2',
  `updatedStatusDate` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  `invoice_code` varchar(255) DEFAULT NULL,
  `giatri_nhap` float DEFAULT NULL,
  `tong_ck` float DEFAULT NULL,
  `tong_vat` float DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ipt_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `med` varchar(1000) DEFAULT NULL,
  `soluong_lon` int DEFAULT NULL,
  `soluong_nho` int DEFAULT NULL,
  `sl_tong` int DEFAULT NULL,
  `dvt` varchar(255) DEFAULT NULL,
  `dong_goi` varchar(1000) DEFAULT NULL,
  `gianhap_chuaqd` float DEFAULT NULL,
  `gianhap_daqd` float DEFAULT NULL,
  `giaban_daqd` float DEFAULT NULL,
  `thanh_tien` float DEFAULT NULL,
  `ck` float DEFAULT '0',
  `vat` float DEFAULT '0',
  `han_dung` datetime DEFAULT NULL,
  `so_lo` varchar(1000) DEFAULT NULL,
  `ma_hoa_don` varchar(255) DEFAULT NULL,
  `soluong_tb` int DEFAULT '0',
  `med_id` int DEFAULT NULL,
  `isImported` tinyint(1) DEFAULT '0',
  `createdDt_at` datetime DEFAULT NULL,
  `isDeletedDt` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sdk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `han_sdk` datetime DEFAULT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hoat_chat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ham_luong` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sqd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nam_cap` datetime DEFAULT NULL,
  `dot_cap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dang_bao_che` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dong_goi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tieu_chuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `han_dung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cty_dk` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dchi_ctydk` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cty_sx` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dchi_ctysx` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nhom_thuoc` int DEFAULT NULL,
  `don_vi_duoc` int DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator_id` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `title` text,
  `content` longtext,
  `updateNote` longtext,
  `status` tinyint DEFAULT '0',
  `updateStatusAt` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `role_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(255) DEFAULT NULL,
  `ma_vai_tro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sale_cp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_nhan_vien` int DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `tong_tien_hang` float DEFAULT NULL,
  `tong_ck` float DEFAULT NULL,
  `tong_phai_tra` float DEFAULT NULL,
  `khach_tra` float DEFAULT NULL,
  `tien_du` float DEFAULT NULL,
  `ma_hoa_don` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  `ck` int DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sale_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `med_id` int DEFAULT NULL,
  `ten_duoc` varchar(1000) DEFAULT NULL,
  `so_luong_ban` int DEFAULT NULL,
  `don_vi_ban` varchar(255) DEFAULT NULL,
  `don_gia_ban` float(10,3) DEFAULT NULL,
  `thanh_tien` float(10,3) DEFAULT NULL,
  `ma_hoa_don` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `loai_dong_goi` varchar(255) DEFAULT NULL,
  `so_lo_hang` varchar(1000) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `ipt_detail_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ten_ncc` varchar(1000) DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `TaxCode` varchar(255) DEFAULT NULL,
  `personRepresent` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `deletedAt` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `unit_med` (
  `id` int NOT NULL AUTO_INCREMENT,
  `donvi_lon` varchar(255) DEFAULT NULL,
  `donvi_tb` varchar(255) DEFAULT NULL,
  `donvi_nho` varchar(255) DEFAULT NULL,
  `unit_code` varchar(255) DEFAULT NULL,
  `description_unit` varchar(1000) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  `userId_del` int DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Address` varchar(1000) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `user_name` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `importcolumnconfig` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `DataField` varchar(255) NOT NULL DEFAULT '',
  `Config` text,
  `Catalog` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `importcolumnmapping` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `DataField` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MappingValue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Catalog` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `importconfig` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Catalog` int NOT NULL,
  `ColumnRequire` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `importconfig`
(`Catalog`, `ColumnRequire`)
VALUES (1, 'ten', 'unit_code', 'group_code');

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


DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `checkall_wh`(in group_id int, in branch_id int, in search_value varchar(255))
BEGIN
	drop temporary table if exists temp_ipt_detail;
    drop temporary table if exists temp_sale_detail;
    drop temporary table if exists temp_export_detail;
    
	create temporary table temp_ipt_detail as
    select sum(i.soluong_lon) as soluong_lon, i.soluong_tb, i.soluong_nho, sum(i.sl_tong) as sl_tong, i.gianhap_chuaqd, i.gianhap_daqd, i.giaban_daqd, i.thanh_tien, i.ck, i.vat, i.med_id, i.dvt, i.dong_goi, i.han_dung, i.so_lo, i.isDeletedDt, i.branch_id, i.med as ten, m.nhom_thuoc, m.don_vi_duoc
	from ipt_detail i left join medicine m on i.med_id = m.id
    where i.isImported = 1 and i.isDeletedDt=0 
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_sale_detail as
    select sum(s.so_luong_ban) as so_luong_ban, s.don_vi_ban, sum(s.thanh_tien) as thanh_tien, i.med_id, i.dong_goi, i.so_lo, s.loai_dong_goi, s.so_lo_hang, s.branch_id
	from sale_detail s
    left join ipt_detail i on s.ipt_detail_id = i.id
    where s.isDeleted = 0
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_export_detail as
    select sum(e.totalCount) as so_luong_xuat, sum(e.totalImportPrice) as tong_gia_tri, i.so_lo, e.branch_id, i.med_id, i.dong_goi, i.dvt
	from export_detail e
    left join ipt_detail i on e.importDetail_id = i.id
    where e.isExported = 1
    group by i.so_lo, i.med_id, i.dong_goi;

if branch_id is null and group_id is null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 0 ORDER by t.ten;
    else
		SET @check = lower(concat('%', search_value, '%'));
       select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 0 and lower((t.ten) like @check) ORDER by t.ten;
    end if;
end if;

if branch_id is not null and group_id is not null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id and t.nhom_thuoc = group_id order by t.ten;
    else
		SET @check = lower(concat('%', search_value, '%'));
       select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id and t.nhom_thuoc = group_id 
        and lower(t.ten) like @check order by t.ten;
    end if;
end if;

if branch_id is null and group_id is not null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 0 and t.nhom_thuoc = group_id order by t.ten;
    else
		SET @check = lower(concat('%', search_value, '%'));
       select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 0 and t.nhom_thuoc = group_id and lower(t.ten) like @check  order by t.ten;
    end if;
end if;

if branch_id is not null and group_id is null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id order by t.ten;
    else
		SET @check = lower(concat('%', search_value, '%'));
       select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id
        and lower(t.ten) like @check  order by t.ten;
    end if;
end if;
    
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `get_inventory`(in sort_col int, in sort_type varchar(255), in group_id int, in branch_id int, in search_value varchar(255), in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_ipt_detail;
    drop temporary table if exists temp_sale_detail;
    drop temporary table if exists temp_export_detail;
    drop temporary table if exists temp_warehouse;
    
	create temporary table temp_ipt_detail as
    select sum(i.soluong_lon) as soluong_lon, i.soluong_tb, i.soluong_nho, sum(i.sl_tong) as sl_tong, i.gianhap_chuaqd, i.gianhap_daqd, i.giaban_daqd, i.med_id, i.dvt, i.dong_goi, i.han_dung, i.so_lo, i.isDeletedDt, i.branch_id, i.med as ten, m.nhom_thuoc, m.don_vi_duoc, m.hoat_chat, m.ham_luong
	from ipt_detail i left join medicine m on i.med_id = m.id
    where i.isImported = 1 and i.isDeletedDt=0 and i.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_sale_detail as
    select sum(s.so_luong_ban) as so_luong_ban, s.don_vi_ban, sum(s.thanh_tien) as thanh_tien, i.med_id, i.dong_goi, s.loai_dong_goi, s.so_lo_hang, s.branch_id, i.so_lo as so_lo_ban
	from sale_detail s
    left join ipt_detail i on s.ipt_detail_id = i.id
    where s.isDeleted = 0 and s.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_export_detail as
    select sum(e.totalCount) as so_luong_xuat, sum(e.count) as soluonglon_xuat, sum(e.totalImportPrice) as tong_gia_tri, i.so_lo as so_lo_xuat, e.branch_id, i.med_id, i.dong_goi, i.dvt
	from export_detail e
    left join ipt_detail i on e.importDetail_id = i.id
    where e.isExported = 1 and e.isDeleted = 0 and e.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_warehouse as
    select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, s.so_luong_ban, so_luong_xuat, t.*
    from temp_ipt_detail t
    left join temp_sale_detail s on t.so_lo = s.so_lo_ban and t.med_id = s.med_id and t.dong_goi = s.dong_goi
    left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
    left join unit_med u on t.don_vi_duoc = u.id 
	left join group_medicine g on t.nhom_thuoc = g.id ;
   
if branch_id is null and group_id is null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_warehouse;
		select t.*, (t.sl_tong - t.so_luong_ban - t.so_luong_xuat) as so_luong_conlai 
		from temp_warehouse t
		ORDER by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_warehouse
       where lower(ten) like @check;
       select t.* 
		from temp_warehouse t
		where lower((t.ten) like @check) ORDER by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null and group_id is not null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail 
        where temp_ipt_detail.branch_id = branch_id and temp_ipt_detail.nhom_thuoc = group_id;
		select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id and t.nhom_thuoc = group_id 
        order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_ipt_detail
       where temp_ipt_detail.branch_id = branch_id and temp_ipt_detail.nhom_thuoc = group_id and lower(ten) like @check;
       select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = n.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id and t.nhom_thuoc = group_id 
        and lower(t.ten) like @check order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is null and group_id is not null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail
        where temp_ipt_detail.nhom_thuoc = group_id;
		select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = n.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 0 and t.nhom_thuoc = group_id 
        order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_ipt_detail
       where temp_ipt_detail.nhom_thuoc = group_id and lower(ten) like @check;
       select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 0 and t.nhom_thuoc = group_id and lower(t.ten) like @check  order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null and group_id is null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail 
        where temp_ipt_detail.branch_id = branch_id;
		select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_ipt_detail
       where temp_ipt_detail.branch_id = branch_id and lower(ten) like @check;
       select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = n.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 0 and t.branch_id = branch_id 
        and lower(t.ten) like @check  order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `get_search_ipt`(in search_value varchar(255))
BEGIN
	SET @check = lower(concat('%', search_value, '%'));
	select g.ten_nhom_thuoc, u.donvi_lon, u.description_unit, u.donvi_nho, u.donvi_tb, m.* from medicine m
    left join unit_med u on m.don_vi_duoc = u.id
    left join group_medicine g on m.nhom_thuoc = g.id
    where m.isDeleted=0 and (lower(m.ten) like @check);
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `get_search_sell`(in branch_id int, in search_value varchar(255))
BEGIN
	drop temporary table if exists temp_ipt_detail;
    drop temporary table if exists temp_sale_detail;
    drop temporary table if exists temp_export_detail;
    
	create temporary table temp_ipt_detail as
    select sum(i.soluong_lon) as soluong_lon, i.soluong_tb, i.soluong_nho, sum(i.sl_tong) as sl_tong, i.gianhap_chuaqd, i.gianhap_daqd, i.giaban_daqd, i.thanh_tien, i.ck, i.vat, i.id, i.med_id, i.dvt, i.dong_goi, i.han_dung, i.so_lo, i.branch_id, m.ten, m.nhom_thuoc, m.don_vi_duoc, m.ham_luong, m.hoat_chat
	from ipt_detail i left join medicine m on i.med_id = m.id
    where i.isImported = 1 and i.isDeletedDt=0 and i.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_sale_detail as
    select sum(s.so_luong_ban) as so_luong_ban, s.don_vi_ban, sum(s.thanh_tien) as thanh_tien, i.med_id, s.loai_dong_goi, s.branch_id, i.dong_goi, i.so_lo as so_lo_hang
	from sale_detail s
    left join ipt_detail i on s.ipt_detail_id = i.id
    where s.isDeleted = 0 and s.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_export_detail as
    select sum(e.totalCount) as so_luong_xuat, sum(e.count) as soluonglon_xuat, sum(e.totalImportPrice) as tong_gia_tri, i.so_lo as so_lo_xuat, e.branch_id, i.med_id, i.dong_goi, i.dvt
	from export_detail e
    left join ipt_detail i on e.importDetail_id = i.id
    where e.isExported = 1 and e.isDeleted = 0 and e.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
	
    SET @check = lower(concat('%', search_value, '%'));
    select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.soluonglon_xuat, e.so_luong_xuat, t.*
    from temp_ipt_detail t
    left join temp_sale_detail n on t.so_lo = n.so_lo_hang and t.med_id = n.med_id and t.dong_goi = n.dong_goi
    left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
	left join unit_med u on t.don_vi_duoc = u.id 
	left join group_medicine g on t.nhom_thuoc = g.id
    where lower(t.ten) like @check order by t.han_dung;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `get_wh_removed`(in sort_col int, in sort_type varchar(255), in group_id int, in branch_id int, in search_value varchar(255), in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_ipt_detail;
    drop temporary table if exists temp_sale_detail;
    drop temporary table if exists temp_export_detail;
    drop temporary table if exists temp_warehouse;
    
	create temporary table temp_ipt_detail as
    select sum(i.soluong_lon) as soluong_lon, i.soluong_tb, i.soluong_nho, sum(i.sl_tong) as sl_tong, i.gianhap_chuaqd, i.gianhap_daqd, i.giaban_daqd, i.med_id, i.dvt, i.dong_goi, i.han_dung, i.so_lo, i.isDeletedDt, i.branch_id, i.med as ten, m.nhom_thuoc, m.don_vi_duoc, m.hoat_chat, m.ham_luong
	from ipt_detail i left join medicine m on i.med_id = m.id
    where i.isImported = 1 and i.isDeletedDt=1 and i.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_sale_detail as
    select sum(s.so_luong_ban) as so_luong_ban, s.don_vi_ban, sum(s.thanh_tien) as thanh_tien, i.med_id, s.loai_dong_goi, s.so_lo_hang, s.branch_id, i.dong_goi, i.so_lo as so_lo_ban
	from sale_detail s
    left join ipt_detail i on s.ipt_detail_id = i.id
    where s.isDeleted = 0 and s.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_export_detail as
    select sum(e.totalCount) as so_luong_xuat, sum(e.count) as soluonglon_xuat, sum(e.totalImportPrice) as tong_gia_tri, i.so_lo as so_lo_xuat, e.branch_id, i.med_id, i.dong_goi, i.dvt
	from export_detail e
    left join ipt_detail i on e.importDetail_id = i.id
    where e.isExported = 1 and e.isDeleted = 0 and e.branch_id = branch_id
    group by i.so_lo, i.med_id, i.dong_goi;
    
    create temporary table temp_warehouse as
    select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, s.so_luong_ban, so_luong_xuat, t.*
    from temp_ipt_detail t
    left join temp_sale_detail s on t.so_lo = s.so_lo_ban and t.med_id = s.med_id and t.dong_goi = s.dong_goi
    left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
    left join unit_med u on t.don_vi_duoc = u.id 
	left join group_medicine g on t.nhom_thuoc = g.id ;
   
if branch_id is null and group_id is null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_warehouse;
		select t.*, (t.sl_tong - t.so_luong_ban - t.so_luong_xuat) as so_luong_conlai 
		from temp_warehouse t
		ORDER by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_warehouse
       where lower(ten) like @check;
       select t.* 
		from temp_warehouse t
		where lower((t.ten) like @check) ORDER by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null and group_id is not null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail 
        where temp_ipt_detail.branch_id = branch_id and temp_ipt_detail.nhom_thuoc = group_id;
		select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 1 and t.branch_id = branch_id and t.nhom_thuoc = group_id 
        order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_ipt_detail
       where temp_ipt_detail.branch_id = branch_id and temp_ipt_detail.nhom_thuoc = group_id and lower(ten) like @check;
       select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 1 and t.branch_id = branch_id and t.nhom_thuoc = group_id 
        and lower(t.ten) like @check order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is null and group_id is not null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail
        where temp_ipt_detail.nhom_thuoc = group_id;
		select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 1 and t.nhom_thuoc = group_id 
        order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_ipt_detail
       where temp_ipt_detail.nhom_thuoc = group_id and lower(ten) like @check;
       select g.ten_nhom_thuoc, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med u on t.don_vi_duoc = u.id 
		left join group_medicine g on t.nhom_thuoc = g.id
		where t.isDeletedDt = 1 and t.nhom_thuoc = group_id and lower(t.ten) like @check  order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null and group_id is null then
    IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail 
        where temp_ipt_detail.branch_id = branch_id;
		select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 1 and t.branch_id = branch_id order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
		SET @check = lower(concat('%', search_value, '%'));
        select count(*) into totalRecord from temp_ipt_detail
       where temp_ipt_detail.branch_id = branch_id and lower(ten) like @check;
       select group_medicine.ten_nhom_thuoc, unit_med.donvi_lon, unit_med.donvi_tb, unit_med.donvi_nho, unit_med.description_unit, n.so_luong_ban, e.so_luong_xuat, t.* 
		from temp_ipt_detail t
		left join temp_sale_detail n on t.so_lo = n.so_lo_ban and t.med_id = n.med_id and t.dong_goi = n.dong_goi
        left join temp_export_detail e on t.so_lo = e.so_lo_xuat and t.med_id = e.med_id and t.dong_goi = e.dong_goi
		left join unit_med on t.don_vi_duoc = unit_med.id 
		left join group_medicine on t.nhom_thuoc = group_medicine.id
		where t.isDeletedDt = 1 and t.branch_id = branch_id 
        and lower(t.ten) like @check  order by 
			case when sort_col = 24 and sort_type = 'asc' then t.ten end asc,
            case when sort_col = 24 and sort_type = 'desc' then t.ten end desc,
            case when sort_col = 10 and sort_type = 'asc' then t.sl_tong end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.sl_tong end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `home_page`(in date_start datetime, in date_to datetime, in branch_id int, in curr_date datetime, out count_due int, out count_neardue int, out count_ok int, out tonggt_nhap float, out tong_ban float, out count_rp int)
BEGIN
if branch_id is not null then
	drop temporary table if exists temp_ipt_warning;
	drop temporary table if exists temp_ipt_detail;
    drop temporary table if exists temp_sale_detail;
    drop temporary table if exists temp_report;
    
    create temporary table temp_ipt_warning as
    select (i.han_dung - curr_date) as count_date, i.createdDt_at, i.branch_id, i.isDeletedDt, i.isImported, i.so_lo from ipt_detail i 
    where i.isDeletedDt = 0 and i.branch_id = branch_id and i.isImported = 1;

	create temporary table temp_ipt_detail as
    select i.thanh_tien as thanh_tien_nhap, (i.han_dung - curr_date) as count_date, i.createdDt_at, i.branch_id, i.isDeletedDt, i.isImported, i.so_lo from ipt_detail i 
    where i.branch_id = branch_id and i.isImported = 1 and (i.createdDt_at >= date_start and i.createdDt_at <= date_to);
    
    create temporary table temp_sale_detail as
    select s.thanh_tien as thanh_tien_ban, s.so_luong_ban, s.createdAt, s.branch_id, s.isDeleted, i.so_lo as so_lo_ban, i.gianhap_daqd 
    from sale_detail s left join ipt_detail i on s.ipt_detail_id = i.id
    where s.isDeleted = 0 and s.branch_id = branch_id and (s.createdAt >= date_start and s.createdAt <= date_to);

	create temporary table temp_report as
    select r.*, u.role_id, u.branch_id from report r
    left join users u on r.creator_id = u.ID
    where r.isDeleted = 0 and u.role_id != 1;
    
	select count(*) into count_ok from temp_ipt_warning t where t.branch_id = branch_id and t.isDeletedDt = 0 and t.isImported = 1 and t.count_date >= 1728000000;
    select count(*) into count_due from temp_ipt_warning t where t.branch_id = branch_id and t.isDeletedDt = 0 and t.isImported = 1 and t.count_date <= 172800000;
    select count(*) into count_neardue from temp_ipt_warning t where t.branch_id = branch_id and t.isDeletedDt = 0 and t.isImported = 1 and (t.count_date > 172800000 and t.count_date < 1728000000);
    select sum(t.thanh_tien_nhap) into tonggt_nhap from temp_ipt_detail t where t.branch_id = branch_id and t.isImported = 1;
    select sum(n.thanh_tien_ban) into tong_ban from temp_sale_detail n where n.branch_id = branch_id and n.isDeleted = 0;
    select count(*) into count_rp from temp_report t where t.branch_id = branch_id;
    
    select count_ok, count_due, count_neardue, tonggt_nhap, tong_ban, count_rp;
	select n.thanh_tien_ban, n.so_luong_ban, n.gianhap_daqd, n.createdAt from temp_sale_detail n;
    
    select t.thanh_tien_nhap, t.createdDt_at from temp_ipt_detail t;
    
 end if;
 
 if branch_id is null then
	drop temporary table if exists temp_ipt_warning;
	drop temporary table if exists temp_ipt_detail;
    drop temporary table if exists temp_sale_detail;
    drop temporary table if exists temp_report;
    
    create temporary table temp_ipt_warning as
    select (i.han_dung - curr_date) as count_date, i.createdDt_at, i.branch_id, i.isDeletedDt, i.isImported, i.so_lo from ipt_detail i 
    where i.isDeletedDt = 0 and i.isImported = 1;

	create temporary table temp_ipt_detail as
    select i.thanh_tien as thanh_tien_nhap, (i.han_dung - curr_date) as count_date, i.createdDt_at, i.branch_id, i.isDeletedDt, i.isImported, i.so_lo from ipt_detail i 
    where i.isDeletedDt = 0 and i.isImported = 1 and (i.createdDt_at >= date_start and i.createdDt_at <= date_to);
    
    create temporary table temp_sale_detail as
    select s.thanh_tien as thanh_tien_ban, s.so_luong_ban, s.createdAt, s.branch_id, s.isDeleted, i.so_lo as so_lo_ban, i.gianhap_daqd 
    from sale_detail s left join ipt_detail i on s.ipt_detail_id = i.id
    where s.isDeleted = 0 and (s.createdAt >= date_start and s.createdAt <= date_to);
    
    create temporary table temp_report as
    select r.*, u.role_id, u.branch_id from report r
    left join users u on r.creator_id = u.ID
    where r.isDeleted = 0;

	select count(*) into count_ok from temp_ipt_warning t where t.isDeletedDt = 0 and t.isImported = 1 and t.count_date >= 1728000000;
    select count(*) into count_due from temp_ipt_warning t where t.isDeletedDt = 0 and t.isImported = 1 and t.count_date <= 172800000;
    select count(*) into count_neardue from temp_ipt_warning t where t.isDeletedDt = 0 and t.isImported = 1 and (t.count_date > 172800000 and t.count_date < 1728000000);
    select sum(t.thanh_tien_nhap) into tonggt_nhap from temp_ipt_detail t where t.isDeletedDt = 0 and t.isImported = 1;
    select sum(n.thanh_tien_ban) into tong_ban from temp_sale_detail n where n.isDeleted = 0;
    select count(*) into count_rp from temp_report t where t.role_id = 1;
    
    select count_ok, count_due, count_neardue, tonggt_nhap, tong_ban, count_rp;
	select n.thanh_tien_ban, n.so_luong_ban, n.gianhap_daqd, n.createdAt from temp_sale_detail n;
    
    select t.thanh_tien_nhap, t.createdDt_at from temp_ipt_detail t;
    
 end if;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_branchs`(in sort_col int, in sort_type varchar(255), in search_value varchar(255) ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_users;
    
	create temporary table temp_users as
    select u.Name as ten_quan_ly, u.ID as user_id, u.PhoneNumber, u.Email, u.branch_id, b.* from users u
    left join branchs b on u.branch_id = b.id
    where u.isDeleted = 0 and u.role_id = 1;

IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from branchs where isDeleted = 0;
		select  t.ten_quan_ly, t.user_id, t.PhoneNumber, t.Email, t.branch_id, b.*
        from branchs b left join temp_users t on b.id = t.branch_id
        where b.isDeleted = 0
        order by 
			case when sort_col = 1 and sort_type = 'asc' then b.name end asc,
            case when sort_col = 1 and sort_type = 'desc' then b.name end desc,
            case when sort_col = 2 and sort_type = 'asc' then b.id end asc,
            case when sort_col = 2 and sort_type = 'desc' then b.id end desc,
            case when sort_col = 3 and sort_type = 'asc' then t.ten_quan_ly end asc,
            case when sort_col = 3 and sort_type = 'desc' then t.ten_quan_ly end desc
        limit numRecord offset startRecord;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from branchs where lower(name) like @check;
		select  t.ten_quan_ly, t.user_id, t.PhoneNumber, t.Email, t.branch_id, b.*
        from branchs b left join temp_users t on b.id = t.branch_id
        where b.isDeleted = 0 and lower(b.name) like @check
        order by 
			case when sort_col = 1 and sort_type = 'asc' then b.name end asc,
            case when sort_col = 1 and sort_type = 'desc' then b.name end desc,
            case when sort_col = 2 and sort_type = 'asc' then b.id end asc,
            case when sort_col = 2 and sort_type = 'desc' then b.id end desc,
            case when sort_col = 3 and sort_type = 'asc' then t.ten_quan_ly end asc,
            case when sort_col = 3 and sort_type = 'desc' then t.ten_quan_ly end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_exportcp`(in sort_col int, in sort_type varchar(255), in branch_id int, in date_start datetime, in date_to datetime, in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_export_cp;
    
	create temporary table temp_export_cp as
    select u.Name, a.Name as nguoi_xoa, u.branch_id, b.name as co_so, b.address, e.* from export_cp e 
    left join users u on e.creatorId = u.ID
    left join users a on e.deleted_by = a.ID
    left join branchs b on e.sendTo = b.id
    where e.isDeleted = isDeleted;
    
if branch_id is null then
IF search_value is null OR LENGTH(search_value) = 0 then
	select count(*) into totalRecord from temp_export_cp where temp_export_cp.createdDate between date_start and date_to;
	SELECT t.* FROM temp_export_cp t
	where t.isDeleted=isDeleted and t.createdDate between date_start and date_to 
    order by 
		case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.totalPrice end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.totalPrice end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
    limit numRecord offset startRecord ;
	select totalRecord;

	else 
    SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_export_cp
       where temp_export_cp.isDeleted=isDeleted
		and ((lower(temp_export_cp.invoice_code) like @check) or (lower(temp_export_cp.Name) like @check)) and temp_export_cp.createdDate between date_start and date_to;
		
        SELECT t.* FROM temp_export_cp t
        where t.isDeleted=isDeleted
        and ((lower(t.invoice_code) like @check) or (lower(t.Name) like @check)) and t.createdDate between date_start and date_to
        order by
        case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.totalPrice end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.totalPrice end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null then

IF search_value is null OR LENGTH(search_value) = 0 then
	select count(*) into totalRecord from temp_export_cp where temp_export_cp.branch_id = branch_id and temp_export_cp.createdDate between date_start and date_to;
	SELECT t.* FROM temp_export_cp t 
	where t.isDeleted=isDeleted and t.branch_id = branch_id
    and t.createdDate between date_start and date_to 
    order by 
		case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.totalPrice end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.totalPrice end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
    limit numRecord offset startRecord ;
	select totalRecord;

	else 
    SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_export_cp where temp_export_cp.branch_id = branch_id
		and ((lower(temp_export_cp.invoice_code) like @check) or (lower(temp_export_cp.Name) like @check));
		
        SELECT t.* FROM temp_export_cp t 
		where t.isDeleted=isDeleted and t.branch_id = branch_id and t.createdDate between date_start and date_to 
        and ((lower(t.invoice_code) like @check) or (lower(t.Name) like @check)) and t.createdDate between date_start and date_to
        order by
        case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.totalPrice end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.totalPrice end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_groupmed`(in sort_col int, in sort_type varchar(255), in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from group_medicine where group_medicine.isDeleted=isDeleted;
		select users.Name, g.* from group_medicine g left join users on g.userId_del = users.ID 
        where g.isDeleted=isDeleted
        order by
			case when sort_col = 1 and sort_type = 'asc' then g.ten_nhom_thuoc end asc,
            case when sort_col = 1 and sort_type = 'desc' then g.ten_nhom_thuoc end desc,
            case when sort_col = 2 and sort_type = 'asc' then g.id end asc,
            case when sort_col = 2 and sort_type = 'desc' then g.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from group_medicine
       where group_medicine.isDeleted=isDeleted 
		and lower(ten_nhom_thuoc) like @check;
		
        select users.Name, g.* from group_medicine g left join users on g.userId_del = users.ID 
        where g.isDeleted=isDeleted 
			and lower(g.ten_nhom_thuoc) like @check
		order by
			case when sort_col = 1 and sort_type = 'asc' then g.ten_nhom_thuoc end asc,
            case when sort_col = 1 and sort_type = 'desc' then g.ten_nhom_thuoc end desc,
            case when sort_col = 2 and sort_type = 'asc' then g.id end asc,
            case when sort_col = 2 and sort_type = 'desc' then g.id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_iptcp`(in sort_col int, in sort_type varchar(255), in branch_id int, in date_start datetime, in date_to datetime, in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_ipt_cp;
    
	create temporary table temp_ipt_cp as
    select u.Name, a.Name as nguoi_xoa, u.branch_id, s.ten_ncc, s.ID as sup_id, c.* from ipt_cp c 
    left join users u on c.user_id = u.ID
    left join supplier s on c.supplier = s.ID
    left join users a on c.deleted_by = a.ID
    where c.isDeleted = isDeleted;

if branch_id is null then
IF search_value is null OR LENGTH(search_value) = 0 then
	select count(*) into totalRecord from temp_ipt_cp where temp_ipt_cp.createdDate between date_start and date_to;
	SELECT t.* FROM temp_ipt_cp t
	where t.isDeleted=isDeleted and t.createdDate between date_start and date_to 
    order by 
		case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.thanh_tien end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.thanh_tien end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 5 and sort_type = 'asc' then t.ten_ncc end asc,
		case when sort_col = 5 and sort_type = 'desc' then t.ten_ncc end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
    limit numRecord offset startRecord ;
	select totalRecord;

	else 
    SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_ipt_cp
       where temp_ipt_cp.isDeleted=isDeleted
		and ((lower(temp_ipt_cp.invoice_code) like @check) or (lower(temp_ipt_cp.ten_ncc) like @check) or (lower(temp_ipt_cp.Name) like @check)) and temp_ipt_cp.createdDate between date_start and date_to;
		
        SELECT t.* FROM temp_ipt_cp t
        where t.isDeleted=isDeleted
        and ((lower(t.invoice_code) like @check) or (lower(t.ten_ncc) like @check)) or (lower(t.Name) like @check) and t.createdDate between date_start and date_to
        order by
        case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.thanh_tien end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.thanh_tien end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 5 and sort_type = 'asc' then t.ten_ncc end asc,
		case when sort_col = 5 and sort_type = 'desc' then t.ten_ncc end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null then

IF search_value is null OR LENGTH(search_value) = 0 then
	select count(*) into totalRecord from temp_ipt_cp where temp_ipt_cp.branch_id = branch_id and temp_ipt_cp.createdDate between date_start and date_to;
	SELECT t.* FROM temp_ipt_cp t 
	where t.isDeleted=isDeleted and t.branch_id = branch_id
    and t.createdDate between date_start and date_to 
    order by 
		case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.thanh_tien end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.thanh_tien end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 5 and sort_type = 'asc' then t.ten_ncc end asc,
		case when sort_col = 5 and sort_type = 'desc' then t.ten_ncc end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
    limit numRecord offset startRecord ;
	select totalRecord;

	else 
    SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_ipt_cp where temp_ipt_cp.branch_id = branch_id
		and ((lower(temp_ipt_cp.invoice_code) like @check) or (lower(temp_ipt_cp.ten_ncc) like @check) or (lower(temp_ipt_cp.Name) like @check));
		
        SELECT t.* FROM temp_ipt_cp t 
		where t.isDeleted=isDeleted and t.branch_id = branch_id and t.createdDate between date_start and date_to 
        and ((lower(t.invoice_code) like @check) or (lower(t.ten_ncc) like @check) or (lower(t.Name) like @check)) and t.createdDate between date_start and date_to
        order by
        case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.thanh_tien end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.thanh_tien end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc,
        case when sort_col = 5 and sort_type = 'asc' then t.ten_ncc end asc,
		case when sort_col = 5 and sort_type = 'desc' then t.ten_ncc end desc,
        case when sort_col = 6 and sort_type = 'asc' then t.status end asc,
		case when sort_col = 6 and sort_type = 'desc' then t.status end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_iptdetail`(in sort_col int, in sort_type varchar(255), in group_id int, in branch_id int, in date_start date, in date_to date, in search_value varchar(255), in isImported boolean, in isDeleted boolean, in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_ipt_detail;
    
	create temporary table temp_ipt_detail as
    select u.Name, m.nhom_thuoc, m.ham_luong, m.hoat_chat, i.* from ipt_detail i 
    left join medicine m on i.med_id = m.id left join users u on i.deleted_by = u.ID
    where i.isDeletedDt = isDeleted and i.isImported = isImported and i.branch_id = branch_id;

if branch_id is null and group_id is null then

    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from ipt_detail 
        where ipt_detail.isDeletedDt = isDeleted and ipt_detail.isImported = isImported;
		select c.id as id_phieu_nhap, c.user_id, c.supplier, m.nhom_thuoc as group_id, i.* from ipt_detail i
        left join ipt_cp c on i.ma_hoa_don = c.invoice_code
        left join medicine m on i.med_id = m.id 
        where i.isDeletedDt = isDeleted and i.isImported = isImported 
        and i.createdDt_at between date_start and date_to ORDER by
			case when sort_col = 5 and sort_type = 'asc' then i.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then i.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then i.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then i.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then i.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then i.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
	else 
    
    SET @check1 = lower(concat('%', search_value, '%'));
		select count(*) into totalRecord from ipt_detail 
        where ipt_detail.isDeletedDt = isDeleted and ipt_detail.isImported = isImported
        and (lower(ipt_detail.ma_hoa_don) like @check1 or lower(ipt_detail.med) like @check1);
		select c.id as id_phieu_nhap, c.user_id, c.supplier, m.nhom_thuoc as group_id, i.* from ipt_detail i
        left join ipt_cp c on i.ma_hoa_don = c.invoice_code
        left join medicine m on i.med_id = m.id 
        where i.isDeletedDt = isDeleted and i.isImported = isImported 
        and i.createdDt_at between date_start and date_to 
        and (lower(i.ma_hoa_don) like @check1 or lower(i.med) like @check1)
        ORDER by
			case when sort_col = 5 and sort_type = 'asc' then i.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then i.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then i.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then i.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then i.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then i.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
        end if;
	end if;

if branch_id is not null and group_id is not null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail t
        where t.branch_id = branch_id and t.nhom_thuoc = group_id;
		select c.id as id_phieu_nhap, c.user_id, c.supplier, t.* from temp_ipt_detail t
        left join ipt_cp c on t.ma_hoa_don = c.invoice_code
        where t.isDeletedDt = isDeleted and t.isImported = isImported 
        and t.branch_id = branch_id and t.nhom_thuoc = group_id
        and t.createdDt_at between date_start and date_to ORDER by
			case when sort_col = 5 and sort_type = 'asc' then t.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then t.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then t.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then t.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_ipt_detail t
       where t.branch_id = branch_id and t.nhom_thuoc = group_id
		and ((lower(t.ma_hoa_don) like @check or lower(t.med) like @check) and t.createdDt_at between date_start and date_to);
		
        select c.id as id_phieu_nhap, c.user_id, c.supplier, t.* from temp_ipt_detail t
        left join ipt_cp c on t.ma_hoa_don = c.invoice_code 
        where t.isDeletedDt = isDeleted and t.isImported = isImported
        and t.branch_id = branch_id and t.nhom_thuoc = group_id
		and ((lower(t.ma_hoa_don) like @check or lower(t.med) like @check) and t.createdDt_at between date_start and date_to) 
        ORDER by
			case when sort_col = 5 and sort_type = 'asc' then t.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then t.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then t.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then t.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null and group_id is null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail t
        where t.branch_id = branch_id;
		select c.id as id_phieu_nhap, c.user_id, c.supplier, t.* from temp_ipt_detail t
        left join ipt_cp c on t.ma_hoa_don = c.invoice_code
        where t.isDeletedDt = isDeleted and t.isImported = isImported 
        and t.branch_id = branch_id
        and t.createdDt_at between date_start and date_to ORDER by 
			case when sort_col = 5 and sort_type = 'asc' then t.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then t.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then t.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then t.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_ipt_detail t
       where t.branch_id = branch_id
		and ((lower(t.ma_hoa_don) like @check or lower(t.med) like @check) and t.createdDt_at between date_start and date_to);
		
        select c.id as id_phieu_nhap, c.user_id, c.supplier, t.* from temp_ipt_detail t
        left join ipt_cp c on t.ma_hoa_don = c.invoice_code 
        where t.isDeletedDt = isDeleted and t.isImported = isImported
        and t.branch_id = branch_id
		and ((lower(t.ma_hoa_don) like @check or lower(t.med) like @check) and t.createdDt_at between date_start and date_to) 
        ORDER by
			case when sort_col = 5 and sort_type = 'asc' then t.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then t.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then t.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then t.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is null and group_id is not null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_ipt_detail t
        where t.nhom_thuoc = group_id;
		select c.id as id_phieu_nhap, c.user_id, c.supplier, t.* from temp_ipt_detail t
        left join ipt_cp c on t.ma_hoa_don = c.invoice_code
        where t.isDeletedDt = isDeleted and t.isImported = isImported 
        and t.nhom_thuoc = group_id
        and t.createdDt_at between date_start and date_to ORDER by 
			case when sort_col = 5 and sort_type = 'asc' then t.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then t.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then t.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then t.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_ipt_detail t
       where t.nhom_thuoc = group_id
		and ((lower(t.ma_hoa_don) like @check or lower(t.med) like @check) and t.createdDt_at between date_start and date_to);
		
        select c.id as id_phieu_nhap, c.user_id, c.supplier, t.* from temp_ipt_detail t
        left join ipt_cp c on t.ma_hoa_don = c.invoice_code 
        where t.isDeletedDt = isDeleted and t.isImported = isImported
        and t.nhom_thuoc = group_id
		and ((lower(t.ma_hoa_don) like @check or lower(t.med) like @check) and t.createdDt_at between date_start and date_to) 
        ORDER by 
			case when sort_col = 5 and sort_type = 'asc' then t.med end asc,
            case when sort_col = 5 and sort_type = 'desc' then t.med end desc,
            case when sort_col = 17 and sort_type = 'asc' then t.han_dung end asc,
            case when sort_col = 17 and sort_type = 'desc' then t.han_dung end desc,
            case when sort_col = 23 and sort_type = 'asc' then t.createdDt_at end asc,
            case when sort_col = 23 and sort_type = 'desc' then t.createdDt_at end desc,
            case when sort_col = 19 and sort_type = 'asc' then c.id end asc,
            case when sort_col = 19 and sort_type = 'desc' then c.id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;


END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_medicine`(in sort_col int, in sort_type varchar(255), in group_id int, search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
if group_id is null then
IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from medicine where medicine.isDeleted=isDeleted;
		select u.description_unit, g.ten_nhom_thuoc, s.Name, m.* from medicine m 
        left join users s on m.deleted_by = s.ID
        left join unit_med u on m.don_vi_duoc = u.id 
        left join group_medicine g on m.nhom_thuoc = g.id where m.isDeleted=isDeleted 
        order by 
			case when sort_col = 1 and sort_type = 'asc' then m.ten end asc,
            case when sort_col = 1 and sort_type = 'desc' then m.ten end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from medicine
       where medicine.isDeleted=isDeleted 
		and lower(medicine.ten) like @check;
		
        select medicine.id, medicine.sdk, medicine.han_sdk, medicine.ten, medicine.hoat_chat, medicine.ham_luong, medicine.sqd, medicine.nam_cap, medicine.dot_cap, medicine.dang_bao_che, medicine.dong_goi, medicine.tieu_chuan, medicine.han_dung, medicine.cty_dk, medicine.dchi_ctydk, medicine.cty_sx, medicine.dchi_ctysx, medicine.nhom_thuoc, medicine.don_vi_duoc, medicine.isDeleted, medicine.deletedAt, unit_med.description_unit, group_medicine.ten_nhom_thuoc, users.Name 
        from medicine left join unit_med on medicine.don_vi_duoc = unit_med.id left join group_medicine on medicine.nhom_thuoc = group_medicine.id left join users on medicine.deleted_by = users.ID
        where medicine.isDeleted=isDeleted 
			and lower(medicine.ten) like @check
		order by 
			case when sort_col = 1 and sort_type = 'asc' then medicine.ten end asc,
            case when sort_col = 1 and sort_type = 'desc' then medicine.ten end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if group_id is not null then
IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from medicine where medicine.isDeleted=isDeleted and medicine.nhom_thuoc = group_id;
		select s.Name, u.description_unit, g.ten_nhom_thuoc, m.* from medicine m left join unit_med u on m.don_vi_duoc = u.id left join group_medicine g on m.nhom_thuoc = g.id left join users s on m.deleted_by = s.ID
        where m.isDeleted=isDeleted and m.nhom_thuoc = group_id 
        order by 
			case when sort_col = 1 and sort_type = 'asc' then m.ten end asc,
            case when sort_col = 1 and sort_type = 'desc' then m.ten end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from medicine
       where medicine.isDeleted=isDeleted and medicine.nhom_thuoc = group_id
		and lower(medicine.ten) like @check;
		
        select medicine.id, medicine.sdk, medicine.han_sdk, medicine.ten, medicine.hoat_chat, medicine.ham_luong, medicine.sqd, medicine.nam_cap, medicine.dot_cap, medicine.dang_bao_che, medicine.dong_goi, medicine.tieu_chuan, medicine.han_dung, medicine.cty_dk, medicine.dchi_ctydk, medicine.cty_sx, medicine.dchi_ctysx, medicine.nhom_thuoc, medicine.don_vi_duoc, medicine.isDeleted, medicine.deletedAt, unit_med.description_unit, group_medicine.ten_nhom_thuoc, users.Name
        from medicine left join unit_med on medicine.don_vi_duoc = unit_med.id left join group_medicine on medicine.nhom_thuoc = group_medicine.id left join users on medicine.deleted_by = users.ID
        where medicine.isDeleted=isDeleted and medicine.nhom_thuoc = group_id
			and lower(medicine.ten) like @check
        order by 
			case when sort_col = 1 and sort_type = 'asc' then medicine.ten end asc,
            case when sort_col = 1 and sort_type = 'desc' then medicine.ten end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_report`(in sort_col int, in sort_type varchar(255), in search_value varchar(255), in user_id int, in branch_id int, in myself boolean, in isDeleted boolean, in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_report;
    drop temporary table if exists temp_report1;
    
	create temporary table temp_report as
    select r.*, u.Name, u.PhoneNumber, u.Email, u.role_id, u.branch_id from report r
    left join users u on r.creator_id = u.ID
    where r.isDeleted = isDeleted;
    
    create temporary table temp_report1 as
    select t.*, b.name as ten_co_so from temp_report t
    left join branchs b on t.branch_id = b.id;
    
if branch_id is null then
    if search_value is null OR LENGTH(search_value) = 0 then
    select count(*) into totalRecord from temp_report1 where role_id = 1;
    select t.* from temp_report1 t where t.role_id = 1 
    order by t.status, t.createdAt desc
	limit numRecord offset startRecord ;
	select totalRecord;
    
    else
    SET @check = lower(concat('%', search_value, '%'));
    select count(*) into totalRecord from temp_report1 where role_id = 1 and (lower(Name) or lower(title)) like @check;
    select t.* from temp_report1 t where t.role_id = 1  and (lower(t.Name) or lower(t.title)) like @check
    order by t.status, t.createdAt desc
	limit numRecord offset startRecord ;
	select totalRecord;
    end if;
end if;
    
if branch_id is not null and myself = 0 then
if search_value is null OR LENGTH(search_value) = 0 then
    select count(*) into totalRecord from temp_report1 where role_id != 1 and branch_id = branch_id;
    select t.* from temp_report1 t where t.role_id != 1 and t.branch_id = branch_id 
    order by t.status, t.createdAt desc
	limit numRecord offset startRecord ;
	select totalRecord;
    
else
    SET @check = lower(concat('%', search_value, '%'));
    select count(*) into totalRecord from temp_report1 
    where role_id != 1 and branch_id = branch_id and (lower(Name) like @check or lower(title) like @check);
    select t.* from temp_report1 t 
    where t.role_id != 1 and t.branch_id = branch_id and (lower(t.Name) like @check or lower(t.title) like @check)
    order by t.status, t.createdAt desc
	limit numRecord offset startRecord ;
	select totalRecord;
	end if;
end if;
    
if branch_id is not null and myself = 1 then
	if search_value is null OR LENGTH(search_value) = 0 then
    select count(*) into totalRecord from temp_report1 where role_id = 1 and branch_id = branch_id and creator_id = user_id;
    select t.* from temp_report1 t where t.role_id = 1 and t.branch_id = branch_id and t.creator_id = user_id
    order by t.status, t.createdAt desc
	limit numRecord offset startRecord ;
	select totalRecord;
    
    else 
    SET @check = lower(concat('%', search_value, '%'));
    select count(*) into totalRecord from temp_report1
    where role_id = 1 and branch_id = branch_id and creator_id = user_id and (lower(Name) or lower(title)) like @check;
    select t.* from temp_report1 t 
    where t.role_id = 1 and t.branch_id = branch_id and t.creator_id = user_id and (lower(t.Name) or lower(t.title)) like @check
    order by t.status, t.createdAt desc
	limit numRecord offset startRecord ;
	select totalRecord;
    
    end if;
end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_salecp`(in sort_col int, in sort_type varchar(255), in branch_id int, in date_start date, in date_to date, in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_sale_cp;
    
	create temporary table temp_sale_cp as
    select u.Name, a.Name as nguoi_xoa, u.branch_id, c.* from sale_cp c left join users u on c.ma_nhan_vien = u.ID left join users a ON c.deleted_by = a.ID
    where c.isDeleted = isDeleted;

if branch_id is null then
IF search_value is null OR LENGTH(search_value) = 0 then
	select count(*) into totalRecord from temp_sale_cp where temp_sale_cp.createdDate between date_start and date_to;
	select c.* from temp_sale_cp c
    where c.isDeleted=isDeleted and c.createdDate between date_start and date_to 
    order by 
		case when sort_col = 1 and sort_type = 'asc' then c.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then c.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then c.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then c.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then c.tong_phai_tra end asc,
		case when sort_col = 3 and sort_type = 'desc' then c.tong_phai_tra end desc,
        case when sort_col = 4 and sort_type = 'asc' then c.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then c.Name end desc
    limit numRecord offset startRecord ;
	select totalRecord;

	else 
    SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_sale_cp
       where (lower(temp_sale_cp.ma_hoa_don) like @check or lower(temp_sale_cp.Name) like @check) and temp_sale_cp.createdDate between date_start and date_to;
		
        select c.* from temp_sale_cp c
		where (lower(c.ma_hoa_don) like @check or lower(c.Name) like @check) and c.createdDate between date_start and date_to
        order by 
		case when sort_col = 1 and sort_type = 'asc' then c.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then c.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then c.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then c.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then c.tong_phai_tra end asc,
		case when sort_col = 3 and sort_type = 'desc' then c.tong_phai_tra end desc,
        case when sort_col = 4 and sort_type = 'asc' then c.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then c.Name end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null then
IF search_value is null OR LENGTH(search_value) = 0 then
	select count(*) into totalRecord from temp_sale_cp  
    where temp_sale_cp.branch_id = branch_id and temp_sale_cp.createdDate between date_start and date_to;
	SELECT t.* FROM temp_sale_cp t 
    where t.isDeleted=isDeleted and t.branch_id = branch_id and t.createdDate between date_start and date_to 
    order by 
		case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.tong_phai_tra end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.tong_phai_tra end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc
    limit numRecord offset startRecord ;
	select totalRecord;

	else 
    SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from temp_sale_cp
       where temp_sale_cp.branch_id = branch_id and (lower(temp_sale_cp.ma_hoa_don) like @check or lower(temp_sale_cp.Name) like @check) and temp_sale_cp.createdDate between date_start and date_to;
		
        SELECT t.* FROM temp_sale_cp t 
        where t.branch_id = branch_id and 
        (lower(t.ma_hoa_don) like @check or lower(t.Name) like @check) and t.createdDate between date_start and date_to
        order by 
		case when sort_col = 1 and sort_type = 'asc' then t.id end asc,
		case when sort_col = 1 and sort_type = 'desc' then t.id end desc,
		case when sort_col = 2 and sort_type = 'asc' then t.createdDate end asc,
		case when sort_col = 2 and sort_type = 'desc' then t.createdDate end desc,
		case when sort_col = 3 and sort_type = 'asc' then t.tong_phai_tra end asc,
		case when sort_col = 3 and sort_type = 'desc' then t.tong_phai_tra end desc,
        case when sort_col = 4 and sort_type = 'asc' then t.Name end asc,
		case when sort_col = 4 and sort_type = 'desc' then t.Name end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_saledetail`(in sort_col int, in sort_type varchar(255), in group_id int, in branch_id int, in date_start date, in date_to date, in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	drop temporary table if exists temp_sale_detail;
    
	create temporary table temp_sale_detail as
    select i.so_lo, i.dong_goi, a.Name, m.nhom_thuoc, m.don_vi_duoc, m.ham_luong, m.hoat_chat, u.donvi_lon, u.donvi_tb, u.donvi_nho, u.description_unit, c.ma_nhan_vien, c.id as id_hoa_don, s.* from sale_detail s 
    left join medicine m on s.med_id = m.id left join unit_med u on s.loai_dong_goi = u.description_unit
    left join sale_cp c on s.ma_hoa_don = c.ma_hoa_don
    left join users a on s.deleted_by = a.ID
    left join ipt_detail i on s.ipt_detail_id = i.id 
    where s.isDeleted = isDeleted;

if branch_id is null and group_id is null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_sale_detail;
		select t.* from temp_sale_detail t
        where t.isDeleted = isDeleted 
        and t.createdAt between date_start and date_to ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
	else 
    
    SET @check1 = lower(concat('%', search_value, '%'));
		select count(*) into totalRecord from temp_sale_detail 
        where (lower(temp_sale_detail.ma_hoa_don) like @check1 or lower(temp_sale_detail.ten_duoc) like @check1);
		select t.* from temp_sale_detail t where t.isDeleted = isDeleted
        and (lower(t.ma_hoa_don) like @check1 or lower(t.ten_duoc) like @check1)
        and t.createdAt between date_start and date_to 
        ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
        end if;
	end if;
    
if branch_id is not null and group_id is not null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_sale_detail t 
        where t.nhom_thuoc = group_id and t.branch_id = branch_id;
		select t.* from temp_sale_detail t
        where t.isDeleted = isDeleted and t.nhom_thuoc = group_id and t.branch_id = branch_id
        and t.createdAt between date_start and date_to ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
	else 
    SET @check1 = lower(concat('%', search_value, '%'));
		select count(*) into totalRecord from temp_sale_detail 
        where t.nhom_thuoc = group_id and t.branch_id = branch_id 
        and(lower(temp_sale_detail.ma_hoa_don) like @check1 or lower(temp_sale_detail.ten_duoc) like @check1);
		select t.* from temp_sale_detail t where t.isDeleted = isDeleted
        and t.nhom_thuoc = group_id and t.branch_id = branch_id
        and (lower(t.ma_hoa_don) like @check1 or lower(t.ten_duoc) like @check1)
        and t.createdAt between date_start and date_to 
        ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
        end if;
	end if;
    
if branch_id is not null and group_id is null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_sale_detail 
        where temp_sale_detail.branch_id = branch_id;
		select t.* from temp_sale_detail t
        where t.isDeleted = isDeleted and t.branch_id = branch_id
        and t.createdAt between date_start and date_to ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
	else 
    SET @check1 = lower(concat('%', search_value, '%'));
		select count(*) into totalRecord from temp_sale_detail 
        where temp_sale_detail.branch_id = branch_id 
        and (lower(temp_sale_detail.ma_hoa_don) like @check1 or lower(temp_sale_detail.ten_duoc) like @check1);
		select t.* from temp_sale_detail t where t.isDeleted = isDeleted and t.branch_id = branch_id
        and (lower(t.ma_hoa_don) like @check1 or lower(t.ten_duoc) like @check1)
        and t.createdAt between date_start and date_to 
        ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
        end if;
	end if;
    
if branch_id is null and group_id is not null then
    if search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from temp_sale_detail 
        where temp_sale_detail.nhom_thuoc = group_id;
		select t.* from temp_sale_detail t
        where t.isDeleted = isDeleted and t.nhom_thuoc = group_id
        and t.createdAt between date_start and date_to ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
	else 
    SET @check1 = lower(concat('%', search_value, '%'));
		select count(*) into totalRecord from temp_sale_detail 
        where temp_sale_detail.nhom_thuoc = group_id 
        and (lower(temp_sale_detail.ma_hoa_don) like @check1 or lower(temp_sale_detail.ten_duoc) like @check1);
		select t.* from temp_sale_detail t where t.isDeleted = isDeleted and t.nhom_thuoc = group_id
        and (lower(t.ma_hoa_don) like @check1 or lower(t.ten_duoc) like @check1)
        and t.createdAt between date_start and date_to 
        ORDER by 
			case when sort_col = 10 and sort_type = 'asc' then t.ten_duoc end asc,
            case when sort_col = 10 and sort_type = 'desc' then t.ten_duoc end desc,
            case when sort_col = 16 and sort_type = 'asc' then t.createdAt end asc,
            case when sort_col = 16 and sort_type = 'desc' then t.createdAt end desc,
            case when sort_col = 8 and sort_type = 'asc' then t.id_hoa_don end asc,
            case when sort_col = 8 and sort_type = 'desc' then t.id_hoa_don end desc
        limit numRecord offset startRecord ;
        select totalRecord;
        end if;
	end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_supplier`(in sort_col int, in sort_type varchar(255), in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from supplier where supplier.isDeleted=isDeleted;
		select u.Name, s.* from supplier s 
        left join users u on s.deleted_by = u.ID where s.isDeleted=isDeleted 
        order by 
			case when sort_col = 1 and sort_type = 'asc' then s.ten_ncc end asc,
            case when sort_col = 1 and sort_type = 'desc' then s.ten_ncc end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from supplier
       where supplier.isDeleted=isDeleted 
		and lower(ten_ncc) like @check;
		
        select u.Name, s.* from supplier s 
        left join users u on s.deleted_by = u.ID
        where s.isDeleted=isDeleted 
			and lower(s.ten_ncc) like @check
		order by 
			case when sort_col = 1 and sort_type = 'asc' then s.ten_ncc end asc,
            case when sort_col = 1 and sort_type = 'desc' then s.ten_ncc end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_unitmed`(in sort_col int, in sort_type varchar(255), in search_value varchar(255), in isDeleted boolean ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
	IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from unit_med where unit_med.isDeleted=isDeleted;
		select users.Name, u.* from unit_med u 
        left join users on u.userId_del = users.ID
        where u.isDeleted=isDeleted 
        order by 
			case when sort_col = 1 and sort_type = 'asc' then u.donvi_lon end asc,
            case when sort_col = 1 and sort_type = 'desc' then u.donvi_lon end desc,
            case when sort_col = 2 and sort_type = 'asc' then u.donvi_nho end asc,
            case when sort_col = 2 and sort_type = 'desc' then u.donvi_nho end desc,
            case when sort_col = 3 and sort_type = 'asc' then u.id end asc,
            case when sort_col = 3 and sort_type = 'desc' then u.id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from unit_med 
       where unit_med.isDeleted=isDeleted 
		and lower(description_unit) like @check;
		
        select users.Name, u.* from unit_med u
        left join users on u.userId_del = users.ID
        where u.isDeleted=isDeleted 
			and lower(u.description_unit) like @check
		order by 
			case when sort_col = 1 and sort_type = 'asc' then u.donvi_lon end asc,
            case when sort_col = 1 and sort_type = 'desc' then u.donvi_lon end desc,
            case when sort_col = 2 and sort_type = 'asc' then u.donvi_nho end asc,
            case when sort_col = 2 and sort_type = 'desc' then u.donvi_nho end desc,
            case when sort_col = 3 and sort_type = 'asc' then u.id end asc,
            case when sort_col = 3 and sort_type = 'desc' then u.id end desc
        limit numRecord offset startRecord ;
        select totalRecord;
    end if;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`dev`@`localhost` PROCEDURE `pagination_user`(in sort_col int, in sort_type varchar(255), in branch_id varchar(255), in isDeleted boolean, in search_value varchar(255) ,in numRecord int, in startRecord int, out totalRecord int)
BEGIN
if branch_id is null then
IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from users where users.isDeleted = isDeleted;
		select r.ten_vai_tro, r.ma_vai_tro, b.name, b.branch_code, u.ID, u.Name, u.DateOfBirth, u.Address, u.PhoneNumber, u.Email, u.role_id, u.branch_id
        from users u 
        left join role_user r ON u.role_id = r.id
        left join branchs b ON u.branch_id = b.id
        where u.isDeleted = isDeleted and u.role_id != 4
        order by 
			case when sort_col = 1 and sort_type = 'asc' then u.Name end asc,
            case when sort_col = 1 and sort_type = 'desc' then u.Name end desc,
            case when sort_col = 2 and sort_type = 'asc' then u.role_id end asc,
            case when sort_col = 2 and sort_type = 'desc' then u.role_id end desc,
            case when sort_col = 3 and sort_type = 'asc' then u.branch_id end asc,
            case when sort_col = 3 and sort_type = 'desc' then u.branch_id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from users
       where users.isDeleted = isDeleted and u.role_id != 4 and lower(Name) like @check;
		
        select r.ten_vai_tro, r.ma_vai_tro, b.name, b.branch_code, u.ID, u.Name, u.DateOfBirth, u.Address, u.PhoneNumber, u.Email, u.role_id 
        from users u 
        left join role_user r ON u.role_id = r.id
        left join branchs b ON u.branch_id = b.id
        where u.isDeleted = isDeleted and lower(u.Name) like @check 
        order by 
			case when sort_col = 1 and sort_type = 'asc' then u.Name end asc,
            case when sort_col = 1 and sort_type = 'desc' then u.Name end desc,
            case when sort_col = 2 and sort_type = 'asc' then u.role_id end asc,
            case when sort_col = 2 and sort_type = 'desc' then u.role_id end desc,
            case when sort_col = 3 and sort_type = 'asc' then u.branch_id end asc,
            case when sort_col = 3 and sort_type = 'desc' then u.branch_id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;

if branch_id is not null then
IF search_value is null OR LENGTH(search_value) = 0 then
		select count(*) into totalRecord from users where users.isDeleted = isDeleted and users.branch_id = branch_id;
		select r.ten_vai_tro, r.ma_vai_tro, b.name, b.branch_code, u.ID, u.Name, u.DateOfBirth, u.Address, u.PhoneNumber, u.Email, u.role_id, u.branch_id
        from users u 
        left join role_user r ON u.role_id = r.id
        left join branchs b ON u.branch_id = b.id
        where u.isDeleted = isDeleted and u.branch_id = branch_id
        order by 
			case when sort_col = 1 and sort_type = 'asc' then u.Name end asc,
            case when sort_col = 1 and sort_type = 'desc' then u.Name end desc,
            case when sort_col = 2 and sort_type = 'asc' then u.role_id end asc,
            case when sort_col = 2 and sort_type = 'desc' then u.role_id end desc,
            case when sort_col = 3 and sort_type = 'asc' then u.branch_id end asc,
            case when sort_col = 3 and sort_type = 'desc' then u.branch_id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    else
	   SET @check = lower(concat('%', search_value, '%'));
       select count(*) into totalRecord from users
       where users.isDeleted = isDeleted and users.branch_id = branch_id and lower(Name) like @check;
		
        select r.ten_vai_tro, r.ma_vai_tro, b.name, b.branch_code, u.ID, u.Name, u.DateOfBirth, u.Address, u.PhoneNumber, u.Email, u.role_id 
        from users u 
        left join role_user r ON u.role_id = r.id
        left join branchs b ON u.branch_id = b.id
        where u.isDeleted = isDeleted and u.branch_id = branch_id and lower(u.Name) like @check 
        order by 
			case when sort_col = 1 and sort_type = 'asc' then u.Name end asc,
            case when sort_col = 1 and sort_type = 'desc' then u.Name end desc,
            case when sort_col = 2 and sort_type = 'asc' then u.role_id end asc,
            case when sort_col = 2 and sort_type = 'desc' then u.role_id end desc,
            case when sort_col = 3 and sort_type = 'asc' then u.branch_id end asc,
            case when sort_col = 3 and sort_type = 'desc' then u.branch_id end desc
        limit numRecord offset startRecord;
        select totalRecord;
    end if;
end if;
END$$
DELIMITER ;



