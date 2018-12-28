<?xml version='1.0' ?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                <xsl:template match="/">
                 <HTML>
                  <BODY>
                   <B> VIDEOJUEGOS</B>
                   <BR/>
                   <BR/>
                   <TABLE>
                    <xsl:for-each  select="DATABASE/VIDEOGAME">
                    <xsl:sort order="ascending"
                        select="NAME"/>
                     <TR>
                      <TD><xsl:value-of select="APELLIDOS"/>,
                        <xsl:value-of select="NAME"/></TD>
                      <TD><B><xsl:value-of
                        select="PRICE"/></B></TD>
                      <BR></BR>
                     </TR>
                    </xsl:for-each>
                   </TABLE>
                  </BODY>
                 </HTML>
                </xsl:template>
               </xsl:stylesheet>