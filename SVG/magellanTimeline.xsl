<?xml version="1.0" encoding="UTF-8"?>
<!-- Justin -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/2000/svg"  
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:template match="/">
        
        <!-- <xsl:sort select="date/@when"/> -->
        <xsl:comment><xsl:value-of select="position()"/>. Filename: <xsl:value-of select="tokenize(base-uri(), '/')[last()]"/>
                Start: <xsl:value-of select="date/@when"/>
         </xsl:comment>
        
        <xsl:variable name="allDates"  select="//date/@when[tokenize(., '-')[last()] ! matches(., '\d{4}')]"/>
        
        <xsl:comment>      List all dates: <xsl:value-of select="string-join($allDates, ', ')"/>
            </xsl:comment>  
        <xsl:variable name="earliest" select="min(for $i in $allDates return tokenize($i, '-')[last()] ! xs:integer(.)) "/> 
        <xsl:variable name="latest" select="max(for $i in $allDates return tokenize($i, '-')[last()]! xs:integer(.))"/>
        <xsl:comment>Earliest date: <xsl:value-of select="$earliest"/>. Latest date: <xsl:value-of select="$latest"/>. Difference between the two:
     <xsl:value-of select="$latest - $earliest"/></xsl:comment>
        <xsl:variable name="spacer" select="100"/>
        <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="{$latest * $spacer - $earliest * $spacer + 500}" viewBox="0 0 500 500">
            
            <g transform="translate(200, 100)">
                <line stroke="cyan" stroke-width="6" x1="0" x2="0" y1="0" y2="{$latest * $spacer - $earliest * $spacer}"/>
                <!--Okay, let's plot the years along the line. -->
                <xsl:for-each select="0 to $latest - $earliest">
                    <circle cx="0" cy="{current() ! xs:integer(.) * $spacer}"  r="6" fill="black"/>
                    <text x="-50" y="{current() ! xs:integer(.) * $spacer}" text-anchor="middle" style="font-family: Arial;
                        font-size  : 20;
                        stroke     : black;
                        fill       : cyan;
                        "><xsl:value-of select="$earliest + position() -1"/></text>
                </xsl:for-each>
                <g>
                        <xsl:variable name="para" select="p"/>
                        <xsl:variable name="year" select="date"/>
                        <circle cx="{150 + position()*50}" cy="{$para}" r="6" fill="black"/> 
                        <line x1="0" x2="{150 + position()*50}" y1="{$para}" y2="{$year}" stroke="black" stroke-width="1.5"/> 
                        <text x="{375 + position()*50}" y="{$para}" text-anchor="middle" style="font-family: Arial;
                            font-size  : 20;
                            stroke     : black;
                            fill       : cyan;"/>
                </g>    
            </g>
            
        </svg>        
    </xsl:template>
</xsl:stylesheet>
