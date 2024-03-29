<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="p">
        <xsl:choose>
            <xsl:when test="child::*[1][self::speaker]" ><p lncount="{count(preceding::p) + 1}">
                <xsl:apply-templates/></p></xsl:when>
            <xsl:otherwise><p><xsl:apply-templates/></p></xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
</xsl:stylesheet>