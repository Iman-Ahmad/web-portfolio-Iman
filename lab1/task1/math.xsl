<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>Math</title>
            </head>
            <body>
                <h4 id="author" title="Иман">Иман Ахмад</h4>
                <button class="btn btn-secondary">
                    <a href="/web-portfolio-Iman">Вернуться на главную страницу</a>
                </button>
                <div style="width: min-content">
                    <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
                        <mstyle displaystyle="true">
                            <xsl:apply-templates/>
                        </mstyle>
                    </math>
                </div>
                <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"/>
                <script id="MathJax-script" async="true"
                        src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates/>
        </mrow>
    </xsl:template>
    <xsl:template match="операнд">
        <mi>
            <xsl:apply-templates/>
        </mi>
    </xsl:template>
    <xsl:template match="оператор">
        <mo>
            <xsl:apply-templates/>
        </mo>
    </xsl:template>
    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates/>
        </msqrt>
    </xsl:template>
    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates/>
        </mfrac>
    </xsl:template>
    <xsl:template match="число">
        <mn>
            <xsl:apply-templates/>
        </mn>
    </xsl:template>
    <xsl:template match="низверх">
        <munderover>
            <xsl:apply-templates/>
        </munderover>
    </xsl:template>
    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates/>
        </msup>
    </xsl:template>
    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates/>
        </msub>
    </xsl:template>
</xsl:stylesheet>
