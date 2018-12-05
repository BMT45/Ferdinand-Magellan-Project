<!-- Brad -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:template match='/'>
        <html>
            <head><title>Treatise of Navigation of the Chevalier Antony Pigafetta</title>
                <link rel="stylesheet" type="text/css" href="Thomas_11_09.css"/>
            </head>
            <body>

                <div id='main'>
                    <xsl:apply-templates select='//magellan'/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match='heading'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='//p'>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match='persName'>
        <span class='persName'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='ref'>
        <sup><span class='ref'><xsl:apply-templates/></span></sup>
    </xsl:template>
</xsl:stylesheet>
