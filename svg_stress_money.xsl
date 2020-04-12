<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs math" version="3.0"
    xmlns="http://www.w3.org/2000/svg" xmlns:math="http://www.w3.org/2005/xpath-functions/math">
    <xsl:output method="xml" indent="yes"/>
    <!-- setting up variables 
    need to flip things around
    make bar width thinner-->
    <xsl:variable name="bar_width" as="xs:double" select="20"/>
    <xsl:variable name="spacing" as="xs:double" select="$bar_width div 2"/>
    <xsl:variable name="max_height" as="xs:double" select="100"/>
    <xsl:variable name="max_width" as="xs:double" select="($bar_width + $spacing) * 18"/>
    <xsl:variable name="yscale" as="xs:double" select="5"/>
    <xsl:template name="xsl:initial-template">

        <!-- Dimensions -->
        <svg height="{($yscale * $max_height * 2) + 100}" width="{$max_width + 20}">
            <g transform="translate(100, {$yscale * $max_height + 50})">

                <!-- Axes -->
                <line x1="0" x2="0" y1="0" y2="-{$max_height * 2 * $yscale}"/>
                <line x1="0" x2="{$max_width}" y1="-{$max_height * $yscale}" y2="-{$max_height}"/>
                <xsl:for-each select="collection('All_XML')">
                    <xsl:sort/>
                    <xsl:apply-templates select="//unstress[@reason='money']"/>
                    <xsl:apply-templates select="//stress[@reason='money']"/>
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>
