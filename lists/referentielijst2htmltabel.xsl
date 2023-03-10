<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:template match="/domeintabel">
        <section id="reflijst-{name(*[1])}">
            <h2><!--<xsl:value-of select="concat(name(.), ' ', name(*[1]))"/>-->Inhoud Referentielijst Parameterlijst</h2>
            <table>
                <tr>
                    <xsl:for-each select="Parameter[1]/*">
                        <th>
                            <xsl:value-of select="name()"/>
                        </th>
                    </xsl:for-each>
                </tr>
                <xsl:apply-templates/>
            </table>
        </section>
    </xsl:template>
    <xsl:template match="Parameter">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="Parameter/*">
        <td>
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
</xsl:stylesheet>
