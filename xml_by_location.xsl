<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <letters>
        <!-- Match locations -->
        <location id="The_Hague">
            <letter>
                <xsl:apply-templates select="//letter" mode="Hague"/>
            </letter>
        </location>
        <location id="London">
            <letter>
                <xsl:apply-templates select="//letter" mode="London"/>
            </letter>
        </location>
        <location id="Helvoirt">
            <letter>
                <xsl:apply-templates select="//letter" mode="Helvoirt"/>
            </letter>
        </location>
        <location id="Paris">
            <letter>
                <xsl:apply-templates select="//letter" mode="Paris"/>
            </letter>
        </location>
        <location id="Ramsgate">
            <letter>
                <xsl:apply-templates select="//letter" mode="Ramsgate"/>
            </letter>
        </location>
        <location id="Welwyn">
            <letter>
                <xsl:apply-templates select="//letter" mode="Welwyn"/>
            </letter>
        </location>
        <location id="Holme_Court">
            <letter>
                <xsl:apply-templates select="//letter" mode="Holme_Court"/>
            </letter>
        </location>
        <location id="Isleworth">
            <letter>
                <xsl:apply-templates select="//letter" mode="Isleworth"/>
            </letter>
        </location>
        <location id="Etten">
            <letter>
                <xsl:apply-templates select="//letter" mode="Etten"/>
            </letter>
        </location>
        <location id="Dordrecht">
            <letter>
                <xsl:apply-templates select="//letter" mode="Dordrecht"/>
            </letter>
        </location>
        <location id="Amsterdam">
            <letter>
                <xsl:apply-templates select="//letter" mode="Amsterdam"/>
            </letter>
        </location>
        <location id="Laken">
            <letter>
                <xsl:apply-templates select="//letter" mode="Laken"/>
            </letter>
        </location>
        <location id="Wasmes">
            <letter>
                <xsl:apply-templates select="//letter" mode="Wasmes"/>
            </letter>
        </location>
        <location id="Petit-Wasmes">
            <letter>
                <xsl:apply-templates select="//letter" mode="Peit-Wasmes"/>
            </letter>
        </location>
        <location id="Cuesmes">
            <letter>
                <xsl:apply-templates select="//letter" mode="Cuesmes"/>
            </letter>
        </location>
        <location id="Brussels">
            <letter>
                <xsl:apply-templates select="//letter" mode="Brussels"/>
            </letter>
        </location>
        <location id="Hoogeveen">
            <letter>
                <xsl:apply-templates select="//letter" mode="Hoogeveen"/>
            </letter>
        </location>
        <location id="Nieuw-Amsterdam">
            <letter>
                <xsl:apply-templates select="//letter" mode="Nieuw-Amsterdam"/>
            </letter>
        </location>
        <location id="Nuenen">
            <letter>
                <xsl:apply-templates select="//letter" mode="Nuenen"/>
            </letter>
        </location>
        <location id="Antwerp">
            <letter>
                <xsl:apply-templates select="//letter" mode="Antwerp"/>
            </letter>
        </location>
        <location id="Arles">
            <letter>
                <xsl:apply-templates select="//letter" mode="Arles"/>
            </letter>
        </location>
        <location id="Saint-Rémy-de-Provence">
            <letter>
                <xsl:apply-templates select="//letter" mode="Saint-Rémy-de-Provence"/>
            </letter>
        </location>
        <location id="Auvers-sur-Oise">
            <letter>
                <xsl:apply-templates select="//letter" mode="Auvers-sur-Oise"/>
            </letter>
        </location>
        </letters>
    </xsl:template>
    
    <!-- Location templates -->
    <xsl:template match="letter" mode="Hague">
        <xsl:if test=".//location[contains(., 'Hague')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="London">
        <xsl:if test=".//location[contains(., 'London')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Helvoirt">
        <xsl:if test=".//location[contains(., 'Helvoirt')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Paris">
        <xsl:if test=".//location[contains(., 'Paris')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Ramsgate">
        <xsl:if test=".//location[contains(., 'Ramsgate')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Welwyn">
        <xsl:if test=".//location[contains(., 'Welwyn')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Holme_Court">
        <xsl:if test=".//location[contains(., 'Holme Court')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Isleworth">
        <xsl:if test=".//location[contains(., 'Isleworth')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Etten">
        <xsl:if test=".//location[contains(., 'Etten')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Dordrecht">
        <xsl:if test=".//location[contains(., 'Dordrecht')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Amsterdam">
        <xsl:if test=".//location[. = 'Amsterdam']">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Laken">
        <xsl:if test=".//location[contains(., 'Laken')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Wasmes">
        <xsl:if test=".//location[contains(., 'Wasmes')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Petit-Wasmes">
        <xsl:if test=".//location[contains(., 'Petit-Wasmes')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Cuesmes">
        <xsl:if test=".//location[contains(., 'Cuesmes')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Brussels">
        <xsl:if test=".//location[contains(., 'Bru')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Hoogeveen">
        <xsl:if test=".//location[contains(., 'Hoogeveen')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Nieuw-Amsterdam">
        <xsl:if test=".//location[contains(., 'Nieuw-Amsterdam')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Nuenen">
        <xsl:if test=".//location[contains(., 'Nuenen')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Antwerp">
        <xsl:if test=".//location[contains(., 'Antwerp')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Arles">
        <xsl:if test=".//location[contains(., 'Arles')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Saint-Rémy-de-Provence">
        <xsl:if test=".//location[contains(., 'Saint-Rémy-de-Provence')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    <xsl:template match="letter" mode="Auvers-sur-Oise">
        <xsl:if test=".//location[contains(., 'Auvers-sur-Oise')]">
            <body>
                <xsl:apply-templates select="body"/>
            </body>
            <ps>
                <xsl:apply-templates select="ps"/>
            </ps>
        </xsl:if>
    </xsl:template>
    
    <!-- For everything -->
    <xsl:template match="body | ps">
        <p>
            <xsl:apply-templates select="p"/>
        </p>
    </xsl:template>
    <xsl:template match="stress">
        <stress reason="{@reason}">
            <xsl:apply-templates/>
        </stress>
    </xsl:template>
    <xsl:template match="unstress">
        <unstress reason="{@reason}">
            <xsl:apply-templates/>
        </unstress>
    </xsl:template>
    <xsl:template match="good_health">
        <good_health>
            <xsl:apply-templates/>
        </good_health>
    </xsl:template>
    <xsl:template match="bad_health">
        <bad_health><xsl:apply-templates/></bad_health>
    </xsl:template>
    <xsl:template match="work">
        <xsl:if test="./@origin">
        <work origin="{@origin}" stage="{@stage}">
            <xsl:apply-templates/>
        </work></xsl:if>
        <xsl:if test="./@mention">
            <work mention="{@mention}">
                <xsl:apply-templates/>
            </work></xsl:if>
    </xsl:template>
</xsl:stylesheet>
