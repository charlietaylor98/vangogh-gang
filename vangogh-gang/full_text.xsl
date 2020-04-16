<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template name="xsl:initial-template">
        <letters>
            <xsl:for-each select="collection('All_XML')">
                <xsl:sort select="base-uri()"/>
                <xsl:copy-of select="letter"/>
            </xsl:for-each>
        </letters>
    </xsl:template>
</xsl:stylesheet>
