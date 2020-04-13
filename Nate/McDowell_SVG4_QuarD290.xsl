<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg"
    version="3.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="barWidth" select="20" as="xs:integer"/>
    <xsl:variable name="interbarSpacing" select="($barWidth*1.5)" as="xs:double"/>
    <xsl:variable name="barInterval" select="$barWidth + $interbarSpacing" as="xs:double"/>
    
    
        <xsl:template match = "/">
            <svg>
                <line x1="20" y1="200" x2="275" y2="200" stroke="black" stroke-width="2" stroke-linecap="square"/><!--x-->
                <line x1="20" y1="200" x2="20" y2="0" stroke="black" stroke-width="2" stroke-linecap="square"/><!--y-->
                <xsl:apply-templates select="//p"></xsl:apply-templates>
            </svg>
        </xsl:template>
            <xsl:template match="//p">
                <xsl:variable name="barScale" select ="5"/>
                <xsl:variable name="uFam" select="count(//unstress[@reason='family'])" as="xs:integer"/>
                <xsl:variable name="uEnv" select="count(//unstress[@reason='environment'])" as="xs:integer"/>
                <xsl:variable name="uCar" select="count(//unstress[@reason='career'])" as="xs:integer"/>
                <xsl:variable name="uFri" select="count(//unstress[@reason='friendship'])" as="xs:integer"/>
                <xsl:variable name="uLove" select="count(//unstress[@reason='love'])" as="xs:integer"/>
                <xsl:variable name="total" select="count(//unstress)" as="xs:integer"/>
                <!--<rect x="30" y="169" width="{$barWidth}" height="{$uFam}*{$barScale}" fill="blue"/>-->
                <rect x="{$interbarSpacing+$barWidth}" y="{200-($uFam*$barScale)}" width="{$barWidth}" height="{$uFam*$barScale}" fill="blue"/>
                <rect x="{($interbarSpacing*2)+($barWidth*2)}" y="{200-($uEnv*$barScale)}" width="{$barWidth}" height="{$uEnv*$barScale}" fill="blue"/>
                <rect x="{($interbarSpacing*3)+($barWidth*3)}" y="{200-($uCar*$barScale)}" width="{$barWidth}" height="{$uCar*$barScale}" fill="blue"/>
                <rect x="{($interbarSpacing*4)+($barWidth*4)}" y="{200-($uFri*$barScale)}" width="{$barWidth}" height="{$uFri*$barScale}" fill="blue"/>
                <rect x="{($interbarSpacing*5)+($barWidth*5)}" y="{200-($uLove*$barScale)}" width="{$barWidth}" height="{$uLove*$barScale}" fill="blue"/>
                <text x="{$interbarSpacing+$barWidth}" y="210" font-size="8" text-anchor="center">Family</text>
                <text x="{($interbarSpacing*2)+($barWidth*2)}" y="210" font-size="8" text-anchor="center">Environment</text>
                <text x="{($interbarSpacing*3)+($barWidth*3)}" y="210" font-size="8" text-anchor="center">Career</text>
                <text x="{($interbarSpacing*4)+($barWidth*4)}" y="210" font-size="8" text-anchor="center">Friendship</text>
                <text x="{($interbarSpacing*5)+($barWidth*5)}" y="210" font-size="8" text-anchor="center">Love</text>
                <text x="17" y="10" font-size="8" text-anchor="end">50</text>
                <text x="17" y="100" font-size="8" text-anchor="end">25</text>
                <text x="17" y="200" font-size="8" text-anchor="end">0</text>
                <text x="120" y="225" font-size="10" text-anchor="center">Type of Unstress</text>
                <text x="3" y="80" text-anchor="center">#</text>
                
                <!--<rect x="{$interbarSpacing+$barWidth}" y="(200-{$uFam})" width="{$barWidth}" height="{$uFam}" fill="blue"/>
                <rect x="{($interbarSpacing*2)+($barWidth*2)}" y="(200-{$uEnv})" width="{$barWidth}" height="{$uEnv}" fill="blue"/>
                <rect x="{($interbarSpacing*3)+($barWidth*3)}" y="(200-{$uCar})" width="{$barWidth}" height="{$uCar}" fill="blue"/>-->
                
            </xsl:template>
      
</xsl:stylesheet>