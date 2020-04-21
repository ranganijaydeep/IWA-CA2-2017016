<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- this XSL stylesheet matches the <JavacoTea> tag in an associated XML
	file and replaces it with the HTML contents of the template. -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Phone Store</title>
                <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
                <link href="PhoneStoreStyles.css" rel="stylesheet" type="text/css" />
                <!-- Include the JavaScript code for processing the XML data -->
                
                
            </head>
            <body>
                <h2>
                    <img src="https://media.giphy.com/media/KFi3MFDXXEmxzAh5Gw/giphy.gif" alt="Logo" width="80%" height="50%" backgroung-color="white"/><br>Placed Order List </br></h2>
                <p>Your Selections are Below. Use Submit or delet function to edit Your item in list</p>
                <table id="menuTable" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Phone Store Online</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/phonemenu/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                 <tr id="{position()}">
                                    <xsl:attribute name="Apple">
                                        <xsl:value-of select="boolean(./@Apple)" />
                                    </xsl:attribute>
                                    <xsl:attribute name="Samsung">
                                        <xsl:value-of select="boolean(./@Samsung)" />
                                    </xsl:attribute>
                                    <xsl:attribute name="Nokia">
                                        <xsl:value-of select="boolean(./@Nokia)" />
                                    </xsl:attribute>
                                    <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="item" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>               
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>