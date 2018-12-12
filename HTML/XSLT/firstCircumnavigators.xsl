<!-- Rachel -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:template match='/'>
            <body>
                <div id='main'>
                    <xsl:apply-templates select='//magellan'/>
                </div>
            </body>
    </xsl:template>
    <xsl:template match='heading'>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match='p'>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match='persName'>
        <span class='persName'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='ref'>
        <sup><span class='ref'><xsl:apply-templates/></span></sup>
    </xsl:template>
    <xsl:template match='placeName'>
        <span class='placeName'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='rank'>
        <span class='rank'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='name'>
        <span class='name'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='term'>
        <span class='term'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='lb'>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match="ethnicGroup">
        <span class='ethnicGroup'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="date">
        <span class="date"><xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>