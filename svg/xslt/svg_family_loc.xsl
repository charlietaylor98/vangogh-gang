<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- Variables -->
    <xsl:variable name="bar_height" as="xs:double" select="18"/>
    <xsl:variable name="spacing" as="xs:double" select="$bar_height div 2"/>
    <xsl:variable name="max_height" as="xs:double"
        select="($bar_height + $spacing) * count(//location) + 9"/>
    <xsl:variable name="half_width" as="xs:double" select="300"/>
    <xsl:variable name="max_width" as="xs:double" select="$half_width * 2"/>
    <xsl:variable name="xscale" as="xs:double" select="5"/>
    <!-- Maybe you'll want a yscale -->
    
    <!--Axes-->
    <xsl:template match="/">
        <svg height="{$max_height + 200}" width="{$max_width + 250}">
            <g transform="translate({$half_width + 50}, 100)">
                <line x1="-{$half_width}" x2="{$half_width}" y1="0" y2="0" stroke="black"/>
                <line x1="0" x2="0" y1="0" y2="{$max_height}" stroke="black"/>
                
                <!-- Axis labels -->
                <text x="{$half_width div 2}" y="-50" font-size="16" text-anchor="middle"
                    font-weight="300">
                    <xsl:text>Count: "Un-Stressed"</xsl:text>
                </text>
                <text x="-{$half_width div 2}" y="-50" font-size="16" text-anchor="middle"
                    font-weight="300">
                    <xsl:text>Count: "Stressed"</xsl:text>
                </text>
                <text x="0" y="{$max_height + 50}" font-size="18" text-anchor="middle"
                    font-weight="300">
                    <xsl:text>Mentions of Family by Location: "Stessed" vs. "Un-Stressed"</xsl:text>
                </text>
                
                <!-- Ruling Lines and number labels -->
                <xsl:for-each select="0 to 5">
                    <xsl:variable name="pos" as="xs:double" select=". * ($half_width div 5)"/>
                    <text y="-20" x="{$pos}" font-size="13" text-anchor="middle">
                        <xsl:value-of select="$pos div $xscale"/>
                    </text>
                    <line y1="-15" y2="0" x1="{$pos}" x2="{$pos}" stroke="black"/>
                    <line y1="0" y2="{$max_height}" x1="{$pos}" x2="{$pos}" stroke="black"
                        opacity=".5"/>
                </xsl:for-each>
                <xsl:for-each select="-5 to -1">
                    <xsl:variable name="pos" as="xs:double" select=". * ($half_width div 5)"/>
                    <text y="-20" x="{$pos}" font-size="13" text-anchor="middle">
                        <xsl:value-of select="(-$pos) div $xscale"/>
                    </text>
                    <line y1="-15" y2="0" x1="{$pos}" x2="{$pos}" stroke="black"/>
                    <line y1="0" y2="{$max_height}" x1="{$pos}" x2="{$pos}" stroke="black"
                        opacity=".5"/>
                    
                    <!-- generate bars-->
                </xsl:for-each>
                <xsl:apply-templates select="letters/location" mode="unstress"/>
                <xsl:apply-templates select="letters/location" mode="stress"/>
            </g>
        </svg>
    </xsl:template>
    <xsl:template match="location" mode="unstress">
        <xsl:variable name="length" as="xs:double"
            select="sum(descendant::unstress[@reason = 'family']/count(.))"/>
        <xsl:variable name="ypos" as="xs:double"
            select="$spacing + (position() - 1) * ($bar_height + $spacing)"/>
        <xsl:for-each select=".">
            <line x1="-{$half_width}" x2="{$half_width}" y1="{$ypos + $spacing}" y2="{$ypos + $spacing}" stroke="black"
                opacity=".5" stroke-dasharray="5,5"/>
            <rect x="0" width="{$length * $xscale}" y="{$ypos}" height="{$bar_height}"
                fill="#88c5db" stroke-width="1" stroke="black"/>
            <text x="{$half_width + 15}" y="{$ypos + $spacing + 3}" text-anchor="start" font-size="12">
                <xsl:value-of select="@id/translate(., '_', ' ')"/>
            </text>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="location" mode="stress">
        <xsl:variable name="length" as="xs:double"
            select="sum(descendant::stress[@reason = 'family']/count(.))"/>
        <xsl:variable name="ypos" as="xs:double"
            select="$spacing + (position() - 1) * ($bar_height + $spacing)"/>
        <xsl:for-each select=".">
            <rect x="-{$length * $xscale}" width="{$length * $xscale}" y="{$ypos}"
                height="{$bar_height}" fill="#f0d946" stroke-width="1" stroke="black"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>