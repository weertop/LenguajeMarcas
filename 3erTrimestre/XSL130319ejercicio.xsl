<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match='/'>
        <html>
            <head>
                <title>Mi pagina XSL</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Model</th>
                        <th>Matricula</th>
                    </tr>
                     <xsl:for-each select="/concesionario/coche">
                    <tr>
                            <td><xsl:value-of select="./marca"/></td>
                            <td><xsl:value-of select="./modelo"/></td>
                            <td><xsl:value-of select="./matricula"/></td>
                    </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>