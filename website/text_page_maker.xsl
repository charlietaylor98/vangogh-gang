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
                <link rel="shorcut icon" type="image/ico" href="favicon.ico"/>
                <script src="text.js"/>
            </head>

            <body>

                <div class="topnav">
                    <a href="index.xhtml">Home</a>
                    <a href="about.xhtml">About</a>
                    <a class="active" href="text.xhtml">Text</a>
                    <a href="topic.xhtml">Topic Modeling</a>
                    <a href="results.xhtml">Results</a>
                    <a href="conclusion.xhtml">Conclusion</a>
                </div>
                <div class="flex">

                    <div class="yearMenu">
                        <p class="chartTitle">Year</p>
                        <xsl:apply-templates select="//year" mode="toc"/>
                    </div>



                    <div class="attributeMenu">
                        <p class="chartTitle">Tag</p>
                        <ul>
                            <li>
                                <input type="checkbox" value="stress"/>
                                <strong>Stress/Bad Health</strong>
                            </li>
                            <li>
                                <input type="checkbox" value="unstress"/>
                                <em>Unstress/Good Health</em>
                            </li>
                            <li style="color:brown;font-weight:bold;"><input type="checkbox" value="work"/>Work</li>
                        </ul>
                        <p class="chartTitle">Attribute</p>
                        <ul>
                            <li style="color:blue"><input type="checkbox"/>Environment</li>
                            <li style = "color:red"><input type="checkbox"/>Career</li>
                            <li style = "color:green"><input type="checkbox"/>Money</li>
                            <li style = "color:purple"><input type="checkbox"/>Family</li>
                            <li style = "color:orange"><input type="checkbox"/>Friendship</li>
                            <li style = "color:magenta"><input type="checkbox"/>Love</li>
                        </ul>
                    </div>

                    <div>
                        <xsl:apply-templates/>
                    </div>

                </div>
            </body>

        </html>

    </xsl:template>

    <xsl:template match="year" mode="toc">

        <a href="#{@id}" class = "button">

            <xsl:apply-templates select="@id"/>

        </a>


    </xsl:template>

    <xsl:template match="year">
        <h2>
            <xsl:attribute name="id">
                <xsl:apply-templates select="@id"/>
            </xsl:attribute>
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

    <xsl:template match="head | salutation | p | close | sig">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="stress">
        <span>
            <xsl:attribute name="class">
                <xsl:text>stress </xsl:text>
                <xsl:apply-templates select="@reason"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="unstress">
        <span>
            <xsl:attribute name="class">
                <xsl:text>unstress </xsl:text>
                <xsl:apply-templates select="@reason"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="good_health">
        <span>
            <xsl:attribute name="class">
                <xsl:text>good_health</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="bad_health">
        <span>
            <xsl:attribute name="class">
                <xsl:text>bad_health</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="work">
        <span>
            <xsl:attribute name="class">
                <xsl:text>work</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>




</xsl:stylesheet>
