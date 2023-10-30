<?xml version="1.0" encoding="UTF-8"?>

<!-- 
  Autor: Ian Requena
  MEDAC - Desarrollo de Interfaces
  30-10-23
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">

    <html>

      <head>
        <link rel="stylesheet" type="text/css" href="Calzado_Style.css" />
      </head>

      <body>
        <br></br>
        <h1>Ejercicio evaluable Tema 3</h1>

        <h2>Producto</h2>
        <table>
          <!-- Creo la cabecera de la primera tabla -->
          <tr>
            <th>Marca</th>
            <th>Titulo</th>
            <th>Tipo</th>
            <th>Material</th>
            <th>Talla</th>
            <th>Plantilla</th>
            <th>Precio</th>
            <th>Observaciones</th>
          </tr>

          <!-- Creo el cuerpo de la primera tabla -->
          <xsl:for-each select="Calzado/factura/zapato">
            <tr>
              <td>
                <xsl:value-of select="@proveedor" />
              </td>
              <td>
                <xsl:value-of select="titulo" />
              </td>
              <td>
                <xsl:value-of select="tipo" />
              </td>
              <td>
                <xsl:value-of select="material" />
              </td>
              <td>
                <xsl:value-of select="talla" />
              </td>
              <td>
                <xsl:value-of select="plantilla" />
              </td>
              <td>
                <xsl:value-of select="precio" />
              </td>
              <td>
                <xsl:value-of select="observaciones" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Datos del cliente</h2>
        <table>
          <!-- Creo la cabecera de la segunda tabla -->
          <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
            <th>Telefono</th>
            <th>Telefono Fijo</th>
            <th>Fecha Nacimiento</th>
            <th>Sexo</th>
            <th></th>
            <th>Observaciones</th>
          </tr>

          <!-- Creo el cuerpo de la segunda tabla -->
          <xsl:for-each select="Calzado/factura/formulario">
            <tr>
              <td>
                <xsl:value-of select="nombre" />
              </td>
              <td>
                <xsl:value-of select="apellido" />
              </td>
              <td>
                <xsl:value-of select="email" />
              </td>
              <td>
                <xsl:value-of select="telefono" />
              </td>
              <td>
                <xsl:value-of select="telefono_fijo" />
              </td>
              <td>
                <xsl:value-of select="fecha_nac" />
              </td>
              <td>
                <xsl:value-of select="sexo" />
              </td>
              <!-- Cargar imagenes -->
              <td>
                <xsl:choose>
                  <xsl:when test="sexo='Hombre'">
                    <img src="img\hombre.jpg" />
                  </xsl:when>
                  <xsl:when test="sexo='Mujer'">
                    <img src="img\mujer.jpg" />
                  </xsl:when>
                </xsl:choose>
              </td>
              <td>
                <xsl:value-of select="observaciones" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>