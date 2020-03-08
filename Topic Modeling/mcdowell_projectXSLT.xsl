<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compact"/>
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
            </head>
            <body>
                <xsl:apply-templates select="//body"></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="body">
        <p><xsl:apply-templates select="p/text()"></xsl:apply-templates></p>
    </xsl:template>
    
</xsl:stylesheet>