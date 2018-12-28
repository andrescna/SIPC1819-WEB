<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
<xsl:template match="/">
<HTML>
<BODY>
  <TABLE>
<B>Juegos de 2019</B>
<BR/>
<BR/>

<xsl:for-each select="TIENDA/JUEGO">
<xsl:sort order="ascending" select="PRECIO"/>
<img  class="flex-container col-md-3 col-sm-3 col-xs-3" src="{IMAGEN}"/>
<TR>
<TD><B>
<xsl:value-of select="NOMBRE"/>
</B>
el precio es:
<B>
<xsl:value-of select="PRECIO"/>
</B>
,Valido para :
<B>
<xsl:value-of select="PLATAFORMAS"/>
</B>
</TD>
<TD>
  .La categoria a la que pertenece es :
  <B>
<xsl:value-of select="ESTILO"/>
</B>
  </TD>
<BR/>
</TR>

</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
