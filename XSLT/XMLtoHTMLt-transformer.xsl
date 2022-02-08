<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Reading View</title>
                <link href="scriptDisplay.css" rel="stylesheet" type="text/css"/>
                <link href="radioHolmes.css" rel="alternate stylesheet" type="text/css"/>
                <script src="showhideToggle.js"></script>
                <link rel="stylesheet" type="text/css" href="menu.css"/>
                <link rel="preconnect" href="https://fonts.gstatic.com"/>
                <link href="https://fonts.googleapis.com/css2?family=Cinzel&amp;mp;display=swap" rel="stylesheet"/>
            </head>
            <body>
                <section id="scriptflex"><section id="sideflex"><div id="side">
                    <div><input type="checkbox" id="radioToggle" name="nonstory"/>
                        <label data-for="nonstory" id="nonstory"> Hide Radio Portion </label></div>
                    <div><input type="checkbox" id="mentionToggle" name="mention"/>
                        <label data-for="mention" id="mention"> Show Mentions of Main Characters </label></div>
                </div></section>
                    <div id="main">
                        <h3> A Scandal in Bohemia</h3>
            <xsl:apply-templates select=".//ln"/>
                    </div>
                </section>
            </body> 
        </html>
        
    </xsl:template>
    
    <xsl:template match="ln">
        <div>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="lineGp">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="line">
        <span class="lineGp">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="speaker">
        <xsl:analyze-string select="." regex="ANNOUNCER">
            <xsl:matching-substring>
                <span class="nonstory">
                    <xsl:value-of select="."/>
                </span>
            </xsl:matching-substring>
        <xsl:non-matching-substring>
            <span class="speaker">
                <xsl:value-of select="."/>
        </span>
        </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <xsl:template match="mention">
        <span class="mention">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="stageDirect">
        <span class="stageDirect toggle">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="music">
        <p>
            <span class="music toggle">
                <xsl:apply-templates/>
            </span>
        </p>
    </xsl:template>
    <xsl:template match="sound">
            <span class="sound toggle">
                <xsl:apply-templates/>
            </span>
    </xsl:template>
    
    <xsl:template match="ln[@*]">
        <xsl:choose>
            <xsl:when test="@change">
                <xsl:choose>
                <xsl:when test="@type"><div class="{@change}" data-type="{@type}">
                    <xsl:apply-templates select="node()"/>
                </div></xsl:when>
                    <xsl:otherwise>
                        <div data-pull="{@pull}" class="{@change}">
                            <xsl:apply-templates select="node()"/>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <div data-pull="{@pull}"><xsl:apply-templates select="node()"/></div>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
</xsl:stylesheet>