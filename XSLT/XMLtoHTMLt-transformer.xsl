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
                <em class="announcer">
                    <xsl:value-of select="."/>
                </em>
            </xsl:matching-substring>
        <xsl:non-matching-substring>
            <em class="speaker">
                <xsl:value-of select="."/>
        </em>
        </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <xsl:template match="mention">
        <em class="mention">
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="stageDirect">
        <em class="stageDirect">
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="music">
        <p>
            <em class="music">
                <xsl:apply-templates/>
            </em>
        </p>
    </xsl:template>
    <xsl:template match="sound">
            <em class="sound">
                <xsl:apply-templates/>
            </em>
        
    </xsl:template>
</xsl:stylesheet>