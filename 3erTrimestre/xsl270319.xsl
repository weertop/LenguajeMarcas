<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <tittle>mipaginaweb</tittle>
            </head>
            <body>
                <table align="center" border="2" style="background-color:yellow">
                    <tr>
                        <th colspan="3">Alumno</th>
                        <th colspan="3">Notas</th>
                    </tr>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Matricula</th>
                        <th>Teoria</th>
                        <th>Practica</th>
                        <th>Final</th>
                    </tr>
                    <!-- lo haecmos con 2 templates -->
                    <xsl:apply-templates select="//alumno[@convocatoria = 'Jun']"/>
                    <!--<xsl:for-each select="//alumno[@convocatoria = 'Jun']"/>-->
                </table>
            </body>
        </html>
    </xsl:template>
<xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellido"/></td>
            <td><xsl:value-of select="num-matricula"/></td>
            <td><xsl:value-of select="nota-teoria"/></td>
            <td><xsl:value-of select="nota-practica"/></td>
            <td><xsl:value-of select="nota-final"/></td>
        </tr>
</xsl:template>> 
</xsl:stylesheet>