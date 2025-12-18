<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Самые продаваемые iPhone</title>
        <style>
          body {
            background-color: white;
            font-family: Arial;
            padding: 20px;
          }
          h1 {
            text-align: center;
          }
          .model-cell {
            background-color: #f0f0f0;
            padding: 20px;
            margin: 20px auto;
            max-width: 500px;
            border: 1px solid #ddd;
          }
          .model-image {
            width: 100%;
            height: auto;
          }
          p {
            color: black;
            font-size: 16px;
            margin: 10px 0;
          }
        </style>
      </head>
      <body>
        <h1>Самые продаваемые iPhone</h1>
        
        <xsl:for-each select="/iphone_sales/iphone_models/model">
          <div class="model-cell">
            <img class="model-image">
              <xsl:attribute name="src">
                <xsl:value-of select="specifications/image"/>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="@name"/>
              </xsl:attribute>
            </img>
            <p><xsl:value-of select="@name"/></p>
            <p>Год: <xsl:value-of select="specifications/release_year"/></p>
            <p>Экран: <xsl:value-of select="specifications/display"/></p>
            <p>Продажи: <xsl:value-of select="specifications/sales"/> млн.</p>
          </div>
        </xsl:for-each>
        
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>