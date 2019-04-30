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

            <!-- esto nos muestra las notas de un alumno que tenga 6 como nota final-->
            <!-- <xsl:apply-templates select="/notas/alumno[nota-final=6]"/> -->

            <!-- aplica el template y el de abajo lo usa para mostrar los datos en 
            un bucle, leyendo todos los alumnos esto nos muestra todos los campos de todos los alumnos-->
            <xsl:apply-templates/>
        </table>
    </body>
</html>
</xsl:template>
<xsl:template match="/notas">
    <xsl:for-each select="./alumno">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="apellido"/></td>
            <td><xsl:value-of select="num-matricula"/></td>
            <td><xsl:value-of select="nota-teoria"/></td>
            <td><xsl:value-of select="nota-practica"/></td>
            <td><xsl:value-of select="nota-final"/></td>
        </tr>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>