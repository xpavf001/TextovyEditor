<xsl:stylesheet version="1.0"
<!-- Odkaz na github: https://github.com/xpavf001/TextovyEditor-->
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Obecné nastavení</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>jazyková lokalizace</th>
						<th>motiv</th>
						<th>datum</th>
						<th>znaková sada</th>
						<th>autopredikce (zapnuto/vypnuto)</th>
						<th>úložiště</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/obecne_nastaveni">
						<tr>
							<td>
								<xsl:value-of select="jazykova_lokalizace"/>
							</td>
							<td>
								<xsl:value-of select="motiv"/>
							</td>
							<td>
								<xsl:value-of select="datum"/>
							</td>
							<td>
								<xsl:value-of select="znakova_sada"/>
							</td>
							<td>
								<xsl:choose>
									<xsl:when test="autopredikce = '0'">zapnuto</xsl:when>
									<xsl:otherwise>vypnuto</xsl:otherwise>
								</xsl:choose>
							</td>
							<td>
								<xsl:value-of select="uloziste"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Nastavení formátu</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>formát</th>
						<th>orientace</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/nastaveni_formatu">
						<tr>
							<td>
								<xsl:value-of select="format"/>
							</td>
							<td>
								<xsl:value-of select="orientace"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Nastavení písma</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>typ fontu</th>
						<th>velikost fontu</th>
						<th>barva textu</th>
						<th>barva pozadí textu</th>
						<th>řez fontu</th>
						<th>podtržení textu</th>
						<th>zarovnání textu</th>
						<th>odsazení textu</th>
						<th>řádkování</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/nastaveni_pisma">
						<tr>
							<td>
								<xsl:value-of select="typ_fontu"/>
							</td>
							<td>
								<xsl:value-of select="velikost_fontu"/>
							</td>
							<td>
								<xsl:value-of select="barva_textu"/>
							</td>
							<td>
								<xsl:value-of select="barva_pozadi_textu"/>
							</td>
							<td>
								<xsl:value-of select="rez_fontu"/>
							</td>
							<td>
								<xsl:value-of select="podtrzeni_textu"/>
							</td>
							<td>
								<xsl:value-of select="zarovnani_textu"/>
							</td>
							<td>
								<xsl:value-of select="odsazeni_textu"/>
							</td>
							<td>
								<xsl:value-of select="radkovani"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Volba stylu</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>jméno stylu</th>
						<th>typ fontu</th>
						<th>velikost fontu</th>
						<th>barva textu</th>
						<th>barva pozadí textu</th>
						<th>řez fontu</th>
						<th>podtržení textu</th>
						<th>zarovnání textu</th>
						<th>odsazení textu</th>
						<th>řádkování</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/styl">
						<tr>
							<td>
								<xsl:value-of select="@jmeno_stylu"/>
							</td>
							<td>
								<xsl:value-of select="typ_fontu"/>
							</td>
							<td>
								<xsl:value-of select="velikost_fontu"/>
							</td>
							<td>
								<xsl:value-of select="barva_textu"/>
							</td>
							<td>
								<xsl:value-of select="barva_pozadi_textu"/>
							</td>
							<td>
								<xsl:value-of select="rez_fontu"/>
							</td>
							<td>
								<xsl:value-of select="podtrzeni_textu"/>
							</td>
							<td>
								<xsl:value-of select="zarovnani_textu"/>
							</td>
							<td>
								<xsl:value-of select="odsazeni_textu"/>
							</td>
							<td>
								<xsl:value-of select="radkovani"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Nastavení tabulek</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>jméno tabulky</th>
						<th>počet řádků tabulky</th>
						<th>počet sloupců tabulky</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/priloha/tabulka">
						<tr>
							<td>
								<xsl:value-of select="@jmeno_tabulky"/>
							</td>
							<td>
								<xsl:value-of select="@radek"/>
							</td>
							<td>
								<xsl:value-of select="@sloupec"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Nastavení obrázků</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>jméno obrázku</th>
						<th>zdroj obrázku</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/priloha/obrazek">
						<tr>
							<td>
								<xsl:value-of select="@jmeno_obrazku"/>
							</td>
							<td>
								<xsl:value-of select="cesta"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Nastavení ohraničení</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>ohraničení zleva</th>
						<th>ohraničení zprava</th>
						<th>ohraničení shora</th>
						<th>ohraničení zdola</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/ohraniceni">
						<tr>
							<td>
								<xsl:value-of select="zleva"/>
							</td>
							<td>
								<xsl:value-of select="zprava"/>
							</td>
							<td>
								<xsl:value-of select="shora"/>
							</td>
							<td>
								<xsl:value-of select="zdola"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Vlastní ohraničení</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>název ohraničení</th>
						<th>ohraničení zleva</th>
						<th>ohraničení zprava</th>
						<th>ohraničení shora</th>
						<th>ohraničení zdolau</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/vlastni_ohraniceni">
						<tr>
							<td>
								<xsl:value-of select="@jmeno_ohraniceni"/>
							</td>
							<td>
								<xsl:value-of select="zleva"/>
							</td>
							<td>
								<xsl:value-of select="zprava"/>
							</td>
							<td>
								<xsl:value-of select="shora"/>
							</td>
							<td>
								<xsl:value-of select="zdola"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Ostatní nastavení</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>číslování stránek (zapnuto/vypnuto)</th>
						<th>pozice číslování stránek</th>
					</tr>
					<xsl:for-each select="konfigurace_textoveho_editoru/cislovani_stranek">
						<tr>
							<td>
								<xsl:choose>
									<xsl:when test="stav = '1'">zapnuto</xsl:when>
									<xsl:otherwise>vypnuto</xsl:otherwise>
								</xsl:choose>
							</td>
							<td>
								<xsl:value-of select="pozice"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>