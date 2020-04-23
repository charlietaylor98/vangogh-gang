<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>

    <!-- Variables -->
    <xsl:variable name="bar_height" as="xs:double" select="18"/>
    <xsl:variable name="spacing" as="xs:double" select="$bar_height div 2"/>
    <xsl:variable name="max_height" as="xs:double"
        select="($bar_height + $spacing) * count(//year) + 9"/>
    <xsl:variable name="max_width" as="xs:double" select="800"/>
    <xsl:variable name="xscale" as="xs:double" select="5"/>
    <!-- Maybe you'll want a yscale -->

    <!--Axes-->
    <xsl:template match="/">
        <svg height="{$max_height + 200}" width="{$max_width + 200}">
            <g transform="translate(50, 100)">
                <line x1="0" x2="{$max_width}" y1="0" y2="0" stroke="black"/>
                <line x1="0" x2="0" y1="0" y2="{$max_height}" stroke="black"/>

                <!-- Axis labels -->
                <text x="{$max_width div 2}" y="-50" font-size="16" text-anchor="middle"
                    font-weight="300">
                    <xsl:text>Count</xsl:text>
                </text>
                <text x="{$max_width div 2}" y="{$max_height + 50}" font-size="18"
                    text-anchor="middle" font-weight="300">
                    <xsl:text>Mentions of Artistic Production by Year</xsl:text>
                </text>

                <!-- Ruling Lines and number labels -->
                <xsl:for-each select="0 to 5">
                    <xsl:variable name="pos" as="xs:double" select=". * ($max_width div 5)"/>
                    <text y="-20" x="{$pos}" font-size="13" text-anchor="middle">
                        <xsl:value-of select="$pos div $xscale"/>
                    </text>
                    <line y1="-15" y2="0" x1="{$pos}" x2="{$pos}" stroke="black"/>
                    <line y1="0" y2="{$max_height}" x1="{$pos}" x2="{$pos}" stroke="black"
                        opacity=".5"/>
                </xsl:for-each>
                <!-- generate lines n points-->

                <xsl:apply-templates select="letters/year" mode="work"/>

            </g>
        </svg>
    </xsl:template>
    <xsl:template match="year" mode="work">
        <xsl:variable name="length" as="xs:double" select="sum(descendant::work/count(.))"/>
        <xsl:variable name="previouslength" as="xs:double"
            select="sum(preceding-sibling::year[1]/descendant::work/count(.))"/>
        <xsl:variable name="ypos" as="xs:double"
            select="$bar_height + (position() - 1) * ($bar_height + $spacing)"/>
        <xsl:variable name="previousypos" as="xs:double"
            select="$bar_height + (position() - 2) * ($bar_height + $spacing)"/>
        <xsl:if test="@id != '1872'">
            <xsl:for-each select=".">
                <circle cx="{$length * $xscale}" cy="{$ypos}" r="3" fill="#fc5a03"/>
                <line x1="{$previouslength * $xscale}" x2="{$length * $xscale}" y1="{$previousypos}"
                    y2="{$ypos}" stroke="#fc5a03" stroke-width="2"/>
            </xsl:for-each>
        </xsl:if>
        <xsl:if test="@id = '1872'">
            <circle cx="{$length * $xscale}" cy="{$ypos}" r="3" fill="#fc5a03"/>
        </xsl:if>
        <xsl:for-each select=".">
            <text x="{$max_width + 25}" y="{$ypos + $spacing}" text-anchor="middle" font-size="12">
                <xsl:value-of select="@id"/>
            </text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
