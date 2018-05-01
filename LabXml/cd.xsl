<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"/>
                <link rel="stylesheet"
                      href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css"/>
                <script src="http://code.jquery.com/jquery.min.js"/>
                <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"/>

            </head>
            <body>
                <div class="container">
                    <div class="jumbotron">
                        <h1>A collection of CD albums</h1>
                        <p class="text-muted">Display all entities sorted by title which were released in 1990</p>
                        <!--<img src="l.jpg" class="rounded" alt="Cinque Terre" width="304" height="236">-->
                    </div>
                    <table class="table table-hover">
                        <thead>
                            <tr bgcolor="lightgray">
                                <th><p class="text-info" >Title</p></th>
                                <th><p class="text-primary" >Interpret</p></th>
                                <th><p class="text-danger">Year</p></th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="collection/cd">
                                <xsl:sort select="title"/>
                                <xsl:choose>

                                    <xsl:when test="year=1990">
                                        <tr class="info">
                                            <td>
                                                <xsl:value-of select="title"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="interpret"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="year"/>
                                            </td>
                                        </tr>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                            <xsl:value-of select="title"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="interpret"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="year"/>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>


