<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
            <!-- si trabajamos solo con 1 template se hace con un for each -->
            <xsl:for-each select="//alumno[nota-final=6]">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellido"/></td>
                    <td><xsl:value-of select="num-matricula"/></td>
                    <td><xsl:value-of select="nota-teoria"/></td>
                    <td><xsl:value-of select="nota-practica"/></td>
                    <td><xsl:value-of select="nota-final"/></td>
                </tr>
            </xsl:for-each>

            <!-- no usamos esta busqueda sino que lo hacemos directamente en un template todo-->
            <!-- <xsl:apply-templates select="//alumno[nota-final=6]"/> -->
        </table>
    </body>
</html>
</xsl:template>
<!-- sube arriba y ya no se usa el apply templates sino que lo hacemos directamente
<xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellido"/></td>
            <td><xsl:value-of select="num-matricula"/></td>
            <td><xsl:value-of select="nota-teoria"/></td>
            <td><xsl:value-of select="nota-practica"/></td>
            <td><xsl:value-of select="nota-final"/></td>
        </tr>
</xsl:template>> -->
</xsl:stylesheet>