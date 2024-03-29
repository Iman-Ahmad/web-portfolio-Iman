<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>SVG Picture</title>
            </head>
            <body>
                <div>
                    <h4 id="author" title="Иман">Иман Ахмад</h4>
                    <button class="btn btn-secondary" style="position : absolute; display : block;"><a href="https://Iman-Ahmad.github.io/web-portfolio-Iman/" style = "text-decoration: none;">Вернуться на главную страницу</a></button>
                </div>
                <div style="margin : 50px;">
                    <xsl:apply-templates />
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="графика">
        <svg xmlns="http://www.w3.org/2000/svg" width="{@ширина}" height="{@высота}">
            <xsl:apply-templates />
        </svg>
    </xsl:template>
    <xsl:template match="эллипс">
        <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}"
                 cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
    </xsl:template>
</xsl:stylesheet>
