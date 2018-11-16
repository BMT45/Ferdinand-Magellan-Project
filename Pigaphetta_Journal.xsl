<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match='/'>
        <html>
            <head>
                <title>Pigahetta Journal</title>
                <link rel="stylesheet" type="text/css" href="Pigaphetta_Journal.css"/>
            </head>
            <body>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match='heading'>
        <heading><xsl:apply-templates></xsl:apply-templates></heading>
    </xsl:template>
    <xsl:template match="geo[@select='lat']">
        <geo select='lat'><xsl:apply-templates></xsl:apply-templates></geo>
    </xsl:template>
    <xsl:template match="geo[@select='lon']">
        <geo select='lon'><xsl:apply-templates></xsl:apply-templates></geo>
    </xsl:template>
    <xsl:template match='persName'>
        <persName><xsl:apply-templates></xsl:apply-templates></persName>
    </xsl:template>
    <xsl:template match='placeName'>
<placeName>        <xsl:apply-templates></xsl:apply-templates></placeName>
    </xsl:template>
    <xsl:template match='rank'>
       <rank> <xsl:apply-templates></xsl:apply-templates></rank>
    </xsl:template>
    <xsl:template match='author'>
        <author><xsl:apply-templates></xsl:apply-templates></author>
    </xsl:template>
    <xsl:template match='p'>
        <p n='{count(preceding::p) + 1}'><xsl:apply-templates></xsl:apply-templates></p>
    </xsl:template>
    <xsl:template match='ethnicGroup'>
        <ethnicGroup><xsl:apply-templates></xsl:apply-templates></ethnicGroup>
    </xsl:template>
    <xsl:template match='ethnicity'>
        <ethnicity><xsl:apply-templates></xsl:apply-templates></ethnicity>
    </xsl:template>
    <xsl:template match='book'>
       <h2><book><xsl:apply-templates></xsl:apply-templates></book></h2>
    </xsl:template>
    <xsl:template match='chapter'>
        <h3><chap><xsl:apply-templates></xsl:apply-templates></chap></h3>
    </xsl:template>
</xsl:stylesheet>