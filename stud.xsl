<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match = "/">
        <html>
            <body>
                <h2>Student Details</h2>
                <table border = "1">
                    <tr bgcolor = "Pink">
                        <th>Roll Number</th>
                        <th>First Name</th>
                        <th>Marks</th>
                    </tr>
                    <xsl:for-each select="class/student">
                        <xsl:sort select="firstname" />
                        <xsl:if test="marks>=90">
                            <tr>
                                <td><xsl:value-of select = "@rollno"/></td>
                                <td style="color:red"><xsl:value-of select = "firstname" /></td>
                                <td><xsl:value-of select = "marks"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
