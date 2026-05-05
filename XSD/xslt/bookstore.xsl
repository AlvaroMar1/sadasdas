<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Bookstore</title>
      </head>
      <body>
        <h1>Catálogo Bookstore</h1>
        <table>
          <tr>
            <th></th>
            <th></th>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table>

        <p> <strong>Total libros: <xsl:value-of select="count(/bookstore/book)"/></strong></p>
        <p> <strong>Total magazines: <xsl:value-of select="count(/bookstore/magazine)"/></strong></p>

        
        <table border="1">
    
          <tr>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>Año</th>
          </tr>

          <xsl:for-each select="bookstore/book">
            <xsl:sort select="price" data-type="number" order="ascending"></xsl:sort>
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="price"/>€</td>
              <td><xsl:value-of select="year"/></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
