<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">

<HTML>
<BODY style="background-color:  rgb(247, 250, 206)">
  <div style="text-align: center;">
        <h1 style="margin-top: 30px; margin-bottom: 20px; font-family: Argentum Sans; color: grey; font-weight: bold; font-size: 35px;">Videojuegos</h1>
        <p class="page-text" style="text-align: left">En nuestra tienda podrás encontrar o reservar los siguientes títulos:</p> 
    </div>

    <xsl:for-each select="TIENDA/JUEGO">
        <xsl:sort order="ascending" select="NOMBRE"/>
        <div style="margin-top: 30px; margin-bottom: 30px; margin-left: 5px; padding-top: 10px; padding-bottom: 10px; padding-left: 10px; background-color: #444">
            <div class="row">
                <div class="flex-container col-md-4 col-sm-5 col-xs-5" style="overflow:hidden" >
                    <img  class="img-responsive" src="{IMAGEN}"/>
                </div>

                <div class="col-md-5 col-sm-4 col-xs-4">
                    <TR>
                        <TD>
                        <B style="color:#ccc; font-size: 24px; margin-top: 15px"><xsl:value-of select="NOMBRE"/></B>
                        </TD>
                  </TR>
                  <TR>
                        <TD>
                        <p style="color:#aaa; font-size: 20px; text-align: left"><xsl:value-of select="PLATAFORMAS"/></p>
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                        <p style="color:#bbb; font-size: 16px; text-align: left; margin-top: -15px"><xsl:value-of select="GENERO"/></p>
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                        <button class="btn my-2 my-sm-0" type="submit"><xsl:value-of select="FECHA_LANZ"/></button>
                        </TD>
                    </TR>   
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <TR>
                        <TD>
                        <b style="color:green; font-size: 26px; text-align: center"><xsl:value-of select="PRECIO"/> €</b>
                        </TD>
                    </TR>
                </div>
            </div>
        </div>
    </xsl:for-each>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
