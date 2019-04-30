<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="//alumno"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="alumno">
        <table align="center" border="2" style="background-color:yellow;">
            <tr>
                <th>Numero matricula</th>
                <th>Nota final</th>
            </tr>
            <tr>
                <td><xsl:value-of select="num-matricula"/></td>
                <td>
                    <xsl:choose>
                        <xsl:when test=".[nota-final >= '9.0']">Sobresaliente</xsl:when>
                        <xsl:when test=".[nota-final >= '7.0']">Notable</xsl:when>
                        <xsl:when test=".[nota-final >= 5.0]">Aprobado</xsl:when>
                        <xsl:otherwise>Suspenso</xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
        </table>
    </xsl:template>
</xsl:stylesheet>