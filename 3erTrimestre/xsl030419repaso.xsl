<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Listas</title>
            </head>
            <body>
               Nombres de alumnos:
               <!-- esto es quivalente a xsl:element -->
               <!-- ul -->
               <xsl:element name="ul">
                    <xsl:apply-templates/>
               </xsl:element>
               <!-- /ul -->
            </body>
        </html>
    </xsl:template>
    <xsl:template match="/notas/alumno">
    <!-- <xsl:template match="//alumno"> -->
        <li><xsl:value-of select="./nombre"/></li>
        <xsl:element name="{.}">Este texto se repite con cada alumno encontrado<br/></xsl:element>      
    </xsl:template>
</xsl:stylesheet>
