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
                <div id='toc'>
                    <h1>Treatise of Navigation of the Chevalier Antony Pigafetta</h1>
                    <h2> Table of Contents</h2>
                    <ul> <xsl:apply-templates select="//subHeading" mode='toc'/></ul>
                </div>
                <div id='main'>
                    <xsl:apply-templates select='//magellan'/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match='subHeading' mode='toc'>
        <ol>
            <li> <a href="#n{/subHeading}">
                <xsl:value-of select='preceding::subHeading'/></a>
            </li>
        </ol>
    </xsl:template>
    <xsl:template match='heading'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='//p'>
        <p n="{count(preceding::p) + 1}"><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match='//references'>
        <references><xsl:apply-templates/></references>
    </xsl:template>
    <xsl:template match='//ref'>
       <ref n="{count(preceding::ref) + 1}"> <xsl:apply-templates/></ref>
    </xsl:template>
    <xsl:template match='subHeading'>
       <h2 id="n{/subHeading}"><subHeading n='{count(preceding::subHeading) + 1}'> <xsl:apply-templates/></subHeading></h2>
    </xsl:template>
    <xsl:template match='q'>
        <q> <xsl:apply-templates/></q>
    </xsl:template>
    <xsl:template match='lb'>
        <lb n='{count(preceding::lb) + 1}'> <xsl:apply-templates/></lb>
    </xsl:template>
    <xsl:template match='map'>
        <map><xsl:apply-templates/></map>
    </xsl:template>
    <xsl:template match='placeName'>
        <placeName><xsl:apply-templates/></placeName>
    </xsl:template>
    <xsl:template match='name'>
        <name> <xsl:apply-templates></xsl:apply-templates></name>
    </xsl:template>
    <xsl:template match='persName'>
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    <xsl:template match='rank'>
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
</xsl:stylesheet>
<!-- I tried to make a table of contents using the subheadings as something to land on and I tried landing on //subHeading but that would give me all the information on one line.  The way I did it, it would put in the list 1 subHeading title, 2 on the second, and 3 on the third and not pick up the 4th subHeading title.  I tried to create the links as well but with my xpath, all the id's would be spit into one id line causing the links to bring the user into another point in the table of contents.