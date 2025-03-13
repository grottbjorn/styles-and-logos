<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
                xmlns:o="urn:schemas-microsoft-com:office:office"
                xmlns:x="urn:schemas-microsoft-com:office:excel">

    <xsl:output method="xml" encoding="windows-1251" indent="yes"/>
	
	<xsl:template name="format-date">
        <xsl:param name="date"/>
        <xsl:variable name="formattedDate">
            <xsl:choose>
                <xsl:when test="$date != ''">
                    <!-- Преобразование даты в нужный формат -->
                    <xsl:value-of select="substring($date, 9, 2)"/>.<xsl:value-of select="substring($date, 6, 2)"/>.<xsl:value-of select="substring($date, 1, 4)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>N/A</xsl:text> <!-- Если дата пустая -->
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="$formattedDate"/>
    </xsl:template>
	
    <xsl:template match="/">
        <ss:Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
                     xmlns:o="urn:schemas-microsoft-com:office:office"
                     xmlns:x="urn:schemas-microsoft-com:office:excel"
                     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
                     xmlns:html="http://www.w3.org/TR/REC-html40">
            <ss:Styles>
                <ss:Style ss:ID="Default" ss:Name="Normal">
                    <ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Left" ss:WrapText="1"/>
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
                    <ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Left" ss:WrapText="1"/>
                    <ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="11" ss:Bold="1" ss:Color="#000000"/>
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
					</ss:Style>
					
					<ss:Style ss:ID="Grey">
						<ss:Alignment ss:Vertical="Bottom" ss:Horizontal="Left" ss:WrapText="1"/>
						<ss:Font ss:FontName="Calibri" x:CharSet="204" ss:Size="14" ss:Bold="1" ss:Color="#000000"/>
						<ss:Interior ss:Color="#e6e6e6" ss:Pattern="Solid"/>
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
						<ss:Alignment ss:Horizontal="Right"/>
					</ss:Style>	
					<ss:Style ss:ID="CenterAlign">
						<ss:Alignment ss:Horizontal="Center"/>
					</ss:Style>
            </ss:Styles>
<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 3.10. Оценка рублевой составляющей средств обеспечения: +++++++++++++++++++++++++++++++++++++++++++++++++-->
			<ss:Worksheet ss:Name="3.10. Оценка средств руб.">
				<ss:Table ss:ExpandedColumnCount="4"
						ss:ExpandedRowCount="{count(/REPORT_DOC/Evaluationrublecollateral/Evaluationrublecollateral) + 20}"
						x:FullColumns="1" x:FullRows="1" ss:DefaultColumnWidth="30" ss:DefaultRowHeight="15">
				
					<ss:Row ss:AutoFitHeight="0">
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
					
					<xsl:variable name="executeEvaluationrublecollateral" select="/REPORT_DOC/Evaluationrublecollateral/Evaluationrublecollateral"/>
					<xsl:for-each select="$executeEvaluationrublecollateral">
                        <ss:Row ss:AutoFitHeight="0">
							<ss:Cell ss:StyleID="Default"><ss:Data ss:Type="String">
								<xsl:call-template name="format-date">
									<xsl:with-param name="date" select="@Date"/>
								</xsl:call-template></ss:Data>
							</ss:Cell>
							<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Requirements, '##0.00')"/></ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Bid, '##0.00')"/></ss:Data></ss:Cell>
							<ss:Cell ss:StyleID="RightAlign"><ss:Data ss:Type="String"><xsl:value-of select="format-number(@Payments, '##0.00')"/></ss:Data></ss:Cell>
						</ss:Row>
					</xsl:for-each>	
				</ss:Table>
			</ss:Worksheet>
			<!--+++++++++++++++++++++++++++++++++++++++ КОНЕЦ 3.10. Оценка рублевой составляющей средств обеспечения: ++++++++++++++++++++++++++++++++++++++++++++++++++-->
        </ss:Workbook>
    </xsl:template>


</xsl:stylesheet>
