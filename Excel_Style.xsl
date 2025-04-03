<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
                xmlns:o="urn:schemas-microsoft-com:office:office"
                xmlns:x="urn:schemas-microsoft-com:office:excel">
<xsl:output method="xml" encoding="windows-1251" indent="yes"/>
	<xsl:template match="/">
		<ss:Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
						xmlns:o="urn:schemas-microsoft-com:office:office"
						xmlns:x="urn:schemas-microsoft-com:office:excel"
						xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
						xmlns:html="http://www.w3.org/TR/REC-html40">
						
			<!--++++++++++++++++ Стили для наших данных ++++++++++++++++++-->
			<ss:Styles>
				<ss:Style ss:ID="Default" ss:Name="Normal">
					<ss:Alignment ss:Vertical="Center" ss:Horizontal="Left" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Title">
					<ss:Alignment ss:Vertical="Center" ss:Horizontal="Left" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="TitleCenter">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Center" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="16" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Title_Center">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Center" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="16" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="Title_Left_2">
					<ss:Alignment ss:Vertical="Center" ss:Horizontal="Left" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="16" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="TitleCenter_2">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Center" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="12" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="TitleCenter2">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Center" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="12" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="TitleRight">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>                      
				</ss:Style>				
				<ss:Style ss:ID="Title_Right">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="Title_Left">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Left" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#0000FF" ss:Underline="Single"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="TitleRight2">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="16" ss:Bold="1" ss:Color="#DAA520"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="TitleRight_2">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="16" ss:Bold="1" ss:Color="#DAA520"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="TitleRight_3">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#DAA520"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="TitleRight3">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#DAA520"/>
					<ss:Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Orange">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Left" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="11" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFD700" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Orange_right">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="11" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#FFD700" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Grey">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Left" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#e6e6e6" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Grey_right">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Right" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#e6e6e6" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Grey_center">
					<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Center" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#e6e6e6" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#000000"/>
					</ss:Borders>
				</ss:Style>
				<ss:Style ss:ID="Header">
					<ss:Alignment ss:Vertical="Center" ss:Horizontal="Center" ss:WrapText="1"/>
					<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
					<ss:Interior ss:Color="#e6e6e6" ss:Pattern="Solid"/>
				</ss:Style>
				<ss:Style ss:ID="BoldText">
					<ss:Font ss:Bold="1"/>
				</ss:Style>
				<ss:Style ss:ID="RightAlign">
					<ss:Alignment ss:Horizontal="Right" ss:Vertical="Center"/>
				</ss:Style>
				<ss:Style ss:ID="CenterAlign">
					<ss:Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
				</ss:Style>
				<Style ss:ID="NoGrid">
					<Interior ss:Color="#FFFFFF" ss:Pattern="Solid"/>
					<ss:Borders>
						<ss:Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
						<ss:Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1" ss:Color="#FFFFFF"/>
					</ss:Borders>
				</Style>
			</ss:Styles>
				
			<!--++++++++++ ЛИСТ Главная ++++++++++++++++++-->
			<Worksheet ss:Name="Главная" ss:DoNotDisplayGridlines="1">
				<Table ss:StyleID="NoGrid">
					<ss:Row ss:Height="20" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="TitleRight_2" ss:MergeAcross="16">
							<ss:Data ss:Type="String">Акционерное общество Финансовое ателье ГроттБьерн</ss:Data>
						</ss:Cell>
					</ss:Row>
					<ss:Row ss:Height="20" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="TitleRight_3" ss:MergeAcross="16">
							<ss:Data ss:Type="String">Лицензия: № 166-02672-100000 от 01.11.2000 г.</ss:Data>
						</ss:Cell>
					</ss:Row>
					
					<ss:Row ss:Height="40" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="Title_Center" ss:MergeAcross="16">
							<ss:Data ss:Type="String">Отчёт брокера по операциям за период</ss:Data>
						</ss:Cell>
					</ss:Row>
					<ss:Row ss:Height="20" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="TitleCenter_2" ss:MergeAcross="16">
							<ss:Data ss:Type="String">По сделкам и операциям за период: <xsl:value-of select="/REPORT_DOC/Report/@PeriodBegin"/>-<xsl:value-of select="/REPORT_DOC/Report/@PeriodEnd"/></ss:Data>
						</ss:Cell>
					</ss:Row>
					<ss:Row ss:Height="15" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="Title_Right" ss:MergeAcross="16">
							<ss:Data ss:Type="String">
								Дата составления отчета: <xsl:value-of select="/REPORT_DOC/Report/@ReportDate"/>
							</ss:Data>
						</ss:Cell>
					</ss:Row>
					<ss:Row ss:Height="15" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="Title_Right" ss:MergeAcross="16">
							<ss:Data ss:Type="String">Клиент: <xsl:value-of select="/REPORT_DOC/Report/@ClientName"/>
							</ss:Data>
						</ss:Cell>
					</ss:Row>
					<ss:Row ss:Height="15" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="Title_Right" ss:MergeAcross="16">
							<ss:Data ss:Type="String"><xsl:value-of select="/REPORT_DOC/Report/@AgreementBasis"/>
							</ss:Data>
						</ss:Cell>
					</ss:Row>
					<ss:Row ss:Height="40" ss:AutoFitHeight="0">
						<ss:Cell ss:StyleID="Title_Left_2" ss:MergeAcross="16">
							<ss:Data ss:Type="String">Содержание отчета:</ss:Data>
						</ss:Cell>
					</ss:Row>
					<xsl:variable name="executedSection_MENU" select="/REPORT_DOC/Sec/Securities[@Status='1']"/>
					<xsl:variable name="executedSection2_MENU" select="/REPORT_DOC/Sec/Securities[@Status='2']"/>
					<xsl:variable name="executedSection_MENU_DATA" select="count($executedSection_MENU) + count($executedSection2_MENU) > 0"/>
					<xsl:if test="$executedSection_MENU_DATA">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'1.1. Ценные бумаги'!A1">
								<Data ss:Type="String">- 1.1. Ценные бумаги</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_FORTS_MENU" select="/REPORT_DOC/FORTSDeals/FORTSDeal"/>
					<xsl:variable name="FORTS_MENU" select="count($executed_FORTS_MENU) > 0"/>
					<xsl:if test="$FORTS_MENU">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'1.2. Срочные сделки'!A1">
								<Data ss:Type="String">- 1.2. Срочные сделки</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executedREPODeal_1_MENU" select="/REPORT_DOC/REPODeals/REPODeal[@Status='1']"/>
					<xsl:variable name="executedREPODeal_2_MENU" select="/REPORT_DOC/REPODeals/REPODeal[@Status='2']"/>
					<xsl:variable name="executed_REPODeal_MENU_DATA" select="count($executedREPODeal_1_MENU) + count($executedREPODeal_2_MENU) > 0"/>
					<xsl:if test="$executed_REPODeal_MENU_DATA">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'1.3. Сделки РЕПО'!A1">
								<Data ss:Type="String">- 1.3. Сделки РЕПО</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executedOther_Operation_MENU" select="/REPORT_DOC/OtherOperations/OtherOperation"/>
					<xsl:variable name="executedOther_Operation_MENU_Data" select="count($executedOther_Operation_MENU) > 0"/>
					<xsl:if test="$executedOther_Operation_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'1.4. Иные операции'!A1">
								<Data ss:Type="String">- 1.4.  Иные операции(займ, мена и др)</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executedOther_Metal_Markets_1_MENU" select="/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='1']"/>
					<xsl:variable name="executedOther_Metal_Markets_2_MENU" select="/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='3']"/>
					<xsl:variable name="executedOther_Metal_Markets_MENU_Data" select="count($executedOther_Metal_Markets_1_MENU) + count($executedOther_Metal_Markets_2_MENU) > 0"/>
					<xsl:if test="$executedOther_Metal_Markets_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'1.6. Валютный и Драг. металлы'!A1">
								<Data ss:Type="String">- 1.6. Инструменты валютного рынка и рынка драгоценных металлов</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executedTransactions_Securities_MENU" select="/REPORT_DOC/TransactionsSecurities/TransactionSecurities"/>
					<xsl:variable name="executedTransactions_Securities_MENU_Data" select="count($executedTransactions_Securities_MENU) > 0"/>
					<xsl:if test="$executedTransactions_Securities_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'3.1. Операции с ЦБ'!A1">
								<Data ss:Type="String">- 3.1. Инофрмация об операциях с ЦБ</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_State_Securities_Portfolio_MENU" select="/REPORT_DOC/StatesSecuritiesPortfolio/StateSecuritiesPortfolio"/>
					<xsl:variable name="executed_State_Securities_Portfolio_MENU_Data" select="count($executed_State_Securities_Portfolio_MENU) > 0"/>
					<xsl:if test="$executed_State_Securities_Portfolio_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'3.2. Состояние портфеля ЦБ'!A1">
								<Data ss:Type="String">- 3.2. Информация о состоянии портфеля ценных бумаг</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Futures_Options_MENU" select="/REPORT_DOC/OpenPositionsFuturesOptions/OpenPositionFuturesOptions"/>
					<xsl:variable name="executed_Futures_Options_MENU_Data" select="count($executed_Futures_Options_MENU) > 0"/>
					<xsl:if test="$executed_Futures_Options_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'3.3. Контракты и опционы'!A1">
								<Data ss:Type="String">- 3.3. Информация об открытых позициях по фьючерсным контрактам и опционам</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Metals_Market_MENU" select="/REPORT_DOC/LiabilitiesForeignMetalsMarket/LiabilitiesForeignMetalMarket"/>
					<xsl:variable name="executed_Metals_Market_MENU_Data" select="count($executed_Metals_Market_MENU) > 0"/>
					<xsl:if test="$executed_Metals_Market_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'3.4. Обязательства ВР и ДМ'!A1">
								<Data ss:Type="String">- 3.4. Информация по обязательствам валютного рынка и рынка драгоценных металлов</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Market_Obligation_MENU" select="/REPORT_DOC/StockMarketObligations/StockMarketObligation"/>
					<xsl:variable name="executed_Market_Obligation_MENU_Data" select="count($executed_Market_Obligation_MENU) > 0"/>
					<xsl:if test="$executed_Market_Obligation_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'3.5. Фондовый рынок'!A1">
								<Data ss:Type="String">- 3.5.  Информация по обязательствам фондового рынка</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Evaluationrublecollateral_MENU" select="/REPORT_DOC/Evaluationsrublecollateral/Evaluationrublecollateral"/>
					<xsl:variable name="executed_Evaluationrublecollateral_MENU_Data" select="count($executed_Evaluationrublecollateral_MENU) > 0"/>
					<xsl:if test="$executed_Evaluationrublecollateral_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'3.10. Оценка средств руб.'!A1">
								<Data ss:Type="String">- 3.10. Оценка рублевой составляющей средств обеспечения</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Variation_Margin_MENU" select="/REPORT_DOC/CalculationVariationMargin/CalculationsVariationMargin"/>
					<xsl:variable name="executed_Variation_Margin_MENU_Data" select="count($executed_Variation_Margin_MENU) > 0"/>
					<xsl:if test="$executed_Variation_Margin_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'5.3. Расчет маржи'!A1">
								<Data ss:Type="String">- 5.3. Расчет вариационной маржи</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Cash_Flow_MENU" select="/REPORT_DOC/CashesFlow/CashFlow"/>
					<xsl:variable name="executed_Cash_Flow_MENU_Data" select="count($executed_Cash_Flow_MENU) > 0"/>
					<xsl:if test="$executed_Cash_Flow_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'5.4. Информация о движении ДС'!A1">
								<Data ss:Type="String">- 5.4. Информация о движении денежных средств</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Cash_Markets_MENU" select="/REPORT_DOC/CashBalances/CashMarkets"/>
					<xsl:variable name="executed_Cash_Markets_MENU_Data" select="count($executed_Cash_Markets_MENU) > 0"/>
					<xsl:if test="$executed_Cash_Markets_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'5.5. Информация об остатках ДС'!A1">
								<Data ss:Type="String">- 5.5. Информация об остатках денежных средств</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Commission_Type_MENU" select="/REPORT_DOC/Commissions/CommissionType"/>
					<xsl:variable name="executed_Commission_MENU_Data" select="count($executed_Commission_Type_MENU) > 0"/>
					<xsl:if test="$executed_Commission_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'6.1. Расшифровка комиссий'!A1">
								<Data ss:Type="String">- 6.1. Расшифровка комиссий</Data>
							</Cell>
						</Row>
					</xsl:if>
					<xsl:variable name="executed_Security_Codes_MENU" select="/REPORT_DOC/SecurityesCodes/SecurityCodes"/>
					<xsl:variable name="executed_Security_Codes_MENU_Data" select="count($executed_Security_Codes_MENU) > 0"/>
					<xsl:if test="$executed_Security_Codes_MENU_Data">
						<Row>
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="16" ss:HRef="#'7.1. Расшифровка кодов ЦБ'!A1">
								<Data ss:Type="String">- 7.1. Расшифровка кодов ценных бумаг и иных финансовых инструментов</Data>
							</Cell>
						</Row>
					</xsl:if>
				</Table>
			</Worksheet>
			<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА Главная +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 1.1. Ценные бумаги +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executedSection" select="/REPORT_DOC/Sec/Securities[@Status='1']"/>
			<xsl:variable name="executedSection2" select="/REPORT_DOC/Sec/Securities[@Status='2']"/>
			<xsl:variable name="hasData" select="count($executedSection) + count($executedSection2) > 0"/>
			<xsl:if test="$hasData">
				<ss:Worksheet ss:Name="1.1. Ценные бумаги">		
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="18"
							ss:ExpandedRowCount="{count(/REPORT_DOC/Sec/Securities[@Status='1']) + count(/REPORT_DOC/Sec/Securities[@Status='2']) + 40}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="80" ss:DefaultRowHeight="15">
				
						<xsl:call-template name="generate-columns">
							<xsl:with-param name="count" select="18"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="default-width" select="60"/>	
						</xsl:call-template>
						
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="17">
								<ss:Data ss:Type="String">1.1. Ценные бумаги</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата совершения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Время совершения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата исполнения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Биржевой номер сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Цена одной ЦБ</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта цены</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Количество ЦБ, шт</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма сделки в валюте сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма сделки в валюте платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма НКД в валюте сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма НКД в валюте платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Портфель</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия биржи</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия брокера</ss:Data></ss:Cell>
						</ss:Row>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="17">
								<ss:Data ss:Type="String">Исполненные сделки предыдущих дней</ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:variable name="executedSec" select="/REPORT_DOC/Sec/Securities[@Status='1']"/>
						<xsl:for-each select="$executedSec">
							<ss:Row ss:Height="40" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@ExecutionDate"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyTransaction, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountNKDCurrencyTransactions, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountNCDCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<!-- Количество сделок (занимает 10 столбцов) -->
							<ss:Cell ss:StyleID="Grey" ss:MergeAcross="9">
								<ss:Data ss:Type="String">Итого: Количество сделок = <xsl:value-of select="count($executedSec)"/></ss:Data>
							</ss:Cell>
							<!-- Общая сумма (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Grey_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@AmountCurrencyPayment), '##0.00')"/></ss:Data>
							</ss:Cell>
							<!-- Два пустых столбца -->
							<ss:Cell ss:StyleID="Grey"/>
							<ss:Cell ss:StyleID="Grey"/>
							<!-- Сумма НКД в валюте платежа (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Grey_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@AmountNCDCurrencyPayment), '##0.00')"/></ss:Data>
							</ss:Cell>
							<!-- Два пустых столбца -->
							<ss:Cell ss:StyleID="Grey"/>
							<ss:Cell ss:StyleID="Grey"/>
							<!-- Сумма комиссии биржи (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Grey_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							<!-- Сумма комиссии брокера (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Grey_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:variable name="execut" select="/REPORT_DOC/Sec/Securities[@Status='2']"/>
						<xsl:if test="$execut">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Orange" ss:MergeAcross="17">
									<ss:Data ss:Type="String">Незавершенные сделки предыдущих дней</ss:Data>
								</ss:Cell>
							</ss:Row>
		
							<xsl:for-each select="$execut">
								<ss:Row ss:Height="40" ss:AutoFitHeight="0">
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@ExecutionDate"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyTransaction, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.0')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountNKDCurrencyTransactions, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountNCDCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data></ss:Cell>
								</ss:Row>
							</xsl:for-each>
							<ss:Row ss:AutoFitHeight="0">
								<!-- Количество сделок (занимает 10 столбцов) -->
								<ss:Cell ss:StyleID="Grey" ss:MergeAcross="9">
									<ss:Data ss:Type="String">Итого: Количество сделок = <xsl:value-of select="count($execut)"/></ss:Data>
								</ss:Cell>
								<!-- Общая сумма (занимает 1 столбец) -->
								<ss:Cell ss:StyleID="Grey_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($execut/@AmountCurrencyPayment), '##0.00')"/></ss:Data>
								</ss:Cell>
								<!-- Два пустых столбца -->
								<ss:Cell ss:StyleID="Grey"/>
								<ss:Cell ss:StyleID="Grey"/>
								<!-- Сумма НКД в валюте платежа (занимает 1 столбец) -->
								<ss:Cell ss:StyleID="Grey_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($execut/@AmountNCDCurrencyPayment), '##0.00')"/></ss:Data>
								</ss:Cell>
								
								<!-- Два пустых столбца -->
								<ss:Cell ss:StyleID="Grey"/>
								<ss:Cell ss:StyleID="Grey"/>
								<!-- Сумма комиссии биржи (занимает 1 столбец) -->
								<ss:Cell ss:StyleID="Grey_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($execut/@ExchangeCommission), '##0.00')"/></ss:Data>
								</ss:Cell>
								<!-- Сумма комиссии брокера (занимает 1 столбец) -->
								<ss:Cell ss:StyleID="Grey_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($execut/@BrokerCommission), '##0.00')"/></ss:Data>
								</ss:Cell>
							</ss:Row>
						</xsl:if>
								
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="9">
								<ss:Data ss:Type="String">Всего: Количество сделок = <xsl:value-of select="count($executedSec) + count($execut)"/></ss:Data>
							</ss:Cell>
							<!-- Общая сумма (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@AmountCurrencyPayment), '##0.00')"/></ss:Data>
							</ss:Cell>
							
							<!-- Два пустых столбца -->
							<ss:Cell ss:StyleID="Orange_right"/>
							<ss:Cell ss:StyleID="Orange_right"/>
							
							<!-- Сумма НКД в валюте платежа (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@AmountNCDCurrencyPayment), '##0.00')"/></ss:Data>
							</ss:Cell>
							
							<!-- Два пустых столбца -->
							<ss:Cell ss:StyleID="Orange_right"/>
							<ss:Cell ss:StyleID="Orange_right"/>
							
							<!-- Сумма комиссии биржи (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							
							<!-- Сумма комиссии брокера (занимает 1 столбец) -->
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executedSec/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА Ценные бумаги ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			
			<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 1.2. Срочные Сделки +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_FORTSDeal" select="/REPORT_DOC/FORTSDeals/FORTSDeal"/>
			<xsl:variable name="FORTSDeal_Data" select="count($executed_FORTSDeal) > 0"/>
			<xsl:if test="$FORTSDeal_Data">
				<ss:Worksheet ss:Name="1.2. Срочные сделки">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="13"
							ss:ExpandedRowCount="{count(/REPORT_DOC/FORTSDeals/FORTSDeal) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns2">
							<xsl:with-param name="count" select="13"/>
							<xsl:with-param name="expanded-width" select="150"/>
							<xsl:with-param name="default-width" select="90"/>
						</xsl:call-template>
						
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="12">
								<ss:Data ss:Type="String">1.2. Срочные сделки:</ss:Data>
							</ss:Cell>
						</ss:Row>
					
						<ss:Row ss:Height="120" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата совершения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Время совершения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Биржевой номер сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Цена одного фьючерсного контракта / размер премии по опциону</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Количество фьючерсных контрактов / опционов</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Цена исполнения по опциону</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма в валюте платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Портфель</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия биржи</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия брокера</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeFORTSDeal" select="/REPORT_DOC/FORTSDeals/FORTSDeal"/>
						<xsl:for-each select="$executeFORTSDeal">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Cost, '##0.0000')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="Number"><xsl:value-of select="@Quantity"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@ExecutionPriceByOption != '0.0000'">
											<ss:Data ss:Type="Number"><xsl:value-of select="@ExecutionPriceByOption"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@AmountCurrencyPayment != '0.00'">
											<ss:Data ss:Type="Number"><xsl:value-of select="@AmountCurrencyPayment"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@ExchangeCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@BrokerCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="10">
								<ss:Data ss:Type="String">Всего: Количество сделок = <xsl:value-of select="count($executeFORTSDeal)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeFORTSDeal/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeFORTSDeal/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА Срочные Сделки +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 1.3. Сделки РЕПО +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executedREPODeal_1" select="/REPORT_DOC/REPODeals/REPODeal[@Status='1']"/>
			<xsl:variable name="executedREPODeal_2" select="/REPORT_DOC/REPODeals/REPODeal[@Status='2']"/>
			<xsl:variable name="executed_REPODeal" select="count($executedREPODeal_1) + count($executedREPODeal_2) > 0"/>
			<xsl:if test="$executed_REPODeal">
				<ss:Worksheet ss:Name="1.3. Сделки РЕПО">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="18"
							ss:ExpandedRowCount="{count(/REPORT_DOC/REPODeals/REPODeal[@Status='1']) + count(/REPORT_DOC/REPODeals/REPODeal[@Status='2']) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns3">
							<xsl:with-param name="count" select="18"/>
							<xsl:with-param name="expanded-width" select="60"/>
							<xsl:with-param name="default-width" select="90"/>
						</xsl:call-template>
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="17">
								<ss:Data ss:Type="String">1.3. Сделки РЕПО:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Время заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата исполнения обязательств</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Номер биржевой сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Код рсчетов</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Срок расчетов, дн.</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид сделки (покупка, продажа, иной вид)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Цена одной ЦБ</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта цены</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Количество ЦБ, шт.</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма НКД</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Портфель</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия биржи</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия брокера</ss:Data></ss:Cell>
					
						</ss:Row>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="17">
								<ss:Data ss:Type="String">Исполненные сделки:</ss:Data>
							</ss:Cell>
						</ss:Row>
						
						<xsl:variable name="executeREPODeal" select="/REPORT_DOC/REPODeals/REPODeal[@Status='1']"/>
						<xsl:for-each select="$executeREPODeal">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@DateOfFulfillmentOfObligations"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CalculationCode"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CalculationPeriod"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Cost, '##0.000000')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@AmountNCDCurrencyPayment != ''">
											<ss:Data ss:Type="Number"><xsl:value-of select="@AmountNCDCurrencyPayment"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@ExchangeCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@BrokerCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="15">
								<ss:Data ss:Type="String">Итого: Количество сделок = <xsl:value-of select="count($executeREPODeal)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeREPODeal/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeREPODeal/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:variable name="executeREPODeal2" select="/REPORT_DOC/REPODeals/REPODeal[@Status='2']"/>
						<xsl:if test="$executeREPODeal2">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Orange" ss:MergeAcross="17">
									<ss:Data ss:Type="String">Незавершенные сделки к исполнению:</ss:Data>
								</ss:Cell>
							</ss:Row>	
							<xsl:for-each select="$executeREPODeal2">
								<ss:Row ss:AutoFitHeight="0">
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@DateOfFulfillmentOfObligations"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CalculationCode"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CalculationPeriod"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Cost, '##0.000000')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign">
										<xsl:choose>
												<xsl:when test="@AmountNCDCurrencyPayment != ''">
													<ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountNCDCurrencyPayment, '##0.00')"/></ss:Data>
												</xsl:when>
												<xsl:otherwise>
													<ss:Data ss:Type="String"></ss:Data>
												</xsl:otherwise>
										</xsl:choose>
									</ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign">
										<xsl:choose>
											<xsl:when test="@ExchangeCommission != '0.00'">
												<ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data>
											</xsl:when>
											<xsl:otherwise>
												<ss:Data ss:Type="String"></ss:Data>
											</xsl:otherwise>
										</xsl:choose>
									</ss:Cell>
									<ss:Cell ss:StyleID="RightAlign">
										<xsl:choose>
											<xsl:when test="@BrokerCommission != '0.00'">
												<ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data>
											</xsl:when>
											<xsl:otherwise>
												<ss:Data ss:Type="String"></ss:Data>
											</xsl:otherwise>
										</xsl:choose>
									</ss:Cell>
								</ss:Row>
							</xsl:for-each>
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Orange" ss:MergeAcross="15">
									<ss:Data ss:Type="String">Итого: Количество сделок = <xsl:value-of select="count($executeREPODeal2)"/></ss:Data>
								</ss:Cell>
								<ss:Cell ss:StyleID="Orange_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeREPODeal2/@ExchangeCommission), '##0.00')"/></ss:Data>
								</ss:Cell>
								<ss:Cell ss:StyleID="Orange_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeREPODeal2/@BrokerCommission), '##0.00')"/></ss:Data>
								</ss:Cell>
							</ss:Row>
						</xsl:if>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="15">
								<ss:Data ss:Type="String">Всего: количество сделок = <xsl:value-of select="count($executeREPODeal) + count($executeREPODeal2)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeREPODeal/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeREPODeal/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА Сделки РЕПО ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 1.4. Иные операции(займ, мена и др): ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executedOther_Operation" select="/REPORT_DOC/OtherOperations/OtherOperation"/>
			<xsl:variable name="executedOther_Operation_Data" select="count($executedOther_Operation) > 0"/>
			<xsl:if test="$executedOther_Operation_Data">
				<ss:Worksheet ss:Name="1.4. Иные операции">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="14"
							ss:ExpandedRowCount="{count(/REPORT_DOC/OtherOperations/OtherOperation) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns_1_4">
							<xsl:with-param name="count" select="14"/>
							<xsl:with-param name="expanded-width" select="60"/>
							<xsl:with-param name="expanded-width2" select="150"/>
							<xsl:with-param name="default-width" select="90"/>
						</xsl:call-template>
				
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="13">
								<ss:Data ss:Type="String">1.4. Иные операции(займ, мена и др):</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Время</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Цена одной ЦБ</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта цены</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Количество ЦБ, шт.</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма НКД</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Портфель</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия биржы</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия брокера</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeOtherOperation" select="/REPORT_DOC/OtherOperations/OtherOperation"/>
						<xsl:for-each select="$executeOtherOperation">
							<ss:Row ss:Height="40" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Cost != '0'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Cost, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@AmountCurrencyPayment != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@NKD != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@NKD, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@ExchangeCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@BrokerCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
							</ss:Row>
						</xsl:for-each>	
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 1.4. Иные операции(займ, мена и др): +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++ ЛИСТ 1.6. Инструменты валютного рынка и рынка драгоценных металлов: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executedOther_Metal_Markets_1" select="/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='1']"/>
			<xsl:variable name="executedOther_Metal_Markets_2" select="/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='3']"/>
			<xsl:variable name="executedOther_Metal_Markets_Data" select="count($executedOther_Metal_Markets_1) + count($executedOther_Metal_Markets_2) > 0"/>
			<xsl:if test="$executedOther_Metal_Markets_Data">
				<ss:Worksheet ss:Name="1.6. Валютный и Драг. металлы">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="17"
							ss:ExpandedRowCount="{count(/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='1']) + count(/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='3']) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns4">
							<xsl:with-param name="count" select="17"/>
							<xsl:with-param name="expanded-width" select="60"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="90"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="16">
								<ss:Data ss:Type="String">1.6. Инструменты валютного рынка и рынка драгоценных металлов:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата совершения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Время совершения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата исполнения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Биржевой номер сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Тип сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">ПФИ</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Курс сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта лота</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Объем в валюте лота, лот</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сопряженная валюта</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Объем в сопряженной валюте</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Портфель</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место заключения сделки</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия биржи</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Комиссия брокера</ss:Data></ss:Cell>
						</ss:Row>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="16">
								<ss:Data ss:Type="String">Исполненные сделки:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:variable name="executeMetalMarkets" select="/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='1']"/>
						<xsl:for-each select="$executeMetalMarkets">
							<ss:Row ss:Height="60" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@DateOfFulfillmentOfObligations"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@TypeDeals"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Derivatives"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Cost, '##0.000000')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@ExchangeCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@BrokerCommission != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="14">
								<ss:Data ss:Type="String">Итого: Количество сделок = <xsl:value-of select="count($executeMetalMarkets)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeMetalMarkets/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeMetalMarkets/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:variable name="executeMetalMarkets2" select="/REPORT_DOC/AssetsForeignMetalMarkets/AssetForeignMetalMarkets[@Status='3']"/>
						<xsl:if test="$executeMetalMarkets2">
							<ss:Row ss:AutoFitHeight="0"><ss:Cell ss:StyleID="Orange" ss:MergeAcross="16">
								<ss:Data ss:Type="String">Незавершенные сделки к исполнению:</ss:Data></ss:Cell>
							</ss:Row>
							<xsl:for-each select="$executeMetalMarkets2">
								<ss:Row ss:Height="60" ss:AutoFitHeight="0">
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Timeoftransaction"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@DateOfFulfillmentOfObligations"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Exchangetradenumber"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@TypeDeals"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Derivatives"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Transactiontype"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Cost, '##0.000000')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@CurrencyPrices"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quantity, '##0.')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountCurrencyPayment, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDeals"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceDealsSok"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign">
										<xsl:choose>
											<xsl:when test="@ExchangeCommission != '0.00'">
												<ss:Data ss:Type="String"><xsl:value-of select="format-number(@ExchangeCommission, '##0.00')"/></ss:Data>
											</xsl:when>
											<xsl:otherwise>
												<ss:Data ss:Type="String"></ss:Data>
											</xsl:otherwise>
										</xsl:choose>
									</ss:Cell>
									<ss:Cell ss:StyleID="RightAlign">
										<xsl:choose>
											<xsl:when test="@BrokerCommission != '0.00'">
												<ss:Data ss:Type="String"><xsl:value-of select="format-number(@BrokerCommission, '##0.00')"/></ss:Data>
											</xsl:when>
											<xsl:otherwise>
												<ss:Data ss:Type="String"></ss:Data>
											</xsl:otherwise>
										</xsl:choose>
									</ss:Cell>
								</ss:Row>
							</xsl:for-each>
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Orange" ss:MergeAcross="14">
									<ss:Data ss:Type="String">Итого: Количество сделок = <xsl:value-of select="count($executeMetalMarkets2)"/></ss:Data>
								</ss:Cell>
								<ss:Cell ss:StyleID="Orange_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeMetalMarkets2/@ExchangeCommission), '##0.00')"/></ss:Data>
								</ss:Cell>
								<ss:Cell ss:StyleID="Orange_right">
									<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeMetalMarkets2/@BrokerCommission), '##0.00')"/></ss:Data>
								</ss:Cell>
							</ss:Row>
						</xsl:if>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="14">
								<ss:Data ss:Type="String">Всего: количество сделок = <xsl:value-of select="count($executeMetalMarkets) + count($executeMetalMarkets2)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeMetalMarkets/@ExchangeCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeMetalMarkets/@BrokerCommission), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 1.6. Инструменты валютного рынка и рынка драгоценных металлов: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 3.1. Инофрмация об операциях с ЦБ: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executedTransactions_Securities" select="/REPORT_DOC/TransactionsSecurities/TransactionSecurities"/>
			<xsl:variable name="executedTransactions_Securities_Data" select="count($executedTransactions_Securities) > 0"/>
			<xsl:if test="$executedTransactions_Securities_Data">
				<ss:Worksheet ss:Name="3.1. Операции с ЦБ">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="6"
							ss:ExpandedRowCount="{count(/REPORT_DOC/TransactionsSecurities/TransactionSecurities) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns5">
							<xsl:with-param name="count" select="6"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="180"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="5">
								<ss:Data ss:Type="String">3.1. Инофрмация об операциях с ЦБ:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата совершения операции</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место учета ЦБ</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид, тип, форма выпуска, транш, серия</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Наименование операции</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Зачислено</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Списано</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeTransactionsSecurities" select="/REPORT_DOC/TransactionsSecurities/TransactionSecurities"/>
						<xsl:for-each select="$executeTransactionsSecurities">
							<ss:Row ss:Height="60" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Dateoftransaction"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceRegistration"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@NameOperation"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Enrolled, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Writtenoff != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Writtenoff, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="3">
								<ss:Data ss:Type="String">Итого: Количество операций =  <xsl:value-of select="count($executeTransactionsSecurities)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeTransactionsSecurities/@Enrolled), '##0.')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"></ss:Data>
							</ss:Cell>
						</ss:Row>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 3.1. Инофрмация об операциях с ЦБ: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 3.2. Информация о состоянии портфеля ценных бумаг: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_State_Securities_Portfolio" select="/REPORT_DOC/StatesSecuritiesPortfolio/StateSecuritiesPortfolio"/>
			<xsl:variable name="executed_State_Securities_Portfolio_Data" select="count($executed_State_Securities_Portfolio) > 0"/>
			<xsl:if test="$executed_State_Securities_Portfolio_Data">
				<ss:Worksheet ss:Name="3.2. Состояние портфеля ЦБ">
						<!-- Добавляем данные из FORTSDeals -->
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="13"
							ss:ExpandedRowCount="{count(/REPORT_DOC/StatesSecuritiesPortfolio/StateSecuritiesPortfolio) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns6">
							<xsl:with-param name="count" select="13"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="100"/>
						</xsl:call-template>
						
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="12">
								<ss:Data ss:Type="String">3.2. Информация о состоянии портфеля ценных бумаг:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="120" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Место учета ЦБ</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Всего</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Блокировано</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Доступно</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Зачислено</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Списано</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Всего</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Блокировано</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Доступно</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Рыночная цена</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта платежа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Плановый исходящий остаток с учетом обязательств, шт.</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeSecuritiesPortfolio" select="/REPORT_DOC/StatesSecuritiesPortfolio/StateSecuritiesPortfolio"/>
						<xsl:for-each select="$executeSecuritiesPortfolio">
							<ss:Row ss:Height="75" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PlaceRegistration"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@RemainderStart != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderStart, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@RemainderStart != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderStart, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Enrolled != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Enrolled, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Writtenoff != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Writtenoff, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderEnd, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderEnd, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@MarketPrice, '##0.0000')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@PaymentCurrency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@PlannedRef != '0.00'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@PlannedRef, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 3.2. Информация о состоянии портфеля ценных бумаг: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			
			<!--++++++++++++++++++++++++++++++++++ ЛИСТ 3.3. Информация об открытых позициях по фьючерсным контрактам и опционам: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Futures_Options" select="/REPORT_DOC/OpenPositionsFuturesOptions/OpenPositionFuturesOptions"/>
			<xsl:variable name="executed_Futures_Options_Data" select="count($executed_Futures_Options) > 0"/>
			<xsl:if test="$executed_Futures_Options_Data">
				<ss:Worksheet ss:Name="3.3. Контракты и опционы">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="7"
							ss:ExpandedRowCount="{count(/REPORT_DOC/OpenPositionsFuturesOptions/OpenPositionFuturesOptions) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns7">
							<xsl:with-param name="count" select="7"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="160"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="6">
								<ss:Data ss:Type="String">3.3. Информация об открытых позициях по фьючерсным контрактам и опционам:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Остаток на начало отчетного периода</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Покупка</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Продажа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Остаток на конец отчетного периода</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Начальная маржа</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Оценка опционов</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeFuturesOptions" select="/REPORT_DOC/OpenPositionsFuturesOptions/OpenPositionFuturesOptions"/>
						<xsl:for-each select="$executeFuturesOptions">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@RemainderStart != '0'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderStart, '##0.')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Purchase, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Sale, '##0.')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@RemainderEnd != '0'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderEnd, '##0.')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Margin != ''">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Margin, '##0.')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String">0.00</ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 3.3. Информация об открытых позициях по фьючерсным контрактам и опционам: ++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 3.4. Информация по обязательствам валютного рынка и рынка драгоценных металлов: ++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Metals_Market" select="/REPORT_DOC/LiabilitiesForeignMetalsMarket/LiabilitiesForeignMetalMarket"/>
			<xsl:variable name="executed_Metals_Market_Data" select="count($executed_Metals_Market) > 0"/>
			<xsl:if test="$executed_Metals_Market_Data">
				<ss:Worksheet ss:Name="3.4. Обязательства ВР и ДМ">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="7"
							ss:ExpandedRowCount="{count(/REPORT_DOC/LiabilitiesForeignMetalsMarket/LiabilitiesForeignMetalMarket) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns_3_4">
							<xsl:with-param name="count" select="7"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="140"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="6">
								<ss:Data ss:Type="String">3.4. Информация по обязательствам валютного рынка и рынка драгоценных металлов:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата исполнения</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Нетто-требование</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Нетто-обязательство</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Итого</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Курс</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Итого по курсу</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeForeignMetalsMarket" select="/REPORT_DOC/LiabilitiesForeignMetalsMarket/LiabilitiesForeignMetalMarket"/>
						<xsl:for-each select="$executeForeignMetalsMarket">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@ExecutionDate"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Requirements != '0.000000'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Requirements, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="RightAlign">
									<xsl:choose>
										<xsl:when test="@Liabilities != '0.000000'">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number(@Liabilities, '##0.00')"/></ss:Data>
										</xsl:when>
										<xsl:otherwise>
											<ss:Data ss:Type="String"></ss:Data>
										</xsl:otherwise>
									</xsl:choose>
								</ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Total, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Quotation, '##0.0000')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@CostRUR, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>	
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 3.4. Информация по обязательствам валютного рынка и рынка драгоценных металлов: ++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 3.5. Информация по обязательствам фондового рынка: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Market_Obligation" select="/REPORT_DOC/StockMarketObligations/StockMarketObligation"/>
			<xsl:variable name="executed_Market_Obligation_Data" select="count($executed_Market_Obligation) > 0"/>
			<xsl:if test="$executed_Market_Obligation_Data">
				<ss:Worksheet ss:Name="3.5. Фондовый рынок">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="6"
							ss:ExpandedRowCount="{count(/REPORT_DOC/StockMarketObligations/StockMarketObligation) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns8">
							<xsl:with-param name="count" select="6"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="160"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="5">
								<ss:Data ss:Type="String">3.5. Информация по обязательствам фондового рынка:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата исполнения</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Требования</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Обязательство</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Итого</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeMarketObligation" select="/REPORT_DOC/StockMarketObligations/StockMarketObligation"/>
						<xsl:for-each select="$executeMarketObligation">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@ExecutionDate"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Currency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Requirements, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Liabilities, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Total, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 3.5. Информация по обязательствам фондового рынка: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 3.10. Оценка рублевой составляющей средств обеспечения: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Evaluationrublecollateral" select="/REPORT_DOC/Evaluationsrublecollateral/Evaluationrublecollateral"/>
			<xsl:variable name="executed_Evaluationrublecollateral_Data" select="count($executed_Evaluationrublecollateral) > 0"/>
			<xsl:if test="$executed_Evaluationrublecollateral_Data">
				<ss:Worksheet ss:Name="3.10. Оценка средств руб.">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="4"
							ss:ExpandedRowCount="{count(/REPORT_DOC/Evaluationsrublecollateral/Evaluationrublecollateral) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns_3_10">
							<xsl:with-param name="count" select="4"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="300"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="3">
								<ss:Data ss:Type="String">3.10. Оценка рублевой составляющей средств обеспечения:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Рублевая составляющая средств обеспечения</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Ставка RUONIA</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Выплаченные проценты на рублевый остаток средств обеспечения</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeEvaluationrublecollateral" select="/REPORT_DOC/Evaluationsrublecollateral/Evaluationrublecollateral"/>
						<xsl:for-each select="$executeEvaluationrublecollateral">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Date"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Requirements, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Bid, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Payments, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>	
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="3" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 3.10. Оценка рублевой составляющей средств обеспечения: ++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 5.3. Расчет вариационной маржи: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Variation_Margin" select="/REPORT_DOC/CalculationVariationMargin/CalculationsVariationMargin"/>
			<xsl:variable name="executed_Variation_Margin_Data" select="count($executed_Variation_Margin) > 0"/>
			<xsl:if test="$executed_Variation_Margin_Data">
				<ss:Worksheet ss:Name="5.3. Расчет маржи">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="6"
							ss:ExpandedRowCount="{count(/REPORT_DOC/CalculationVariationMargin/CalculationsVariationMargin) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns8">
							<xsl:with-param name="count" select="6"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="160"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="5">
								<ss:Data ss:Type="String">5.3. Расчет вариационной маржи:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Рыночная цена</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Зачислено, руб.</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Списано, руб.</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Итого</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeVariationMargin" select="/REPORT_DOC/CalculationVariationMargin/CalculationsVariationMargin"/>
						<xsl:for-each select="$executeVariationMargin">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Date"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Asset"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@EstimatedPrice, '##0.000000')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Enrolled, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Writtenoff, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Total, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="2">
								<ss:Data ss:Type="String">Итого: Количество операций =  <xsl:value-of select="count($executeVariationMargin)"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeVariationMargin/@Enrolled), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeVariationMargin/@Writtenoff), '##0.00')"/></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeVariationMargin/@Total), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 5.3. Расчет вариационной маржи: ++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--++++++++++++++++++++++++++++++++++++++++ ЛИСТ 5.4. Информация о движении денежных средств: +++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Cash_Flow" select="/REPORT_DOC/CashesFlow/CashFlow"/>
			<xsl:variable name="executed_Cash_Flow_Data" select="count($executed_Cash_Flow) > 0"/>
			<xsl:if test="$executed_Cash_Flow_Data">
				<ss:Worksheet ss:Name="5.4. Информация о движении ДС">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="5"
							ss:ExpandedRowCount="{count(/REPORT_DOC/CashesFlow/CashFlow) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns9">
							<xsl:with-param name="count" select="5"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="400"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="4">
								<ss:Data ss:Type="String">5.4. Информация о движении денежных средств:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата совершения операции</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Наименование операции</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта операции</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Приход</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Расход</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeCashFlow" select="/REPORT_DOC/CashesFlow/CashFlow"/>
						<xsl:for-each select="$executeCashFlow">
							<ss:Row ss:Height="60" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Date"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@NameOperation"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Currency"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Receipt, '##0.00')"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Expense, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="4">
								<ss:Data ss:Type="String">В разразе валют:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:for-each select="//REPORT_DOC/CashesFlow/CashFlow[not(@Currency = preceding-sibling::CashFlow/@Currency)]">
									<xsl:variable name="currentCurrency" select="@Currency"/>
									<xsl:variable name="cashFlowForCurrency"
												select="//REPORT_DOC/CashesFlow/CashFlow[@Currency=$currentCurrency]"/>
									<xsl:variable name="totalReceipt" select="sum($cashFlowForCurrency/@Receipt)"/>
									<xsl:variable name="totalExpense" select="sum($cashFlowForCurrency/@Expense)"/>
				
									<ss:Row ss:AutoFitHeight="0">
										<ss:Cell ss:StyleID="Grey" ss:MergeAcross="1">
											<ss:Data ss:Type="String"></ss:Data>
										</ss:Cell>
										<ss:Cell ss:StyleID="Grey_center">
											<ss:Data ss:Type="String"><xsl:value-of select="$currentCurrency"/></ss:Data>
										</ss:Cell>
										<ss:Cell ss:StyleID="Grey_right">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number($totalReceipt, '##0.00')"/></ss:Data>
										</ss:Cell>
										<ss:Cell ss:StyleID="Grey_right">
											<ss:Data ss:Type="String"><xsl:value-of select="format-number($totalExpense, '##0.00')"/></ss:Data>
										</ss:Cell>
									</ss:Row>
									
						</xsl:for-each>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 5.4. Информация о движении денежных средств: ++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 5.5. Информация об остатках денежных средств: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Cash_Markets" select="/REPORT_DOC/CashBalances/CashMarkets"/>
			<xsl:variable name="executed_Cash_Markets_Data" select="count($executed_Cash_Markets) > 0"/>
			<xsl:if test="$executed_Cash_Markets_Data">
				<ss:Worksheet ss:Name="5.5. Информация об остатках ДС">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="16"
							ss:ExpandedRowCount="{count(/REPORT_DOC/CashMarkets) + count(//CashMarkets[not(@Marketplace = preceding-sibling::CashMarkets/@Marketplace)]) * (count(//CashMarkets[@Marketplace = current()]) + 3) + count(//CashMarkets[not(@Currency = preceding-sibling::CashMarkets/@Currency)]) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
					
						<xsl:call-template name="generate-columns_10">
							<xsl:with-param name="count" select="16"/>
							<xsl:with-param name="expanded-width" select="100"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="100"/>
						</xsl:call-template>
						
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="15">
								<ss:Data ss:Type="String">5.5. Информация об остатках денежных средств:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="120" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Дата</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Валюта</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Остаток (Начало отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Задолжность перед Брокером (Начало отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Начальная маржа (Начало отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма средств свободная от обязательств (Начало отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Приход</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Расход</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Остаток (Конец отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Задолжность перед Брокером (Конец отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Начальная маржа (Конец отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма средств свободная от обязательств (Конец отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Уведомление: Сумма к внесению (Конец отчетного периода)</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Курс</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Остаток на конец по курсу</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Плановый исходящий остаток с учетом обязательств</ss:Data></ss:Cell>
						</ss:Row>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="15">
								<ss:Data ss:Type="String">В разрезе портфелей:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:for-each select="//CashMarkets[not(@Marketplace = preceding-sibling::CashMarkets/@Marketplace)]">
							<xsl:variable name="currentMarketplace" select="@Marketplace"/>
							<xsl:variable name="dataForMarketplace" select="//CashMarkets[@Marketplace = $currentMarketplace]"/>
							<!-- Проверка на наличие данных для текущего Marketplace -->
							<xsl:if test="$dataForMarketplace">
								<xsl:variable name="currentTotalSum" select="$dataForMarketplace[1]/@TotalSum"/>
								<ss:Row ss:AutoFitHeight="0">
									<ss:Cell ss:StyleID="Grey" ss:MergeAcross="15">
										<ss:Data ss:Type="String"><xsl:value-of select="$currentMarketplace"/></ss:Data>
									</ss:Cell>
								</ss:Row>
								<!-- Вывод данных для текущего Marketplace -->
								<xsl:for-each select="$dataForMarketplace">
									<ss:Row ss:AutoFitHeight="0">
										<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@Date"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Currency"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@RemainderStart, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@DebtStart, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@MarginStart, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@FreeBalanceStart, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Enrolled, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Writtenoff, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Total, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@DebtEnd, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@MarginEND, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountFree, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@AmountDeposited, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="@Quotation"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@CostRUR, '##0.00')"/></ss:Data></ss:Cell>
										<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@PlannedClosing, '##0.00')"/></ss:Data></ss:Cell>
									</ss:Row>
											
								</xsl:for-each>
								<ss:Row ss:AutoFitHeight="0">
									<ss:Cell ss:StyleID="Orange" ss:MergeAcross="13">
										<ss:Data ss:Type="String">Итого по портфелям:</ss:Data>
									</ss:Cell>
									<ss:Cell ss:StyleID="Orange_right">
										<ss:Data ss:Type="String"><xsl:choose><xsl:when test="$currentTotalSum = '0.00' or $currentTotalSum = 0"><xsl:value-of select="''"/></xsl:when><xsl:otherwise><xsl:value-of select="$currentTotalSum"/></xsl:otherwise></xsl:choose></ss:Data>
									</ss:Cell>
									<ss:Cell ss:StyleID="Orange_right">
										<ss:Data ss:Type="String"></ss:Data>
									</ss:Cell>
								</ss:Row>
								
							</xsl:if>
						</xsl:for-each>
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="15">
								<ss:Data ss:Type="String">В разрезе валют:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<xsl:for-each select="//CashMarkets[not(@Currency = preceding-sibling::CashMarkets/@Currency)]">
							<xsl:variable name="currentCurrency" select="@Currency"/>
							<xsl:variable name="cashMarketsForGroup" select="//CashMarkets[@Currency=$currentCurrency]"/>
							<xsl:variable name="totalRemainderStart" select="sum($cashMarketsForGroup/@RemainderStart)"/>
							<xsl:variable name="totalDebtStart" select="sum($cashMarketsForGroup/@DebtStart)"/>
							<xsl:variable name="totalMarginStart" select="sum($cashMarketsForGroup/@MarginStart)"/>
							<xsl:variable name="totalFreeBalanceStart" select="sum($cashMarketsForGroup/@FreeBalanceStart)"/>
							<xsl:variable name="totalEnrolled" select="sum($cashMarketsForGroup/@Enrolled)"/>
							<xsl:variable name="totalWrittenoff" select="sum($cashMarketsForGroup/@Writtenoff)"/>
							<xsl:variable name="totalTotal" select="sum($cashMarketsForGroup/@Total)"/>
							<xsl:variable name="totalDebtEnd" select="sum($cashMarketsForGroup/@DebtEnd)"/>
							<xsl:variable name="totalMarginEND" select="sum($cashMarketsForGroup/@MarginEND)"/>
							<xsl:variable name="totalAmountFree" select="sum($cashMarketsForGroup/@AmountFree)"/>
							<xsl:variable name="totalAmountDeposited" select="sum($cashMarketsForGroup/@AmountDeposited)"/>
							<xsl:variable name="avgQuotation">
								<xsl:choose>
									<xsl:when test="count($cashMarketsForGroup) > 0">
										<xsl:value-of
												select="sum($cashMarketsForGroup/@Quotation) div count($cashMarketsForGroup)"/>
									</xsl:when>
									<xsl:otherwise>0</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:variable name="totalCostRUR" select="sum($cashMarketsForGroup/@CostRUR)"/>
							<xsl:variable name="totalPlannedClosing" select="sum($cashMarketsForGroup/@PlannedClosing)"/>
							<xsl:if test="$cashMarketsForGroup">
								<ss:Row ss:AutoFitHeight="0">
									<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="$cashMarketsForGroup[1]/@Date"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="CenterAlign"><ss:Data ss:Type="String"><xsl:value-of select="$currentCurrency"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalRemainderStart, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalDebtStart, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalMarginStart, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalFreeBalanceStart, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalEnrolled, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalWrittenoff, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalTotal, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalDebtEnd, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalMarginEND, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalAmountFree, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalAmountDeposited, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="$avgQuotation"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalCostRUR, '##0.00')"/></ss:Data></ss:Cell>
									<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number($totalPlannedClosing, '##0.00')"/></ss:Data></ss:Cell>
								</ss:Row>
							</xsl:if>
						</xsl:for-each>
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 5.5. Информация об остатках денежных средств: ++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--+++++++++++++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 6.1. Расшифровка комиссий: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Commission_Type" select="/REPORT_DOC/Commissions/CommissionType"/>
			<xsl:variable name="executed_Commission_Type_Data" select="count($executed_Commission_Type) > 0"/>
			<xsl:if test="$executed_Commission_Type_Data">
				<ss:Worksheet ss:Name="6.1. Расшифровка комиссий">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="2"
							ss:ExpandedRowCount="{count(/REPORT_DOC/Commissions/CommissionType) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns_11">
							<xsl:with-param name="count" select="2"/>
							<xsl:with-param name="expanded-width" select="800"/>
							<xsl:with-param name="expanded-width2" select="100"/>
							<xsl:with-param name="default-width" select="200"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="1">
								<ss:Data ss:Type="String">6.1. Расшифровка комиссий:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид комиссии</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Сумма, руб.</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeCommissionType" select="/REPORT_DOC/Commissions/CommissionType"/>
						<xsl:for-each select="$executeCommissionType">
							<ss:Row ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@CommissionType"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@CommissionSum, '##0.00')"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>	
						<ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Orange" ss:MergeAcross="0">
								<ss:Data ss:Type="String">Итого:</ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="Orange_right">
								<ss:Data ss:Type="String"><xsl:value-of select="format-number(sum($executeCommissionType/@CommissionSum), '##0.00')"/></ss:Data>
							</ss:Cell>
						</ss:Row>
						
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="1" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 6.1. Расшифровка комиссий: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
					
			<!--++++++++++++++++++++++++++++++++++++++++++ ЛИСТ 7.1. Расшифровка кодов ценных бумаг: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
			<xsl:variable name="executed_Security_Codes" select="/REPORT_DOC/SecurityesCodes/SecurityCodes"/>
			<xsl:variable name="executed_Security_Codes_Data" select="count($executed_Security_Codes) > 0"/>
			<xsl:if test="$executed_Security_Codes_Data">
				<ss:Worksheet ss:Name="7.1. Расшифровка кодов ЦБ">
					<ss:Table ss:StyleID="NoGrid" ss:ExpandedColumnCount="6"
							ss:ExpandedRowCount="{count(/REPORT_DOC/SecurityesCodes/SecurityCodes) + 20}"
							x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
							
						<xsl:call-template name="generate-columns_12">
							<xsl:with-param name="count" select="6"/>
							<xsl:with-param name="expanded-width" select="120"/>
							<xsl:with-param name="expanded-width2" select="140"/>
							<xsl:with-param name="default-width" select="300"/>
						</xsl:call-template>
					
						<ss:Row ss:AutoFitHeight="0" ss:Height="40">
							<ss:Cell ss:StyleID="Title" ss:MergeAcross="5">
								<ss:Data ss:Type="String">7.1. Расшифровка кодов ценных бумаг и иных финансовых инструментов:</ss:Data>
							</ss:Cell>
						</ss:Row>
						<ss:Row ss:Height="100" ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Ценная бумага/Инструмент</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Вид, форма выпуска ценной бумаги/Вид инструмента</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Тип ценной бумаги</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Эмитент ценной бумаги/Подробности по инструменту</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">Номер гос. Регистрации</ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="Header"><ss:Data ss:Type="String">ISIN код</ss:Data></ss:Cell>
						</ss:Row>
						<xsl:variable name="executeSecurityCodes" select="/REPORT_DOC/SecurityesCodes/SecurityCodes"/>
						<xsl:for-each select="$executeSecurityCodes">
							<ss:Row ss:Height="70" ss:AutoFitHeight="0">
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@NameSec"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@TypeCBFormIssue"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@TypeSec"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@IssuerName"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@StateRegistrationCode"/></ss:Data></ss:Cell>
								<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String"><xsl:value-of select="@ISIN"/></ss:Data></ss:Cell>
							</ss:Row>
						</xsl:for-each>	
						<Row ss:Height="40">
							<Cell ss:StyleID="Title_Left" ss:MergeAcross="4" ss:HRef="#'Главная'!A1">
								<Data ss:Type="String">Назад на главную</Data>
							</Cell>
						</Row>
					</ss:Table>
					<x:WorksheetOptions xmlns:x="urn:schemas-microsoft-com:office:excel">
						<x:PageSetup>
							<x:PaperSize x:PaperSize="9"/> <!-- Формат A4 -->
							<x:Layout x:Orientation="Landscape"/> <!-- Альбомная ориентация -->
							<x:PageMargins x:Bottom="0.2" x:Left="0.2" x:Right="0.2" x:Top="0.2"/> <!-- Поля страницы -->
						</x:PageSetup>
						<x:FitToPage/>
						<x:Print>
							<x:ValidPrinterInfo/>
							<x:PaperSizeIndex>9</x:PaperSizeIndex>
							<x:FitWidth>1</x:FitWidth> <!-- Уместить в ширину одной страницы -->
							<x:FitHeight>0</x:FitHeight> <!-- Уместить в высоту всех страниц -->
						</x:Print>
					</x:WorksheetOptions>
				</ss:Worksheet>
			</xsl:if>
			<!--+++++++++++++++++++++++++++++++++++++++++++ КОНЕЦ ЛИСТА 7.1. Расшифровка кодов ценных бумаг: ++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
		</ss:Workbook>
	</xsl:template>
	
	<!--++++++++++ задаем ширину колонок для Ценные бумаги +++++++++++++-->
	<xsl:template name="generate-columns">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="18"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 2  or $total-columns - $count + 1 = 3  or $total-columns - $count + 1 = 4  or $total-columns - $count + 1 = 5 or $total-columns - $count + 1 = 9 or $total-columns - $count + 1 = 15 or $total-columns - $count + 1 = 16 or $total-columns - $count + 1 = 17 or $total-columns - $count + 1 = 18">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 1.2.Срочные сделки +++++++++++++-->
	<xsl:template name="generate-columns2">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="13"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 3 or $total-columns - $count + 1 = 6 or $total-columns - $count + 1 = 7">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns2">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 1.3. Сделки РЕПО +++++++++++++-->
	<xsl:template name="generate-columns3">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="18"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 6 or $total-columns - $count + 1 = 10 or $total-columns - $count + 1 = 13 or $total-columns - $count + 1 = 14 ">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns3">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 1.4. Иные операции(займ, мена и др):  +++++++++++++-->
	<xsl:template name="generate-columns_1_4">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="14"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 3">
					<ss:Column ss:Width="{$expanded-width2}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns_1_4">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 1.6. Валютный и Драг. Металлы  +++++++++++++-->
	<xsl:template name="generate-columns4">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="17"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 6 or $total-columns - $count + 1 = 7 or $total-columns - $count + 1 = 8 or $total-columns - $count + 1 = 10">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:when test="$total-columns - $count + 1 = 14">
					<ss:Column ss:Width="{$expanded-width2}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns4">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 3.1. Операции с ЦБ  +++++++++++++-->
	<xsl:template name="generate-columns5">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="9"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 5 or $total-columns - $count + 1 = 6">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns5">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 3.2. Состояние портфеля ЦБ  +++++++++++++-->
	<xsl:template name="generate-columns6">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="13"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 4 or $total-columns - $count + 1 = 5">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns6">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 3.3. Информация об открытых позициях по фьючерсным контрактам и опционам:  +++++++++++++-->
	<xsl:template name="generate-columns7">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="7"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 4 or $total-columns - $count + 1 = 5">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns7">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 3.4. Информация по обязательствам валютного рынка и рынка драгоценных металлов:  +++++++++++++-->
	<xsl:template name="generate-columns_3_4">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="7"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 2">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns_3_4">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 3.5. Информация по обязательствам фондового рынка:  +++++++++++++-->
	<xsl:template name="generate-columns8">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="6"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns8">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 3.10. Оценка рублевой составляющей средств обеспечения:  +++++++++++++-->
	<xsl:template name="generate-columns_3_10">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="4"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns_3_10">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 5.4. Информация о движении денежных средств:  +++++++++++++-->
	<xsl:template name="generate-columns9">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="5"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 3 or $total-columns - $count + 1 = 4 or $total-columns - $count + 1 = 5">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns9">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 5.5. Информация об остатках денежных средств:  +++++++++++++-->
	<xsl:template name="generate-columns_10">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="16"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1 or $total-columns - $count + 1 = 2 or $total-columns - $count + 1 = 3 or $total-columns - $count + 1 = 4 or $total-columns - $count + 1 = 5 or $total-columns - $count + 1 = 10 or $total-columns - $count + 1 = 11 or $total-columns - $count + 1 = 13 or $total-columns - $count + 1 = 14">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns_10">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 6.1. Расшифровка комиссий:  +++++++++++++-->
	<xsl:template name="generate-columns_11">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="2"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 1">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns_11">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
		
	<!--++++++++++ задаем ширину колонок для 7.1. Расшифровка кодов ценных бумаг:  +++++++++++++-->
	<xsl:template name="generate-columns_12">
		<xsl:param name="count"/>
		<xsl:param name="expanded-columns"/>
		<xsl:param name="expanded-width"/>
		<xsl:param name="expanded-width2"/>
		<xsl:param name="default-width"/>
		<xsl:param name="total-columns" select="6"/>
		<xsl:if test="$count > 0">
			<xsl:choose>
				<xsl:when test="$total-columns - $count + 1 = 3 or $total-columns - $count + 1 = 5 or $total-columns - $count + 1 = 6">
					<ss:Column ss:Width="{$expanded-width}"/>
				</xsl:when>
				<xsl:when test="$total-columns - $count + 1 = 1">
					<ss:Column ss:Width="{$expanded-width2}"/>
				</xsl:when>
				<xsl:otherwise>
					<ss:Column ss:Width="{$default-width}"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="generate-columns_12">
				<xsl:with-param name="count" select="$count - 1"/>
				<xsl:with-param name="expanded-columns" select="$expanded-columns"/>
				<xsl:with-param name="expanded-width" select="$expanded-width"/>
				<xsl:with-param name="expanded-width2" select="$expanded-width2"/>
				<xsl:with-param name="default-width" select="$default-width"/>
				<xsl:with-param name="total-columns" select="$total-columns"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--+++++++++++++++++++ КОНЕЦ +++++++++++++++++++++++++++++++++++++-->
</xsl:stylesheet>
