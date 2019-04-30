<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match='/'>
        <html>
            <head>
                <title>Mi pagina XSL</title>
            </head>
            <body>
            <!-- ahora sin plantilla solo en el body -->
               <xsl:for-each select="/concesionario/coche">
                <h2>Marca: <xsl:value-of select="./marca"/></h2><br/>
                <h2>Modelo: <xsl:value-of select="./modelo"/></h2><br/>
                <h2>Matricula: <xsl:value-of select="./matricula"/></h2><br/>
            </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>