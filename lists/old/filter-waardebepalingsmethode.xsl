<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <!-- auteur: Linda van den Brink 
            Input: De domeintabel 'Waardebepalingsmethode' als XML download van bron http://domeintabellen-idsw.rws.nl/.
            Deze stylesheet filtert de domeintabel 'Waardebepalingsmethode' op 'Groep'. Alleen de volgende groepen worden meegenomen: 
                'Methodiek'
                'Algemeen niet-genormaliseerd'
                'Norm bodem/water-chemisch'
                'Norm radioactiviteit'
                'Norm water-chemisch'
                'Norm water-fysisch'
                'Norm Vervallen'
                'Voorschrift'
            Overige groepen worden weggefilterd.-->
    
    <!--Identity template, 
        provides default behavior that copies all content into the output -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="domeintabel">
        <xsl:copy>
            <xsl:apply-templates select="Waardebepalingsmethode[Groep=('Methodiek','Algemeen niet-genormaliseerd','Norm bodem/water-chemisch','Norm radioactiviteit','Norm water-chemisch','Norm water-fysisch','Norm vervallen','Voorschrift')]"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="Waardebepalingsmethode">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>