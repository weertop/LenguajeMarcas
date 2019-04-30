<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:comment>
            <!--declaramos las variables que usaremos para almacenar el numero de alumnos de la clase, el numero de aprobados y el n de suspensos.
            Comentamos la declaracion de estas porque sino se mostrario el valor de estas variables -->
            <!--eval es el ejecutable de javascript en xsl, crea variables -->
            <xsl:eval>numAlumnos=0</xsl:eval>
            <xsl:eval>numAprobados=0</xsl:eval>
            <xsl:eval>numSuspensos=0</xsl:eval>
        </xsl:comment>
        <html>
            <head>
                <title>Ejemplo Eval</title>
            </head>
            <body>
                <h1>Listado de notas y estadisticas</h1>
                <table align=center border="2" style="background-color:yellow;">
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
                    <!-- Mediante el foreach vamos recorriendo todos los alumnso y ejecutamos todas las instrucciones que contiene
                    por cada uno de ellos -->
                    <xsl:for-each select="/notas/alumno">
                        <xsl:comment>
                            <xsl:eval>numAlumnos+=1</xsl:eval>
                        </xsl:comment>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellidos"/></td>
                        <td><xsl:value-of select="num-matricula"/></td>
                        <td><xsl:value-of select="nota-teoria"/></td>
                        <td><xsl:value-of select="nota-practica"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test=".[nota-final >= '9.0']">Sobresaliente</xsl:when>
                                <xsl:when test=".[nota-final >= '7.0']">Notable</xsl:when>
                                <xsl:when test=".[nota-final >= 5.0]">Aprobado</xsl:when>
                                <xsl:otherwise>Suspenso</xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <xsl:if test=".[nota-final >= 5.0]">
                            <xsl:comment>
                                <xsl:eval>numAprobados+=1</xsl:eval>
                            </xsl:comment>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <table>
                    <br/>
                    <br/>
                    <table align="center">
                    </table>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>