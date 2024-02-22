<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ex="http://exslt.org/dates-and-times" xmlns:inv="http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1" xmlns:sign="http://www.w3.org/2000/09/xmldsig#" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" extension-element-prefixes="ex">
	<xsl:decimal-format name="decimalFormat" decimal-separator="," grouping-separator="." zero-digit="0" digit="#" pattern-separator=";"></xsl:decimal-format>
	<xsl:decimal-format name="number" decimal-separator="," grouping-separator="." />
	<xsl:output method="html" />
	<xsl:param name="modeTemplate" />
	<xsl:param name="IsConvertToPaper" />
	<xsl:param name="Converter" />
	<xsl:param name="ConvertDate" />
	<xsl:template match="HDon">
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text><html>
			<head>
				<title>Hóa đơn</title>
				<style>
					body {
					padding: 0;
					margin: 0;
					}

					div {
					box-sizing: content-box;
					}

					body, table {
					<!--##MY_FONT_SIZE##-->font-size: 14px;<!--##MY_FONT_SIZE##-->
					line-height: 25px;
					text-align: center;
					<!--##MY_FONT##-->font-family: "Times New Roman";<!--##MY_FONT##--><!--##MY_COLOR##-->color: rgb(0, 0, 0);<!--##MY_COLOR##-->
					}

					.container {
					width: 865px;
					overflow: visible;
					position: relative;
					}

					.ruler-template{
					padding-top: 40px;
					margin-left: 45px;
					margin-right: 45px;
					box-sizing: border-box;
					}

					.content-detail{
					min-height: 1068px;
					max-width: 775px;
					}

					.font-bold{
					font-weight: bold;
					}

					.font-italic{
					font-style: italic;
					}

					.text-left {
					text-align: left;
					}

					.text-center {
					text-align: center;
					}

					.text-right {
					text-align: right;
					}

					.float-left{
					float: left;
					}

					.float-right{
					float: right;
					}

					.clear{
					clear:both;
					}

					.display-table-cell{
					display: table-cell;
					}

					.white-space-nowrap{
					white-space: nowrap;
					}

					.style-title {
					font-weight: bold;
					text-transform: uppercase;
					font-size: 20px;
					}

					.style-title .edit-label-en {
					font-weight: bold;
					text-transform: uppercase;
					font-size: 18px;
					}

					.width-full{
					width:100%;
					}

					.width-half{
					width:50%;
					}

					.width-third{
					width:30%;
					}

					.width-quarter{
					width:25%;
					}

					.display-none{
					display: none;
					}

					.seller-infor .edit-value, .buyer-infor .edit-value, .other-invoice .edit-value, .curency-block .edit-value,
					.seller-infor .edit-label-en, .buyer-infor .edit-label-en, .other-invoice .edit-label-en, .curency-block .edit-label-en, .table-footer .edit-label-en {
					padding-left: 4px;
					}

					.seller-infor, .buyer-infor {
					text-align: left;
					}

					.padding-none{
					padding: 0 !important;
					}

					.frame-template{
					<!--##BG_FRAME##-->background-image: url('');<!--##BG_FRAME##-->
					height: 1224.08012599878792px;
					width: 864.3439370181381px;
					background-size:100% 100%;
					position: absolute;
					z-index:-1;
					top:0;
					left:0;
					<!--##USE_BACKGROUND_FRAME##-->display: block<!--##USE_BACKGROUND_FRAME##-->;
					}

					.bg-template-parent{
					position: absolute !important;
					z-index:-1;
					<!--##BACKGROUND_HEIGHT##-->height: 0px<!--##BACKGROUND_HEIGHT##-->;
					<!--##BACKGROUND_WIDTH##-->width: 0px<!--##BACKGROUND_WIDTH##-->;
					<!--##BACKGROUND_TOP##-->top: 0px<!--##BACKGROUND_TOP##-->;
					<!--##BACKGROUND_LEFT##-->left: 0px<!--##BACKGROUND_LEFT##-->;
					}

					.bg-template{
					background-size:100% 100%;
					background-repeat:no-repeat;
					background-position: center;
					<!--##BACKGROUND##-->background-image: url('')<!--##BACKGROUND##-->;
					<!--##BACKGROUND_TRANSFORM##-->transform: none<!--##BACKGROUND_TRANSFORM##-->;
					<!--##BACKGROUND_OPACITY##-->opacity: 0.35<!--##BACKGROUND_OPACITY##-->;
					height:100%;
					width:100%;
					}

					.bg-template-default {
					position: absolute !important;
					z-index:-1;
					<!--##BG_DEFAULT_HEIGHT##-->height: 0px<!--##BG_DEFAULT_HEIGHT##-->;
					<!--##BG_DEFAULT_WIDTH##-->width: 0px<!--##BG_DEFAULT_WIDTH##-->;
					<!--##BG_DEFAULT_TOP##-->top: 0<!--##BG_DEFAULT_TOP##-->;
					<!--##BG_DEFAULT_LEFT##-->left: 0<!--##BG_DEFAULT_LEFT##-->;
					}

					.bg-default {
					background-size:100% 100%;
					background-repeat:no-repeat;
					background-position: center;
					<!--##BG_DEFAULT##-->background-image: url('')<!--##BG_DEFAULT##-->;
					<!--##BG_DEFAULT_TRANSFORM##-->transform: none<!--##BG_DEFAULT_TRANSFORM##-->;
					<!--##BG_DEFAULT_OPACITY##-->opacity:0.35<!--##BG_DEFAULT_OPACITY##-->;
					height:100%;
					width:100%;
					}

					.logo-template{
					z-index: -1;
					}
					.logo-template-content{
					position: relative;
					background-position-x: 0px;
					background-position-y: center;
					background-size:100% 100%;
					<!--##LOGO_COMPANY##-->background-image: url('')<!--##LOGO_COMPANY##-->;
					<!--##LOGO_HEIGHT##-->height: 0<!--##LOGO_HEIGHT##-->;
					<!--##LOGO_WIDTH##-->width: 0<!--##LOGO_WIDTH##-->;
					<!--##LOGO_TOP##-->top: 0px<!--##LOGO_TOP##-->;
					<!--##LOGO_LEFT##-->left: 0px<!--##LOGO_LEFT##-->;
					}

					.information-company{
					width: 100%;
					}

					.header-invoice{
					padding-top: 2px;
					}

					.other-invoice{
					}
					.type-invoice{
					}

					.buyer-infor{
					width:86%;
					}

					.qrcode-parent{
					width: 14%;
					position: relative;
					height: 105px;
					}

					.qrcode{
					display:inline;
					position: absolute;
					width:100px;
					height:100px;
					top: 2px;
					left: 4px;
					<!--##QRCODECONTENT##-->background:url('data:image/png;base64,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') no-repeat center center<!--##QRCODECONTENT##-->;
					background-size: cover;
					}

					#tbDetail, #tbFooter {
					border-style: solid;
					border-color: #776b6b;
					border-width: 1px;
					line-height: 20px;
					}

					#tbDetail .tr-symbol td {
					border-bottom: 1px solid #776b6b;
					}

					#tbFooter{
					border:none;
					width:100%;
					}
					#tbFooter td:last-child{
					border-right: 1px solid #776b6b;
					}
					#tbDetail{
					border: none;
					}
					#tbDetail td:first-child, #tbFooter td:first-child{
					border-left: 1px solid #776b6b;
					}

					#tbDetail tr:last-child td{
					border-bottom: 1px solid #776b6b;
					}

					#tbDetail tr:first-child td{
					border-top: 1px solid #776b6b;
					border-bottom: 1px solid #776b6b;
					}

					#tbDetail .tr-header td{
					padding: 2px 0;
					}

					#tbDetail td{
					border-style: none solid dotted none;
					border-color: #776b6b;
					border-width: 1px;
					padding: 2px;
					<!--##GridBorderType##-->border-bottom-style: solid; border-bottom-color: #cecece<!--##GridBorderType##-->
					}

					#tbFooter td{
					padding: 2px 0;
					border-style:  none none solid none;
					border-color: #776b6b;
					border-width: 1px;
					border-collapse: collapse;
					}

					#tbDetail td .edit-value, #tbDetail td .edit-label, #tbDetail td .edit-label-en {
					padding: 0 2px;
					}

					#tbOther td {
					border-left: 1px dashed transparent;
					white-space: nowrap;
					}

					#tbOther tr td:first-child, #tbOther tr td:last-child,{
					border-left: none;
					}

					.style-number-value {
					padding-right: 4px;
					}

					.padding-left-4{
					padding-left: 4px;
					}

					.number {
					text-align: right;
					}

					.content-sign{
					width: 250px;
					padding:5px;
					color: #db0000;
					position: relative;
					background-color: #e3f2e4;
					border: 1px solid #7cc576;
					margin-top: 20px;
					margin-left: auto;
					margin-right: auto;
					}

					.vertical-align-top{
					vertical-align: top;
					}

					.background-sign{
					background: url('data:image/png;base64,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') no-repeat center center;
					}

					.block-tax-code{
					width: 20px;border:
					1px solid #b7b7b7;
					line-height: 20px;
					padding-top: 2px;
					}

					.sign-xml-block {
					margin-top: 8px;
					}

					.invoice-information {
					width: 100%;
					border-collapse: collapse;
					}

					.element-help-center {
					width: 145px;
					}

					.inv-series-no {
					width: 145px;
					}

					.inv-series-no-en {
					width: 190px;
					}

					.vertical-align-top {
					vertical-align: top;
					}

					.edit-label-en {
					font-style: italic;
					font-size: 13px;
					}

					.sign-content-convert {
					margin-top: 90px;
					}

					.padding-left-2 {
					padding-left: 2px;
					}

					.width-converter {
					width: 550px;
					}

					.display-cannot-show {
					display: none;
					}

					.padding-left-16 {
					padding-left: 16px;
					}

					.seller-infor .edit-label-en, .seller-infor .edit-label, .buyer-infor .edit-label-en, .buyer-infor .edit-label {
					white-space: nowrap;
					}

					.other-table-container {
					vertical-align: top;
					}

					.text-en-fake {
					white-space: nowrap;
					font-style: italic;
					font-size: 13px;
					}

					#signXml .white-space-nowrap {
					white-space: nowrap;
					}

					.template-table{
					<!--##BG_TABLE##-->background: url('');<!--##BG_TABLE##-->
					background-repeat:no-repeat;
					background-position: center;
					position:absolute;
					z-index: 100;
					width:100%;
					height:100%
					}

					.p-relative {
					position: relative;
					}

					.esign-value-company {word-break: break-word;}

					td[data-field="ItemName"] .edit-value {white-space: pre-line;}

					.flex {
					display: flex;
					}

					.justify-center {
					justify-content: center
					}

					.break-all {
					word-break: break-all;
					}

					.width-third {
					width: 33.33%;
					}

					.exchange-rate {
					<!--##ExchangeRate##--><!--##ExchangeRate##-->
					}
					.exchange-rate-table {
					<!--##ExchangeRateTable##--><!--##ExchangeRateTable##-->
					}

					#tbDetail{border-collapse: collapse;} <!--##CUSTOM_STYLE##--><!--##CUSTOM_STYLE##-->
				</style>
			</head>
			<body onload='customData()'>
				<!--##USE_INFO##{"BackgroundDefaultName":"","BackgroundDefaultContent":"","BackgroundDefaultHeight":"0","BackgroundDefaultWidth":"0","BackgroundDefaultTop":"0","BackgroundDefaultLeft":"0","BackgroundDefaultOpacity":"35","BackgroundDefaultColor":"0","BackgroundContent":"","BackgroundHeight":"0","BackgroundWidth":"0","BackgroundTop":"0","BackgroundLeft":"0","BackgroundTransform":"0","BackgroundOpacity":"0.35","LogoName":"","LogoContent":"","LogoTop":"0","LogoLeft":"0","LogoHeight":"0","LogoWidth":"0","FrameTemplateName":null,"FrameTemplateContent":null,"FrameTemplateColor":"0","CustomWordText":"","CustomWordFontSize":"0","CustomWordFontFamily":"","CustomWordBold":false,"CustomWordItalic":false,"CustomWordColor":"","IsDisplayLeft":true,"PapperType":"A4","MaxRowTable":4,"IsDuplicateHeader":false,"IsShowAllRowEmpty":false,"IsAmountInWordEN":false,"IsShowMaskAdjustment":1,"OpacityMaskAdjustment":20}##USE_INFO##-->
				<div class="container">
					<div class="frame-template"></div>
					<div class="bg-template-default">
						<div class="bg-default"></div>
					</div>
					<div class="bg-template-parent">
						<div class="bg-template"></div>
					</div>
					<div style="display: none;" class="infoTemplate">
						<div class="AdjustmentOpacity">20</div>
						<div class="showMaskAdjustment">1</div>
						<div class="xsltVersion">4</div>
						<div class="LANGUAGE-TEMPLATE">
							<!--##LANGUAGE_TEMPLATE##-->LANGUAGE-VN<!--##LANGUAGE_TEMPLATE##-->
						</div>
						<div id="TemplateType" style="display:none">A4</div>
						<div>XsltVersion3</div>
						<div class="IsDuplicateHeader">0</div>
						<div class="IsShowAllRowEmpty">0</div>
						<div class="max-row-table">4</div>
					</div>
					<xsl:variable name="AmountOCDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='AmountOCDecimalDigits']/DLieu" />
					<xsl:variable name="AmountDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='AmountDecimalDigits']/DLieu" />
					<xsl:variable name="UnitPriceOCDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='UnitPriceOCDecimalDigits']/DLieu" />
					<xsl:variable name="UnitPriceDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='UnitPriceDecimalDigits']/DLieu" />
					<xsl:variable name="QuantityDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='QuantityDecimalDigits']/DLieu" />
					<xsl:variable name="CoefficientDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='CoefficientDecimalDigits']/DLieu" />
					<xsl:variable name="digitFormat">
						<xsl:text>00000000</xsl:text>
					</xsl:variable>
					<xsl:variable name="quantityFormat" select="concat('###.##0,',substring($digitFormat,1,$QuantityDecimalDigits))" />
					<xsl:variable name="amountOCFormat" select="'###.##0'" />
					<xsl:variable name="amountFormat" select="'###.##0'" />
					<xsl:variable name="unitPriceOCFormat" select="'###.##0'" />
					<xsl:variable name="unitPriceFormat" select="'###.##0'" />
					<xsl:variable name="discountRateFormat" select="'###.##0'" />
					<!-- khai báo biến dùng chung -->
					<!-- có sử dụng ngoại tệ -->
					<xsl:variable name="usingCurrency" select="1" />
					<!-- dùng đơn bị tính là VND -->
					<xsl:variable name="usingVND" select="2" />
					<xsl:variable name="curCurrentcy">
						<xsl:call-template name="checkCurrency" />
					</xsl:variable>
					<xsl:variable name="referenceType" select="DLHDon/TTChung/TTHDLQuan/TCHDon"></xsl:variable>
					<xsl:variable name="orgInvTemplateNo" select="DLHDon/TTChung/TTHDLQuan/KHMSHDCLQuan"></xsl:variable>
					<xsl:variable name="orgInvSeries" select="DLHDon/TTChung/TTHDLQuan/KHHDCLQuan"></xsl:variable>
					<xsl:variable name="orgInvNo" select="DLHDon/TTChung/TTHDLQuan/SHDCLQuan"></xsl:variable>
					<xsl:variable name="orgInvDate" select="DLHDon/TTChung/TTHDLQuan/NLHDCLQuan"></xsl:variable>
					<xsl:variable name="orgInvDateDisplay" select="concat(substring($orgInvDate, 9, 2),'/', substring($orgInvDate, 6, 2),'/', substring($orgInvDate, 1, 4))"></xsl:variable>
					<xsl:variable name="changeReason" select="DLHDon/TTChung/TTHDLQuan/GChu"></xsl:variable>
					<xsl:variable name="valueexchangerate">
						<xsl:call-template name="valueexchangerate"></xsl:call-template>
					</xsl:variable>
					<xsl:variable name="transactionID" select="DLHDon/TTKhac/TTin[TTruong='TransactionID']/DLieu" />
					<div class="auContent ruler-template">
						<div class="content-detail" style="">
							<div class="header-block">
								<div class="invoice-first">
									<table cellpadding="0" cellspacing="0" style="width:100%;" id="firstInvoice" class="highlight-block">
										<tr class="tr-invoice-first">
											<td class="table-header-item item-logo" style="width: 2px;">
												<div class="logo-template logo-left resize-width">
													<div class="logo-template-content"></div>
												</div>
											</td>
											<td class="header-content-invoice table-header-item" style="width: 773px;">
												<div class="seller-infor information-company can-select offset-resize-width type-1" group-field="seller-infor" style="width: 100%;">
													<div class="edit-item disable-hiden float-left width-full type-2" data-field="SellerName" style="">
														<div class="edit-label display-table-cell white-space-nowrap display-none" style="">Đơn vị bán hàng</div>
														<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Seller)</div>
														<div class="two-dot display-table-cell white-space-nowrap display-none" style="">:</div>
														<div class="edit-value display-table-cell font-bold style-title padding-none none-edit header-title" style="">
															<xsl:value-of select="DLHDon/NDHDon/NBan/Ten" />
														</div>
													</div>
													<div class="edit-item disable-hiden float-left width-full type-1" data-field="SellerTaxCode" style="">
														<div class="edit-label display-table-cell white-space-nowrap" style="">Mã số thuế</div>
														<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Tax code)</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:call-template name="splitTaxCode">
																<xsl:with-param name="taxcode" select="DLHDon/NDHDon/NBan/MST" />
																<xsl:with-param name="startindex" select="1" />
																<!--##CLASS_SELLER_TAX_CODE##-->
																<xsl:with-param name="classExtend" select="0" />
																<!--##CLASS_SELLER_TAX_CODE##-->
															</xsl:call-template>
														</div>
													</div>
													<div class="edit-item  float-left width-full type-1" data-field="SellerAddress" style="">
														<div class="edit-label display-table-cell white-space-nowrap" style="">Địa chỉ</div>
														<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Address)</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:value-of select="DLHDon/NDHDon/NBan/DChi" />
														</div>
													</div>
													<div class="edit-item float-left width-full type-1" data-field="SellerPhone" style="">
														<div class="edit-label display-table-cell white-space-nowrap" style="">Điện thoại</div>
														<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Tel)</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:value-of select="DLHDon/NDHDon/NBan/SDThoai" />
														</div>
													</div>
													<div class="edit-item display-none float-left width-full type-1" data-field="SellerFax" style="">
														<div class="edit-label display-table-cell white-space-nowrap" style="">Fax</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:value-of select="DLHDon/NDHDon/NBan/Fax" />
														</div>
													</div>
													<div class="edit-item display-none float-left width-full type-1" data-field="SellerWeb" style="">
														<div class="edit-label display-table-cell white-space-nowrap" style="">Website</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:value-of select="DLHDon/NDHDon/NBan/Website" />
														</div>
													</div>
													<div class="edit-item display-none float-left width-full type-1" data-field="SellerEmail" style="">
														<div class="edit-label display-table-cell white-space-nowrap" style="">Email</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:value-of select="DLHDon/NDHDon/NBan/DCTDTu" />
														</div>
													</div>
													<div class="edit-item float-left width-full type-1" data-field="SellerBankAccount" style="">
														<xsl:variable name="sellerBankAccount" select="DLHDon/NDHDon/NBan/STKNHang" />
														<xsl:variable name="sellerBankName" select="DLHDon/NDHDon/NBan/TNHang" />
														<div class="edit-label display-table-cell white-space-nowrap" style="">Số tài khoản</div>
														<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Bank account)</div>
														<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
														<div class="edit-value display-table-cell none-edit" style="">
															<xsl:choose>
																<xsl:when test="$sellerBankAccount != ''">
																	<xsl:value-of select="$sellerBankAccount" />
																	<xsl:if test="$sellerBankName != ''">
																		- <xsl:value-of select="$sellerBankName" />
																	</xsl:if>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:if test="$sellerBankName != ''">
																		<xsl:value-of select="$sellerBankName" />
																	</xsl:if>
																</xsl:otherwise>
															</xsl:choose>
														</div>
													</div>
													<div class="clear" />
												</div>
											</td>
											<td class="table-header-item item-logo display-none" style="width: 0px;">
												<div class="logo-template logo-right resize-width">
													<div class="logo-template-content"></div>
												</div>
											</td>
										</tr>
									</table>
								</div>
								<div class="header-invoice invoice-second highlight-block">
									<div class="title-invoice-seires">
										<div class="can-select" group-field="invoice-infor" style="display: flex; flex-direction: column; align-item: center;">
											<div class="disable-hiden style-title header-title" data-field="TypeInvoice" style="">
												<div class="edit-label" style="font-weight: bold; color: rgb(0, 0, 0); font-style: normal; font-size: 20px;">HÓA ĐƠN BÁN THUỐC</div>
												<div class="edit-label-en display-none" style="">(VAT INVOICE)</div>
											</div>
											<div class="disable-hiden font-italic" data-field="DateInvoice">
												<div class="edit-value none-edit font-italic" style="">
													<xsl:variable name="issuedDate" select="DLHDon/TTChung/NLap" />
													<xsl:choose>
														<xsl:when test="$issuedDate != ''">
															<span>Ngày</span>
															<span class="edit-label-en padding-left-4 display-none" style="">(Date)</span>
															<span class="padding-left-4">
																<xsl:value-of select="substring($issuedDate, 9, 2)" />
															</span>
															<span class="padding-left-4">tháng</span>
															<span class="edit-label-en padding-left-4 display-none" style="">(month)</span>
															<span class="padding-left-4">
																<xsl:value-of select="substring($issuedDate, 6, 2)" />
															</span>
															<span class="padding-left-4">năm</span>
															<span class="edit-label-en padding-left-4 display-none" style="">(year)</span>
															<span class="padding-left-4">
																<xsl:value-of select="substring($issuedDate, 1, 4)" />
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span class="date-text">Ngày</span>
															<span class="edit-label-en display-none padding-left-4 " style="">(Date)</span>
															<span class="month-text padding-left-16 ">tháng</span>
															<span class="edit-label-en display-none padding-left-4" style="">(month)</span>
															<span class="year-text padding-left-16 ">năm</span>
															<span class="edit-label-en display-none padding-left-4" style="">(year)</span>
														</xsl:otherwise>
													</xsl:choose>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="buyer-qr-infor invoice-third highlight-block">
									<div class="float-left buyer-infor resize-width can-select resize-width type-1" group-field="buyer-infor" style="width: 100%;">
										<div class="disable-hiden edit-item width-full float-left" data-field="BuyerName" style="">
											<div class="edit-label white-space-nowrap display-table-cell" style="">Họ tên người mua hàng</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Buyer)</div>
											<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
											<div class="edit-value display-table-cell none-edit" style="">
												<xsl:value-of select="DLHDon/NDHDon/NMua/HVTNMHang" />
											</div>
										</div>
										<div class="disable-hiden edit-item width-full float-left" data-field="BuyerLegalName" style="">
											<div class="edit-label white-space-nowrap display-table-cell" style="">Tên đơn vị</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Company's name)</div>
											<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
											<div class="edit-value display-table-cell none-edit" style="">
												<xsl:value-of select="DLHDon/NDHDon/NMua/Ten" />
											</div>
										</div>
										<div class="disable-hiden edit-item width-full float-left" data-field="BuyerTaxCode" style="">
											<div class="edit-label white-space-nowrap display-table-cell" style="">Mã số thuế</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Tax code)</div>
											<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
											<div class="edit-value display-table-cell none-edit" style="">
												<xsl:call-template name="splitTaxCode">
													<xsl:with-param name="taxcode" select="DLHDon/NDHDon/NMua/MST" />
													<xsl:with-param name="startindex" select="1" />
													<!--##CLASS_BUYER_TAX_CODE##-->
													<xsl:with-param name="classExtend" select="0" />
													<!--##CLASS_BUYER_TAX_CODE##-->
												</xsl:call-template>
											</div>
										</div>
										<div class="disable-hiden edit-item width-full float-left" data-field="BuyerAddress" style="">
											<div class="edit-label white-space-nowrap display-table-cell" style="">Địa chỉ</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Address)</div>
											<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
											<div class="edit-value display-table-cell none-edit" style="">
												<xsl:value-of select="DLHDon/NDHDon/NMua/DChi" />
											</div>
										</div>
										<div class="float-left width-full merge-row-infor display-flex" merge-field="MergeFied_1">
											<div class="width-half edit-item float-left" data-field="PaymentMethod" style="">
												<div class="edit-label white-space-nowrap display-table-cell" style="">Hình thức thanh toán</div>
												<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Payment method)</div>
												<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
												<div class="edit-value display-table-cell none-edit" style="">
													<xsl:value-of select="DLHDon/TTChung/HTTToan" />
												</div>
											</div>
											<div class="width-half edit-item float-left" data-field="BuyerBankAccount" style="">
												<div class="edit-label hite-space-nowrap display-table-cell" style="">Số tài khoản</div>
												<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Bank account)</div>
												<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
												<div class="edit-value display-table-cell none-edit" style="">
													<xsl:variable name="buyerBankAccount" select="DLHDon/NDHDon/NMua/STKNHang" />
													<xsl:variable name="buyerBankName" select="DLHDon/NDHDon/NMua/TNHang" />
													<xsl:choose>
														<xsl:when test="normalize-space($buyerBankAccount) != ''">
															<xsl:value-of select="$buyerBankAccount" />
															<xsl:if test="normalize-space($buyerBankName) != ''">
																- <xsl:value-of select="$buyerBankName" />
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:if test="normalize-space($buyerBankName) != ''">
																<xsl:value-of select="$buyerBankName" />
															</xsl:if>
														</xsl:otherwise>
													</xsl:choose>
												</div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="edit-item width-full float-left" data-field="PaymentCurrency" style="">
											<div class="edit-label hite-space-nowrap display-table-cell" style="">Đồng tiền thanh toán</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Payment Currency)</div>
											<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
											<div class="edit-value display-table-cell none-edit" style="">
												<xsl:value-of select="DLHDon/TTChung/DVTTe" />
											</div>
										</div>
										<div class="clear" />
									</div>
									<div class="float-left qrcode-parent offset-resize-width display-none">
										<div class="qrcode"></div>
									</div>
									<div class="clear" />
								</div>
								<div class="other-invoice-infor text-left">
									<xsl:if test="$referenceType = 1">
										<div class="">
											Thay thế cho hóa đơn Mẫu số <xsl:value-of select="$orgInvTemplateNo" />,
											ký hiệu <xsl:value-of select="$orgInvSeries" />,
											số <xsl:value-of select="$orgInvNo" />,
											ngày <xsl:value-of select="substring($orgInvDateDisplay, 0, 3)" /> tháng <xsl:value-of select="substring($orgInvDateDisplay, 4, 2)" /> năm <xsl:value-of select="substring($orgInvDateDisplay, 7, 4)" />
										</div>
									</xsl:if>
									<xsl:if test="$referenceType = 2">
										<div class="">
											Điều chỉnh cho hóa đơn Mẫu số <xsl:value-of select="$orgInvTemplateNo" />,
											ký hiệu <xsl:value-of select="$orgInvSeries" />,
											số <xsl:value-of select="$orgInvNo" />,
											ngày <xsl:value-of select="substring($orgInvDateDisplay, 0, 3)" /> tháng <xsl:value-of select="substring($orgInvDateDisplay, 4, 2)" /> năm <xsl:value-of select="substring($orgInvDateDisplay, 7, 4)" />:
											<xsl:value-of disable-output-escaping="yes" select="$changeReason" />
										</div>
									</xsl:if>
								</div>
							</div>
							<div class="table-detail p-relative">
								<div class="template-table"></div>
								<!--<xsl:variable name="totalSaleAmountBeforeSale" select="sum(DLHDon/NDHDon/DSHHDVu/HHDVu[normalize-space(ThTien) != '']/ThTien)" />-->
								<xsl:variable name="totalSaleAmountBeforeSale" select="DLHDon/NDHDon/TToan/TTCKTMai + DLHDon/NDHDon/TToan/TgTCThue" />
								<xsl:variable name="totalDiscountAmount" select="DLHDon/NDHDon/TToan/TTCKTMai - sum(DLHDon/NDHDon/DSHHDVu/HHDVu[TChat = '3']/ThTien)" />
								<xsl:variable name="totalSaleAmount" select="DLHDon/NDHDon/TToan/TgTCThue" />
								<xsl:variable name="totalVATAmount" select="DLHDon/NDHDon/TToan/TgTThue" />
								<xsl:variable name="totalPromotionRecord" select="count(DLHDon/NDHDon/DSHHDVu/HHDVu[TChat = '2'])" />
								<xsl:variable name="totalRecord" select="count(DLHDon/NDHDon/DSHHDVu/HHDVu)" />
								<xsl:variable name="totalRecordNotGoods" select="count(DLHDon/NDHDon/DSHHDVu/HHDVu[TChat = '2']) + count(DLHDon/NDHDon/DSHHDVu/HHDVu[TChat = '3']) + count(DLHDon/NDHDon/DSHHDVu/HHDVu[TChat = '4'])" />
								<table id="tbDetail" cellpadding="0" cellspacing="0" width="100%" group-field="table-detail" class="can-select highlight-block">
									<tr class="font-bold tr-header">
										<td style="width:6%; width:6%; width: 46.4375px;" data-field="LineNumber" class="disable-hiden">
											<div class="edit-label" style="">STT</div>
											<div class="edit-label-en display-none" style="">(No)</div>
										</td>
										<td style="width:10%;" data-field="InventoryItemCode" class="display-none">
											<div class="edit-label" style="">Mã hàng</div>
											<div class="edit-label-en display-none" style="">(Item code)</div>
										</td>
										<td style="width:*; width:*; width: 311.375px;" data-field="ItemName" class="disable-hiden">
											<div class="edit-label" style="">Tên thuốc</div>
											<div class="edit-label-en display-none" style="">(Name of goods and services)</div>
										</td>
										<td style="width:11%;" data-field="SerialNumber" class="display-none">
											<div class="edit-label" style="">Quy cách</div>
											<div class="edit-label-en display-none" style="">(Specification)</div>
										</td>
										<td style="width:13%; width: 100.594px;" data-field="UnitName">
											<div class="edit-label" style="">Đơn vị tính</div>
											<div class="edit-label-en display-none" style="">(Unit)</div>
										</td>
										<td style="width:10%; width: 77.375px;" data-field="Quantity">
											<div class="edit-label" style="">Số lượng</div>
											<div class="edit-label-en display-none" style="">(Quantity)</div>
										</td>
										<td style="width:14%; width: 108.344px;" data-field="UnitPrice">
											<div class="edit-label" style="">Đơn giá</div>
											<div class="edit-label-en display-none" style="">(Unit price)</div>
										</td>
										<td style="width:16%; width: 123.875px;" data-field="TotalAmount" class="disable-hiden">
											<div class="edit-label" style="">Thành tiền</div>
											<div class="edit-label-en display-none" style="">(Amount)</div>
										</td>
										<td style="width:10%;" data-field="InventoryItemNote" class="display-none">
											<div class="edit-label" style="">Ghi chú</div>
											<div class="edit-label-en display-none" style="">(Note)</div>
										</td>
										<td style="width:12%;" data-field="ExchangeRateColumn" class="exchange-rate-table display-none">
											<div class="edit-label" style="">
												Tỷ giá
											</div>
											<div class="edit-label-en display-none" style="">
												(Exchange rate)
											</div>
											<div>
												(<xsl:call-template name="textexchangerate"></xsl:call-template>)
											</div>
										</td>
										<xsl:if test="$curCurrentcy = $usingCurrency or $modeTemplate = '1'"></xsl:if>
									</tr>
									<xsl:for-each select="DLHDon/NDHDon/DSHHDVu/HHDVu">
										<xsl:variable name="lineNumber"> </xsl:variable>
										<xsl:variable name="curLineNumber" select="STT" />
										<tr class="text-left tr-data-detail">
											<td class="text-center" data-field="LineNumber">
												<div class="edit-value" style="">
													<xsl:choose>
														<xsl:when test="normalize-space($curLineNumber) = ''">
															<xsl:value-of select="$lineNumber" />
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="$curLineNumber" />
														</xsl:otherwise>
													</xsl:choose>
												</div>
											</td>
											<td class="display-none" data-field="InventoryItemCode">
												<div class="edit-value" style="">
													<xsl:if test="TChat != 4">
														<xsl:value-of select="MHHDVu" />
													</xsl:if>
												</div>
											</td>
											<td data-field="ItemName">
												<div class="edit-value" style="">
													<xsl:value-of select="THHDVu" />
													<xsl:if test="TChat = 2 and $totalPromotionRecord != $totalRecord">
														 (Hàng khuyến mại không thu tiền)
													</xsl:if>
												</div>
											</td>
											<td class="display-none" data-field="SerialNumber">
												<div class="edit-value" style="">
													<xsl:if test="TChat != 4">
														<xsl:value-of select="TTKhac/TTin[TTruong='SerialNumber']/DLieu" />
													</xsl:if>
												</div>
											</td>
											<td data-field="UnitName">
												<div class="edit-value" style="">
													<xsl:value-of select="DVTinh" />
												</div>
											</td>
											<td class="number" data-field="Quantity">
												<div class="edit-value" style="">
													<xsl:if test="SLuong != '' and SLuong != 0 and TChat != 4">
														<xsl:choose>
															<xsl:when test="$QuantityDecimalDigits !=0">
																<xsl:value-of select="format-number(SLuong,$quantityFormat, 'decimalFormat')" />
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="format-number(SLuong,'##.##0,##','number')" />
															</xsl:otherwise>
														</xsl:choose>
													</xsl:if>
												</div>
											</td>
											<td class="number" data-field="UnitPrice">
												<div class="edit-value" style="">
													<xsl:if test="DGia != '' and DGia != 0 and TChat != 4">
														<xsl:choose>
															<xsl:when test="$curCurrentcy = $usingCurrency">
																<xsl:value-of select="format-number(DGia,$unitPriceOCFormat,'decimalFormat')" />
															</xsl:when>
															<xsl:when test="$curCurrentcy = $usingVND">
																<xsl:value-of select="format-number(DGia,$unitPriceFormat,'decimalFormat')" />
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="format-number(DGia,'##.##0,##','number')" />
															</xsl:otherwise>
														</xsl:choose>
													</xsl:if>
												</div>
											</td>
											<td class="number" data-field="TotalAmount">
												<div class="edit-value" style="">
													<xsl:variable name="totalAmounDetail" select="ThTien"></xsl:variable>
													<xsl:if test="$totalAmounDetail != '' and number($totalAmounDetail) != 0 and TChat != '4'">
														<xsl:choose>
															<xsl:when test="$curCurrentcy = $usingCurrency">
																<xsl:value-of select="format-number($totalAmounDetail,$amountOCFormat,'decimalFormat')" />
															</xsl:when>
															<xsl:when test="$curCurrentcy = $usingVND">
																<xsl:value-of select="format-number($totalAmounDetail,$amountFormat,'decimalFormat')" />
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="format-number($totalAmounDetail,'##.##0,##','number')" />
															</xsl:otherwise>
														</xsl:choose>
													</xsl:if>
												</div>
											</td>
											<td class="display-none" data-field="InventoryItemNote">
												<div class="edit-value" style="">
													<xsl:if test="STT != ''">
														<xsl:value-of select="TTKhac/TTin[TTruong='InventoryItemNote']/DLieu" />
													</xsl:if>
												</div>
											</td>
											<td data-field="ExchangeRateColumn" class="number exchange-rate-table display-none">
												<div class="edit-value" style="">
													<xsl:if test="STT != ''">
														<xsl:value-of select="$valueexchangerate" />
													</xsl:if>
												</div>
											</td>
											<xsl:if test="$curCurrentcy = $usingCurrency or $modeTemplate = '1'"></xsl:if>
										</tr>
									</xsl:for-each>
									<xsl:if test="$totalPromotionRecord = $totalRecord and $totalRecord &gt; 0">
										<tr class="text-left tr-promotion">
											<td data-field="LineNumber" />
											<td data-field="InventoryItemCode" class="display-none" />
											<td data-field="ItemName">(Hàng khuyến mại không thu tiền)</td>
											<td data-field="SerialNumber" class="display-none" />
											<td data-field="UnitName" />
											<td data-field="Quantity" />
											<td data-field="UnitPrice" />
											<td data-field="TotalAmount" />
											<td data-field="InventoryItemNote" class="display-none" />
											<td data-field="ExchangeRateColumn" class="exchange-rate-table display-none" />
											<xsl:if test="$curCurrentcy = $usingCurrency or $modeTemplate = '1'"></xsl:if>
										</tr>
									</xsl:if>
									<xsl:if test="$totalRecord = 0">
										<tr class="text-left tr-data-detail tr-row-empty">
											<td data-field="LineNumber"> </td>
											<td data-field="InventoryItemCode" class="display-none" />
											<td data-field="ItemName"></td>
											<td data-field="SerialNumber" class="display-none" />
											<td data-field="UnitName" />
											<td data-field="Quantity" />
											<td data-field="UnitPrice" />
											<td data-field="TotalAmount" />
											<td data-field="InventoryItemNote" class="display-none" />
											<xsl:if test="$curCurrentcy = $usingCurrency or $modeTemplate = '1'">
												<td data-field="ExchangeRateColumn" class="exchange-rate-table display-none" />
											</xsl:if>
										</tr>
									</xsl:if>
								</table>
								<table id="tbFooter" cellpadding="0" cellspacing="0" class="can-select highlight-block table-footer" group-field="table-footer">
									<xsl:if test="(($totalDiscountAmount != '' and $totalDiscountAmount != 0 and $totalSaleAmountBeforeSale !='' and $totalSaleAmountBeforeSale != 0)) or $modeTemplate = '1'">
										<tr class="detail-sumary text-left discountAmount">
											<td class="width-quarter resize-width resize-right disable-hiden" data-field="DiscountRate" style="width: 193px;">
												
											</td>
											<td class="width-quarter resize-width resize-right disable-hiden" data-field="DiscountRate" style="width: 193.5px;">
												
											</td>
											<td class="width-quarter resize-width resize-right disable-hiden" data-field="TotalDiscountAmount" style="width: 193.5px;">
												<div class="edit-label display-table-cell white-space-nowrap padding-left-2" style="">Số tiền chiết khấu</div>
												<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Discount amount)</div>
												<div class="two-dot display-table-cell white-space-nowrap " style="">:</div>
											</td>
											<td class="width-quarter resize-width resize-right disable-hiden" data-field="TotalDiscountAmount" style="width: 193px;">
												<div class="edit-value font-bold text-right style-number-value none-edit" style="">
													<xsl:choose>
														<xsl:when test="$modeTemplate = '1'"></xsl:when>
														<xsl:when test="string(number($totalDiscountAmount)) = 'NaN'"></xsl:when>
														<xsl:when test="$curCurrentcy = $usingCurrency">
															<xsl:value-of select="format-number($totalDiscountAmount,$amountOCFormat,'decimalFormat')" />
														</xsl:when>
														<xsl:when test="$curCurrentcy = $usingVND">
															<xsl:value-of select="format-number($totalDiscountAmount,$amountFormat,'decimalFormat')" />
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="format-number($totalDiscountAmount,'##.##0,##','number')" />
														</xsl:otherwise>
													</xsl:choose>
												</div>
											</td>
										</tr>
									</xsl:if>
									<tr class="detail-sumary text-left">
										<td class="resize-width resize-right" data-field="NotShow1" style="width: 193px;"></td>
										<td class="resize-width resize-right" data-field="NotShow2" style="width: 193.5px;"></td>
										<td class="width-quarter resize-width resize-right disable-hiden" data-field="TotalAmountWithoutVAT" style="width: 193.5px;">
											<xsl:variable name="textTotalAmountWithoutVAT" select="'Cộng tiền hàng'" />
											<xsl:variable name="textTotalAmountWithoutVATEN" select="'(Total amount excl. VAT)'" />
											<xsl:choose>
												<xsl:when test="$totalDiscountAmount != '' and $totalDiscountAmount != 0 and $totalSaleAmount !='' and $totalSaleAmount != 0">
													<div class="text-fake display-table-cell white-space-nowrap padding-left-2" style="">
														<xsl:value-of select="$textTotalAmountWithoutVAT" />
													</div>
												</xsl:when>
												<xsl:otherwise>
													<div class="edit-label display-table-cell white-space-nowrap padding-left-2" style="">Cộng tiền hàng</div>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												<xsl:when test="$totalDiscountAmount != '' and $totalDiscountAmount != 0 and $totalSaleAmount !='' and $totalSaleAmount != 0">
													<div class="text-en-fake display-table-cell white-space-nowrap padding-left-4 display-none" style="">
														<xsl:value-of select="$textTotalAmountWithoutVATEN" /> (Discounted)
													</div>
												</xsl:when>
												<xsl:otherwise>
													<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Total amount excl. VAT)</div>
												</xsl:otherwise>
											</xsl:choose>
											<div class="two-dot display-table-cell white-space-nowrap " style="">:</div>
										</td>
										<td class="width-quarter resize-width resize-right disable-hiden" data-field="TotalAmountWithoutVAT" style="width: 193px;">
											<div class="edit-value font-bold text-right style-number-value none-edit" style="">
												<xsl:variable name="totalAmountBeforeVAT" select="DLHDon/NDHDon/TToan/TgTCThue" />
												<xsl:if test="$totalAmountBeforeVAT != '' and number($totalAmountBeforeVAT) and $totalAmountBeforeVAT != 0">
													<xsl:choose>
														<xsl:when test="$curCurrentcy = $usingCurrency">
															<xsl:value-of select="format-number($totalAmountBeforeVAT,$amountOCFormat,'decimalFormat')" />
														</xsl:when>
														<xsl:when test="$curCurrentcy = $usingVND">
															<xsl:value-of select="format-number($totalAmountBeforeVAT,$amountFormat,'decimalFormat')" />
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="format-number($totalAmountBeforeVAT,'##.##0,##','number')" />
														</xsl:otherwise>
													</xsl:choose>
												</xsl:if>
											</div>
										</td>
									</tr>
									<tr class="detail-sumary text-left">
										<td class="resize-width resize-right" data-field="NotShow3" style="width: 193px;"></td>
										<td class="resize-width resize-right" data-field="NotShow4" style="width: 193.5px;"></td>
										<td class="width-quarter resize-width resize-right disable-hiden" data-field="TotalAmountWithVAT" style="width: 193.5px;">
											<div class="edit-label display-table-cell white-space-nowrap padding-left-2" style="">Tổng tiền thanh toán
											<xsl:if test="$totalDiscountAmount != '' and $totalDiscountAmount != 0 and $totalSaleAmount !='' and $totalSaleAmount != 0">
												(Đã trừ CK)
											</xsl:if>
											</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Total amount)</div>
											<div class="two-dot display-table-cell white-space-nowrap " style="">:</div>
										</td>
										<td class="width-quarter resize-width resize-right disable-hiden" data-field="TotalAmountWithVAT" style="width: 193px;">
											<div class="edit-value font-bold text-right style-number-value none-edit" style="">
												<xsl:variable name="totalAmountWithVAT" select="DLHDon/NDHDon/TToan/TgTTTBSo" />
												<xsl:if test="($totalAmountWithVAT != '' and string(number($totalAmountWithVAT)) != 'NaN') or ($referenceType = 2)">
													<xsl:choose>
														<xsl:when test="$curCurrentcy = $usingCurrency">
															<xsl:value-of select="format-number($totalAmountWithVAT,$amountOCFormat,'decimalFormat')" />
															<xsl:value-of select="concat(' ',DLHDon/TTChung/DVTTe)" />
														</xsl:when>
														<xsl:when test="$curCurrentcy = $usingVND">
															<xsl:value-of select="format-number($totalAmountWithVAT,$amountFormat,'decimalFormat')" />
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="format-number($totalAmountWithVAT,'##.##0,##','number')" />
														</xsl:otherwise>
													</xsl:choose>
												</xsl:if>
											</div>
										</td>
									</tr>
									<tr class="detail-sumary text-left">
										<td colspan="4" class="disable-hiden" data-field="TotalAmountInWords" style="width: 773px;">
											<div class="display-table-cell white-space-nowrap edit-label padding-left-2" style="">Số tiền viết bằng chữ</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Total amount in words)</div>
											<div class="two-dot display-table-cell white-space-nowrap" style="">:</div>
											<div class="display-table-cell edit-value font-bold font-italic padding-left-4 none-edit" style="">
												<xsl:value-of select="DLHDon/NDHDon/TToan/TgTTTBChu" />
											</div>
										</td>
									</tr>
									<tr class="detail-sumary text-left">
										<td colspan="4" class="display-none" data-field="TemplateNote" style="">
											<div class="display-table-cell edit-value padding-left-2" style=""></div>
										</td>
									</tr>
								</table>
							</div>
							<div class="curency-block can-select highlight-block exchange-rate" group-field="curency-block" style="">
								<xsl:if test="$curCurrentcy = $usingCurrency or $modeTemplate = '1'">
									<div class="text-left content-currency">
										<div class="disable-hiden" data-field="ExchangeRate" client-field="ExchangeRateClient" style="">
											<div class="edit-label display-table-cell white-space-nowrap" style="">Tỷ giá</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Exchange Rate)</div>
											<div class="two-dot display-table-cell white-space-nowrap">:</div>
											<div class="font-bold edit-value display-table-cell white-space-nowrap" style="">
												<xsl:value-of select="$valueexchangerate" /> <xsl:call-template name="textexchangerate"></xsl:call-template>
											</div>
										</div>
										<div class="" data-field="TranslationCurrency" client-field="TranslationCurrencyClient" style="">
											<div class="edit-label display-table-cell white-space-nowrap" style="">Quy đổi</div>
											<div class="edit-label-en display-table-cell white-space-nowrap display-none" style="">(Equivalence)</div>
											<div class="two-dot display-table-cell white-space-nowrap">:</div>
											<div class="font-bold edit-value display-table-cell white-space-nowrap" style="">
												<xsl:choose>
													<xsl:when test="$modeTemplate = '1'"></xsl:when>
													<xsl:when test="$AmountDecimalDigits !=0">
														<xsl:value-of select="format-number(DLHDon/NDHDon/TToan/TTKhac/TTin[TTruong='TotalAmount']/DLieu,$amountFormat,'decimalFormat')" />
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="format-number(DLHDon/NDHDon/TToan/TTKhac/TTin[TTruong='TotalAmount']/DLieu,'##.##0,##','number')" />
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="$modeTemplate = '1'"></xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="concat(' ',DLHDon/TTKhac/TTin[TTruong='MainCurrency']/DLieu)" />
													</xsl:otherwise>
												</xsl:choose>
											</div>
										</div>
									</div>
								</xsl:if>
							</div>
							<div class="sign-xml-block">
								<table cellpadding="0" cellspacing="0" width="100%" id="signXml" group-field="sign-xml" class="can-select sign-block highlight-block" style="">
									<tr class="sign-region-content">
										<xsl:if test="$IsConvertToPaper = '1' or $modeTemplate = '1'">
											<td class="width-converter resize-width vertical-align-top converterRegion" sign-region="ConverterSignRegion" showMode="2">
												<div class="edit-item disable-hiden font-bold" data-field="ConverterSign" style="">
													<span class="edit-label" style="">Người chuyển đổi</span>
													<span class="edit-label-en padding-left-4 display-none" style="">(Converter)</span>
												</div>
												<div class="edit-item font-italic" data-field="ConverterSignFull" style="">
													<div class="edit-label" style="">(Ký, ghi rõ họ, tên)</div>
													<div class="edit-label-en display-none sign-full-en" style="">(Signature, full name)</div>
												</div>
												<div class="text-left sign-content sign-content-convert" data-field="ConverterSignContent" style="">
													<div class="text-center font-bold person-converter">
														<xsl:value-of select="$Converter" />
													</div>
													<div class="text-center">
														<span>Ngày chuyển đổi:</span>
														<span class="font-italic padding-left-4 date-converter">
															<xsl:if test="$ConvertDate != ''">
																<xsl:value-of select="concat(substring($ConvertDate, 9, 2),'/', substring($ConvertDate, 6, 2),'/', substring($ConvertDate, 1, 4))" />
															</xsl:if>
														</span>
													</div>
												</div>
											</td>
										</xsl:if>
										<td class="width-half resize-width vertical-align-top" sign-region="BuyerSignRegion" style="width: 387.5px;">
											<div class="edit-item disable-hiden font-bold" data-field="BuyerSign" style="">
												<span class="edit-label" style="">Người mua hàng</span>
												<span class="edit-label-en padding-left-4 display-none" style="">(Buyer)</span>
											</div>
											<div class="edit-item font-italic" data-field="BuyerSignFull" style="">
												<div class="edit-label" style="">(Ký, ghi rõ họ tên)</div>
												<div class="edit-label-en display-none sign-full-en" style="">(Digital signature (if any))</div>
											</div>
											
										</td>
										<td class="width-half vertical-align-top" sign-region="SellerSignRegion" style="width: 387.5px;">
											<div class="edit-item disable-hiden font-bold" data-field="SellerSign" style="">
												<span class="edit-label" style="">Người bán hàng</span>
												<span class="edit-label-en padding-left-4 display-none" style="">(Seller)</span>
											</div>
											<div class="edit-item font-italic" data-field="SellerSignFull" style="">
												<div class="edit-label" style="">(Ký, ghi rõ họ tên)</div>
												<div class="edit-label-en display-none sign-full-en" style="">(E-signature, Digital signature)</div>
											</div>
											
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="search-block can-select highlight-block" group-field="search-block" style="">
						</div>
					</div>
					<div class="fakeContent"></div>
				</div>
				<script>
					<xsl:text disable-output-escaping="yes">
<![CDATA[
           var curHeight = 0,
            index = 1,
            stopTable = false,
            heightTable = 0,
            maxHeight = 1125,
            isA5 = false,
            isA4 = false,
            isA4N = false,
            maxRow = Number(document.getElementsByClassName("max-row-table")[0].innerText),
            isDuplicateHeader = Number(document.getElementsByClassName("IsDuplicateHeader")[0].innerText),
            isShowAllRowEmpty = Number(document.getElementsByClassName("IsShowAllRowEmpty")[0].innerText),
            isMultitaxTrFooter = document.getElementsByClassName(" MultiTax-TR-FOOTER"),
            rowDetail = 0,
            pageNumber = 0;

        function customData() {
            var modeTemplate = document.getElementsByClassName("mode-template")[0];

            // Nếu kiểu đang xem mẫu thì không làm gì cả, khác kiểu xem thì xử lý
            if (!modeTemplate || modeTemplate.textContent != "1") {
                var auContent = document.getElementsByClassName("auContent")[0],
                    fakeContent = document.getElementsByClassName("fakeContent")[0],
                    templateType = document.getElementById("TemplateType");

                auContent.style.display = "none";
                // set max height cho từng khổ giấy
                if (templateType) {
                    if (templateType.textContent == "A5") {
                        maxHeight = 530;
                        isA5 = true
                    } else if (templateType.textContent == "A4") {
                        maxHeight = 1125;
                        isA4 = true;
                        fakeContent.classList.add("ruler-template");
                    }
                    else {
                        maxHeight = 795;
                        isA4N = true;
                        fakeContent.classList.add("ruler-template");
                    }

                    var enAmountInWord = document.getElementById("en-amount-inword");
                    if(enAmountInWord){
                        if(isA5 || isA4N){
                            enAmountInWord.style.fontSize = "12px";
                        }
                        else{
                            enAmountInWord.style.fontSize = "13px";
                        }
                    }
                }

                breakWordItemName();
                var count = 0;
                do {
                    addNewPage();
                    addTableHeader();
					curHeight = 0;
					var page = fakeContent.getElementsByClassName("page-" + pageNumber)[0];
                    var heightHeaderBlock = page.getElementsByClassName("header-block");
					if(heightHeaderBlock && heightHeaderBlock.length > 0) {
					curHeight = heightHeaderBlock[0].offsetHeight
					}
                    
                    if (count == 0 && fakeContent.getElementsByClassName("table-detail")[0]) {
                        heightTable = fakeContent.getElementsByClassName("table-detail")[0].offsetHeight;
                    }
                    curHeight += heightTable;
                    addRowDetail(count);
                    count += 1;
                }
                while (!stopTable);
                createEmptyRow();
                addFooterTable();
                addFooterInvocie();

                var fake = document.getElementsByClassName("fakeContent")[0];
                if (fake.getElementsByClassName("totalAmountEN")[0]) {
                    var paddingTotal = fake.querySelector("div[data-field='TotalAmountInWords']").children[0].offsetWidth; 
                    fake.getElementsByClassName("totalAmountEN")[0].style.paddingLeft = paddingTotal + "px";
                }
            }
        }

        function createEmptyRow() {
            var page = document.getElementsByClassName("page-" + pageNumber)[0];
            var tableNow = page.getElementsByClassName("table-detail")[0];
            if (tableNow) {
                var tbodyNow = tableNow.querySelector("tbody");
                var trPromotion = document.getElementsByClassName("tr-promotion")[0];
                if (trPromotion) {
                    tempTrPromotion = document.createElement("tr");
                    tempTrPromotion.setAttribute("class", "text-left tr-promotion");
                    tempTrPromotion.innerHTML = trPromotion.innerHTML;
                    tbodyNow.appendChild(tempTrPromotion);
                }
            }

            if (rowDetail < maxRow && pageNumber == 1 && isShowAllRowEmpty) {
                var leftRow = maxRow - rowDetail;
                var tableFooter = document.getElementById('tbFooter');
                createDetailFooter();
                var signBlock = document.getElementsByClassName("sign-xml-block")[0],
                    searchBlock = document.getElementsByClassName("search-block")[0],
                    curencyBlock = document.getElementsByClassName("curency-block")[0],
                    tempDivSignBlock = document.createElement("div"),
                    tempDivSearchBlock = document.createElement("div"),
                    tempDivCurencyBlock = document.createElement("div");

                if (tableFooter) {
                    var tempTableFooter = document.createElement("table");
                    tempTableFooter.setAttribute("id", "tbFooter");
                    tempTableFooter.setAttribute("width", "100%");
                    tempTableFooter.setAttribute("cellpadding", 0);
                    tempTableFooter.setAttribute("cellspacing", 0);
                    tempTableFooter.setAttribute("custom-field", "table-footer");
                    tempTableFooter.className = "can-select highlight-block table-footer";
                    tempTableFooter.innerHTML = tableFooter.innerHTML;
                    page.appendChild(tempTableFooter);
                }
                tempDivSignBlock.className = "sign-xml-block";
                tempDivSignBlock.innerHTML = signBlock.innerHTML;

                tempDivSearchBlock.className = "search-block";
                tempDivSearchBlock.innerHTML = searchBlock.innerHTML;

                tempDivCurencyBlock.className = "curency-block";
                if (curencyBlock) {
                    tempDivCurencyBlock.innerHTML = curencyBlock.innerHTML;
                }

                page.appendChild(tempDivCurencyBlock);
                page.appendChild(tempDivSignBlock);
                page.appendChild(tempDivSearchBlock);

                while (leftRow > 0 && page.offsetHeight < maxHeight) {
                    addRowEmptyByMaxRow(1);
                    leftRow--;
                }

                if (page.offsetHeight > maxHeight) {
                  var table = page.getElementsByClassName("table-detail")[0],
                    tbody = table.getElementsByTagName("tbody")[0];
                    var emptyrow = document.getElementsByClassName("empty-row");
                    var index = emptyrow.length - 1;
                    if (index >= 0) {
                        tbody.removeChild(emptyrow[index]);
                    }
                }

                removeDetailFooter();
                if (tableFooter) {
                    page.removeChild(tempTableFooter);
                }
                page.removeChild(tempDivCurencyBlock);
                page.removeChild(tempDivSignBlock);
                page.removeChild(tempDivSearchBlock);
            }
        }

        function createDetailFooter() {
            var page = document.getElementsByClassName("page-" + pageNumber)[0],
                tempTableDetail = page.getElementsByClassName("table-detail")[0],
                table = document.getElementById('tbDetail'),
                trs = table.getElementsByClassName('tr-of-footer');
            if (trs) {
                for (var j = 0; j < trs.length; j++) {
                    var tempTbody = tempTableDetail.getElementsByTagName("tbody");
                    var tempTr = document.createElement("tr");
                    tempTr.setAttribute("class", "tr-of-footer text-left disable-hiden");
                    tempTr.innerHTML = trs[j].innerHTML;
                    tempTbody[0].appendChild(tempTr);
                }
                                    
                if(isA4N || isMultitaxTrFooter.length > 0 ){
                    var fakeContent = document.getElementsByClassName("fakeContent")[0];
				    var tbDetail = fakeContent.querySelectorAll("#tbDetail");
				    for(var i=0; i<tbDetail.length-1; i++){
					    updateStyleBorderForTd(tbDetail[i]);
				    }
                }
                
            }
        }

        function removeDetailFooter() {
            var page = document.getElementsByClassName("page-" + pageNumber)[0],
                tempTableDetail = page.getElementsByClassName("table-detail")[0],
                tbody = tempTableDetail.getElementsByTagName("tbody")[0],
                trs = tempTableDetail.getElementsByClassName('tr-of-footer');

            if (trs.length > 0) {
                var size = trs.length;
                for (var j = size - 1; j >= 0; j--) {
                    tbody.removeChild(trs[j])
                }
            }
        }

        function addTempHeader(numberPage) {
            var headerBlock = document.getElementsByClassName("header-block")[0],
                page = document.getElementsByClassName("page-" + numberPage)[0];
            //loại bỏ phần header thằng thật bổ sung thằng fake
            var tempHeader = document.createElement("div");
            tempHeader.className = "header-block";
            tempHeader.innerHTML = headerBlock.innerHTML;
            page.appendChild(tempHeader);

            if (numberPage <= 1) {
                var auContent = document.getElementsByClassName("auContent")[0];
                var fakeContent = document.getElementsByClassName("fakeContent")[0];
                var extend = auContent.getElementsByClassName("info-extend")[0];
                var fakeExtend = document.createElement("div");
                if (extend) {
                    fakeExtend.className = "info-extend text-left";
                    fakeExtend.innerHTML = extend.innerHTML;
                    page.appendChild(fakeExtend);
                }
            }
        }

        function addTableHeader() {
            //headerTable
            var page = document.getElementsByClassName("page-" + pageNumber)[0],
                tempTable = document.createElement("table"),
                tempTbody = document.createElement("tbody"),
                tempTr = document.createElement("tr"),
                table = document.getElementById('tbDetail');
            if (table) {
                var trs = table.getElementsByTagName('tr'),
                    trTite = trs[0].innerHTML;
                var rowspan = trs[0].children[0].getAttribute("rowspan");

                tempTable.setAttribute("id", "tbDetail");
                tempTable.setAttribute("cellpadding", "0");
                tempTable.setAttribute("cellspacing", "0");
                tempTable.setAttribute("width", "100%");
                tempTable.setAttribute("class", "table-detail");
                tempTr.setAttribute("class", "font-bold tr-header");
                tempTr.innerHTML = trTite;
                tempTbody.appendChild(tempTr);
                tempTable.appendChild(tempTbody);
                page.appendChild(tempTable);

                if (rowspan && trs[1]) {
                    var trSub = trs[1].innerHTML;
                    subTempTr = document.createElement("tr");
                    subTempTr.setAttribute("class", "font-bold tr-header tr-col-span");
                    subTempTr.innerHTML = trSub;
                    tempTbody.appendChild(subTempTr);
                    tempTable.appendChild(tempTbody);
                    page.appendChild(tempTable);
                    index = index == 1 ? 2 : index;
                }

                var trSymbol = document.getElementsByClassName("tr-symbol")[0];
                if (trSymbol) {
                    tempTrSymbol = document.createElement("tr");
                    tempTrSymbol.setAttribute("class", "tr-symbol");
                    tempTrSymbol.innerHTML = trSymbol.innerHTML;
                    tempTbody.appendChild(tempTrSymbol);
                }
            }
        }

        function addRowDetail(curTable) {
            var page = document.getElementsByClassName("page-" + pageNumber)[0],
                tempTableDetail = page.getElementsByClassName("table-detail")[0],
                table = document.getElementById('tbDetail');
            if (table) {
                var trs = table.getElementsByTagName('tr'),
                    step = curTable == 0 ? 0 : 1;
                if (index + step >= trs.length) {
                    stopTable = true;
                }
                for (i = (index + step); i < trs.length; i++) {
                    if (trs[i].classList.contains("tr-data-detail") && !(trs[i].classList.contains("tr-symbol") || trs[i].classList.contains("tr-header"))) {
                        var tempTbody = tempTableDetail.getElementsByTagName("tbody");
                        var tempTr = document.createElement("tr");
                        tempTr.setAttribute("class", "tr-data-detail font-color-data text-left");
                        tempTr.innerHTML = trs[i].innerHTML;
                        tempTbody[0].appendChild(tempTr);
                        curHeight = page.offsetHeight;
                        rowDetail += 1;
                        if (curHeight > maxHeight) {
                            tempTbody[0].removeChild(tempTr);
                            i--;
                            index = i;
                            break;
                        }
                    }

                    if (trs[i].classList.contains("tr-of-footer") || i == (trs.length - 1)) {
                        stopTable = true;
                    }

                }
            } else {
                stopTable = true;
            }
        }

        function updateStyleBorderForTd(tBody){
			var trFooter = tBody.querySelector(".tr-of-footer");
			if(!trFooter){
				var trDetail = tBody.querySelectorAll(".tr-data-detail");
				if(trDetail.length > 1){
					var trNthLast2 = trDetail[trDetail.length - 2];
					var ss = document.styleSheets[0];
					var rules = ss.cssRules || ss.rules;
					var tdRule = null;
					for (var i = 0; i < rules.length; i++) {
						var rule = rules[i];
						if (rule.selectorText == "#tbDetail td") {
							tdRule = rule;
							break;
						}
					}
					
					var td = trNthLast2.querySelectorAll("td");
					for(var i=0; i<td.length; i++){
						td[i].style.borderBottomStyle = tdRule.style.borderBottomStyle;
						td[i].style.borderBottomColor = tdRule.style.borderBottomColor;
						td[i].style.borderWidth = "1px";
					}
				}
				
			}
		}

        function addFooterInvocie() {
            var page = document.getElementsByClassName("page-" + pageNumber)[0],
                signBlock = document.getElementsByClassName("sign-xml-block")[0],
                searchBlock = document.getElementsByClassName("search-block")[0],
                curencyBlock = document.getElementsByClassName("curency-block")[0],
                tempDivSignBlock = document.createElement("div"),
                tempDivSearchBlock = document.createElement("div"),
                tempDivCurencyBlock = document.createElement("div");

            tempDivSignBlock.className = "sign-xml-block";
            tempDivSignBlock.innerHTML = signBlock.innerHTML;

            tempDivSearchBlock.className = "search-block";
            tempDivSearchBlock.innerHTML = searchBlock.innerHTML;

            tempDivCurencyBlock.className = "curency-block";
            if (curencyBlock) {
                tempDivCurencyBlock.innerHTML = curencyBlock.innerHTML;
            }

            page.appendChild(tempDivCurencyBlock);
            page.appendChild(tempDivSignBlock);
            page.appendChild(tempDivSearchBlock);
            if (page.offsetHeight > maxHeight) {
                page.removeChild(tempDivCurencyBlock);
                page.removeChild(tempDivSignBlock);
                page.removeChild(tempDivSearchBlock);
                addNewPage();
                page = document.getElementsByClassName("page-" + pageNumber)[0];
                page.appendChild(tempDivCurencyBlock);
                page.appendChild(tempDivSignBlock);
                page.appendChild(tempDivSearchBlock);
                var marginTop = maxHeight - page.offsetHeight;
                var element = page.getElementsByClassName("search-block")[0];
                var addMargin = getMarginTop();
                element.style.marginTop = (marginTop + addMargin) + 'px';
            } else {
                var marginTop = maxHeight - page.offsetHeight;
                var element = page.getElementsByClassName("search-block")[0];
                var addMargin = getMarginTop();
                element.style.marginTop = (marginTop + addMargin) + 'px';
            }
        }

        function getMarginTop() {
            var addMargin = 0;
            if (pageNumber > 1) {
                addMargin = isA5 ? 40 : 60;
                if (isA4N) {
                    addMargin = 40;
                }

            } else {
                addMargin = isA5 ? 0 : 20;
                if (isA4N) {
                    addMargin = 0;
                }
            }
            return addMargin;
        }

        function addFooterTable() {
            var page = document.getElementsByClassName("page-" + pageNumber)[0],
                tableFooter = document.getElementById('tbFooter');

            if (tableFooter) {
                createDetailFooter();
                var tempTableFooter = document.createElement("table");
                tempTableFooter.setAttribute("id", "tbFooter");
                tempTableFooter.setAttribute("width", "100%");
                tempTableFooter.setAttribute("cellpadding", 0);
                tempTableFooter.setAttribute("cellspacing", 0);
                tempTableFooter.setAttribute("custom-field", "table-footer");
                tempTableFooter.className = "can-select highlight-block table-footer";
                tempTableFooter.innerHTML = tableFooter.innerHTML;
                page.appendChild(tempTableFooter);

                if (page.offsetHeight > maxHeight) {
                    removeDetailFooter();
                    page.removeChild(tempTableFooter);
                    addNewPage();
                    addTableHeader();
                    createDetailFooter();
                    page = document.getElementsByClassName("page-" + pageNumber)[0];
                    page.appendChild(tempTableFooter);

                }

                curHeight += tempTableFooter.offsetHeight;
            }

        }

        function addNewPage() {
            pageNumber += 1
            var fakeContent = document.getElementsByClassName("fakeContent")[0];
            var newPage = document.createElement("div");
            // add lại header
            newPage.setAttribute("class", "page-" + pageNumber);
            newPage.setAttribute("page", pageNumber);
            if (pageNumber > 1) {
                newPage.style.pageBreakBefore = "always";
                newPage.style.paddingTop = isA5 ? "30px" : "40px";
                if(isA4N){
					newPage.style.paddingTop = "33px";
				}
            }
            fakeContent.appendChild(newPage);
            if (isDuplicateHeader || pageNumber == 1) {
                addTempHeader(pageNumber);
            }
        }

        function addRowEmptyByMaxRow(row) {
            var page = document.getElementsByClassName("page-" + 1)[0],
                table = page.getElementsByClassName("table-detail")[0],
                tds = table.getElementsByTagName('tr')[index].cells,
                tempTbody = table.getElementsByTagName("tbody")[0],
				trFooter = tempTbody.getElementsByClassName("tr-of-footer");

            for (var j = 0; j < row; j++) {
                var newTr = document.createElement("tr");
                newTr.setAttribute("class", "empty-row");
                for (var i = 0; i < tds.length; i++) {
                    var newTD = document.createElement("td");
                    newTD.setAttribute("class", tds[i].getAttribute("class"))
                    newTD.innerHTML = "&nbsp;";
                    newTr.appendChild(newTD);
                }
				
				if(trFooter && trFooter[0]) {
					tempTbody.insertBefore(newTr, trFooter[0]);
				} else {
					tempTbody.appendChild(newTr);
				}
            }
        }

        function breakWordItemName(){
            var auth = document.getElementsByClassName("auContent")[0];
			var itemNames = auth.querySelectorAll(".tr-data-detail td[data-field=ItemName]");
            
			for(var i=0; i<itemNames.length; i++){
                
				var itemName = itemNames[i];
				var $content = itemName.querySelector(".edit-value");
                if($content) {
                    var temp = $content.innerHTML;
				    temp = temp.replaceAll("&nbsp;", " ");
                    $content.innerHTML = temp;
                }
			}
		}
		
		String.prototype.replaceAll = function(from, to) {
			return this.split(from).join(to);
		}
		]]>
</xsl:text>
				</script>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="checkCurrency">
		<xsl:variable name="currencyID" select="DLHDon/TTChung/DVTTe" />
		<xsl:variable name="mainCurrency" select="'VND'" />
		<xsl:choose>
			<xsl:when test="normalize-space($mainCurrency) != '' and normalize-space($currencyID) != '' and $mainCurrency != $currencyID">
				<xsl:value-of select="1" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="2" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="splitTaxCode">
		<xsl:param name="taxcode" />
		<xsl:param name="startindex" />
		<xsl:param name="classExtend" />
		<!--classExtend = 1: có hiển thị ô vuông, 0 là không dùng ô vuông-->
		<xsl:variable name="length" select="string-length($taxcode)" />
		<xsl:if test="$length &gt;= $startindex">
			<xsl:variable name="text" select="substring($taxcode, $startindex, 1)" />
			<div>
				<xsl:choose>
					<xsl:when test="$classExtend = 1">
						<xsl:attribute name="class">
							<xsl:value-of select="concat(&quot;e-tax-code display-table-cell text-center &quot;,&quot;block-tax-code&quot;)" />
						</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">
							<xsl:value-of select="concat(&quot;e-tax-code display-table-cell text-center &quot;,&quot;&quot;)" />
						</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:value-of select="$text" />
			</div>
			<div class="margin-e-tax-code display-table-cell">
				<xsl:if test="$classExtend = 1">
					<xsl:attribute name="class">
						<xsl:value-of select="concat(&quot;margin-e-tax-code display-table-cell &quot;,&quot;width-4&quot;)" />
					</xsl:attribute>
				</xsl:if>
			</div>
			<xsl:call-template name="splitTaxCode">
				<xsl:with-param name="taxcode" select="$taxcode" />
				<xsl:with-param name="startindex" select="$startindex + 1" />
				<xsl:with-param name="classExtend" select="$classExtend" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template name="reverse">
		<xsl:param name="input" />
		<xsl:variable name="length" select="string-length($input)" />
		<xsl:choose>
			<xsl:when test="$length &lt; 2">
				<xsl:value-of select="$input" />
			</xsl:when>
			<xsl:when test="$length = 2">
				<xsl:value-of select="substring($input,2,1)" />
				<xsl:value-of select="substring($input,1,1)" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="substring($input, $length,1)" />
				<xsl:call-template name="reverse">
					<xsl:with-param name="input" select="substring($input, 2, $length - 2)" />
				</xsl:call-template>
				<xsl:value-of select="substring($input,1,1)" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="textexchangerate">
		<xsl:variable name="ExchangeRate" select="DLHDon/TTChung/TGia" />
		<xsl:choose>
			<xsl:when test="$modeTemplate = '1'"></xsl:when>
			<xsl:when test="$ExchangeRate = 1">
				<xsl:value-of select="concat(DLHDon/TTChung/DVTTe,'/', 'VND')" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat('VND','/',DLHDon/TTChung/DVTTe)" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="valueexchangerate">
		<xsl:variable name="digitFormat">
			<xsl:text>00000000</xsl:text>
		</xsl:variable>
		<xsl:variable name="ExchangRateDecimalDigits" select="DLHDon/TTKhac/TTin[TTruong='ExchangRateDecimalDigits']/DLieu" />
		<xsl:variable name="exchangeRateFormat" select="concat('###.##0,',substring($digitFormat,1,$ExchangRateDecimalDigits))" />
		<xsl:variable name="ExchangeRate" select="DLHDon/TTChung/TGia" />
		<xsl:choose>
			<xsl:when test="$modeTemplate = '1'"></xsl:when>
			<xsl:when test="$ExchangRateDecimalDigits!=0">
				<xsl:value-of select="format-number($ExchangeRate,$exchangeRateFormat,'decimalFormat')" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="format-number($ExchangeRate,'##.##0,##','number')" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:strip-space elements="*" />
</xsl:stylesheet>