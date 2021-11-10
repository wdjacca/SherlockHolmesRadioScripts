<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
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
                <emph class="announcer">
                    <xsl:value-of select="."/>
                </emph>
            </xsl:matching-substring>
        <xsl:non-matching-substring>
            <emph class="speaker">
                <xsl:value-of select="."/>
        </emph>
        </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <xsl:template match="mention">
        <emph class="mention">
            <xsl:apply-templates/>
        </emph>
    </xsl:template>
    
    <xsl:template match="stageDirect">
        <emph class="stageDirect">
            <xsl:apply-templates/>
        </emph>
    </xsl:template>
    
    <xsl:template match="music">
        <p>
            <emph class="music">
                <xsl:apply-templates/>
            </emph>
        </p>
    </xsl:template>
    <xsl:template match="sound">
            <emph class="sound">
                <xsl:apply-templates/>
            </emph>
        
    </xsl:template>
</xsl:stylesheet>