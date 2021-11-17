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
                <title>A Scandal in Bohemia</title>
            </head>
            <body>
            <xsl:apply-templates select=".//ln"/>
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
                <span class="announcer">
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
        <span class="stageDirect">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="music">
        <p>
            <span class="music">
                <xsl:apply-templates/>
            </span>
        </p>
    </xsl:template>
    <xsl:template match="sound">
            <span class="sound">
                <xsl:apply-templates/>
            </span>
        
    </xsl:template>
</xsl:stylesheet>