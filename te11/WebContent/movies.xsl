<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="movies"><!-- 이 태그가 movies로 시작되는 태그가 맞는가 -->
		<xsl:for-each select="movie">
			<ul>
				<li><b><xsl:value-of select="title"/></b></li>
				<li><xsl:value-of select="genre"/></li>
			</ul>
			<hr/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>