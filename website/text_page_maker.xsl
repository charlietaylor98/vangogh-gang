<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>

    <xsl:template match="/">

        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Text</title>
                <link rel="stylesheet" type="text/css" href="vangogh.css"/>
                <link rel="stylesheet" type="text/css" href="text.css"/>
            </head>

            <body>
                <xsl:apply-templates select="//year" mode="toc"/>
                <xsl:apply-templates/>
            </body>

        </html>

    </xsl:template>

    <xsl:template match="year" mode="toc">
        <button type="button">
            <a href="{@id}">
                <xsl:apply-templates select="@id"/>
            </a>
        </button>

    </xsl:template>

    <xsl:template match="year">
        <h2>
            <xsl:apply-templates select="@id"/>
        </h2>
        <xsl:apply-templates select="letter"/>
    </xsl:template>

    <xsl:template match="letter">
        <div class="letter">
            <div>
                <xsl:apply-templates/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="head|salutation|p|close|sig">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match = "stress">
        <span>
            <xsl:attribute name="class">
                <xsl:text>stress </xsl:text>
                <xsl:apply-templates select="@reason"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "unstress">
        <span>
            <xsl:attribute name="class">
                <xsl:text>unstress </xsl:text>
                <xsl:apply-templates select="@reason"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "good_health">
        <span>
            <xsl:attribute name="class">
                <xsl:text>good_health</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "bad_health">
        <span>
            <xsl:attribute name="class">
                <xsl:text>bad_health</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "work">
        <span>
            <xsl:attribute name="class">
                <xsl:text>work</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

   


</xsl:stylesheet>
