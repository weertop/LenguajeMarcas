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
              <xsl:for-each select="//alumno/nombre">
              <xsl:sort select="."/>
                <xsl:choose>
                    <!-- el . indica que donde estas debe buscar Carlos -->
                    <xsl:when test=".='Carlos'">
                        <br/>he encontrado a: <xsl:value-of select="../apellido"/>
                    </xsl:when>
                    <xsl:when test=".='Sandra'">
                        <br/>he encontrado a: <xsl:value-of select="."/>
                    </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
