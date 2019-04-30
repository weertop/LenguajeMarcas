<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match='/'>
        <html>
            <head>
                <title>Mi pagina XSL</title>
            </head>
            <body>
            <!-- instruccion para decirle qe debe leer de la plantilla de abajo -->
                <h1><xsl:apply-templates/></h1>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="concesionario/coche">
        <p>
            <!-- esto funciona como un directorio . es el directorio actual -->
            <xsl:for-each select=".">
                Marca<xsl:value-of select="./marca"/><br/>
                Modelo<xsl:value-of select="./modelo"/><br/>
                Matricula<xsl:value-of select="./matricula"/><br/>
            </xsl:for-each>
        </p>
    </xsl:template>
</xsl:stylesheet>
