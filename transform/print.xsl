<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
    <html lang="en">
        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>CVs bank</title>
        
            <link rel="stylesheet" href="style/look.css" />
        </head>
        <body>
            <div class="bank">  
                <div class="candidat">
                    <div class="head">
                        <img class="avatar" src="https://bit.ly/3wPvmxj" alt="user avatar"/>
                        <div class="right-side right">
                            <h1><xsl:value-of select="bank/cv/personnal/fullname/@firstname"></xsl:value-of> <xsl:value-of select="bank/cv/personnal/fullname/@subname"></xsl:value-of></h1>
                            <p>UX Designer</p>
                        </div>
                    </div>
                    <div class="main-content">
                        <div class="avatar">
        
                        </div>
                        
                        <div class="right-side">
                            <div class="identity">
                                
                                    <h2>1. Identité</h2>
                                    <div class="mt-16">

                                        <xsl:for-each select="bank/cv/personnal/fullname">
                                            <p class="line"> <span class="s-title">Nom</span> <span>: <xsl:value-of select="@name"></xsl:value-of></span></p>
                                            <p class="line"> <span class="s-title">Postnom</span>  <span>: <xsl:value-of select="@subname"></xsl:value-of></span></p>
                                            <p class="line"><span class="s-title">Prénom</span> <span>: <xsl:value-of select="@firstname"></xsl:value-of></span></p>
                                        </xsl:for-each>

                                        <p class="line"><span class="s-title">Genre</span> <span>: <xsl:value-of select="bank/cv/personnal/@gender"></xsl:value-of></span></p>
                                        <p class="line"><span class="s-title">Document</span> <span>: <xsl:value-of select="bank/cv/personnal/doc/@code"></xsl:value-of> (<xsl:value-of select="bank/cv/personnal/doc"></xsl:value-of>)</span></p>
                    
                                        <p class="line"><span class="s-title">Age</span> <span>: <xsl:value-of select="bank/cv/personnal/birth/@date"></xsl:value-of></span></p>
                                        <p class="line"><span class="s-title">Lieu de naissance</span> <span>: <xsl:value-of select="bank/cv/personnal/birth/@city"></xsl:value-of></span></p>
                    
                                        <p class="line"><span class="s-title">Adresse</span> <span>: <xsl:value-of select="bank/cv/personnal/@adress"></xsl:value-of></span></p>
                                        
                                        <div class="data">
                                            <div>
                                                <h3>Téléphone</h3>
                                                <ul>
                                                    <xsl:for-each select="bank/cv/personnal/phones">
                                                        <li><xsl:value-of select="phone"></xsl:value-of> <span class="type"><xsl:value-of select="phone/@type"></xsl:value-of></span> <span class="operator o-airtel"><xsl:value-of select="phone/@operator"></xsl:value-of></span></li>
                                                    </xsl:for-each>
                                                </ul>
                                            </div>
                        
                                            <div>
                                                <h3>Adresse mails</h3>
                                                <ul>
                                                    <xsl:for-each select="bank/cv/personnal/mails">
                                                        <li><xsl:value-of select="mail"></xsl:value-of><span class="type"><xsl:value-of select="mail/@type"></xsl:value-of></span></li>
                                                    </xsl:for-each>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                            </div>
            
                            <div class="studies">
                                <h2>2. Etudes</h2>
                                <xsl:for-each select="bank/cv/studies">
                                    <div class="diploma">
                                        <div class="s-head">
                                            <div class="title">
                                                <h3><xsl:value-of select="diploma/@title"></xsl:value-of></h3>
                                                <p><xsl:value-of select="diploma/@year"></xsl:value-of></p>
                                            </div>
                                        </div>
                
                                        <div class="description">
                                            <p><xsl:value-of select="diploma/description"></xsl:value-of></p>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
            
                            <div class="experience">
                                <h2>3. Experience professionel</h2>
                                <xsl:for-each select="bank/cv/experience/work">
                                    <div class="work">
                                        <div class="s-head">
                                            <div class="title">
                                                <h3><xsl:value-of select="@company"></xsl:value-of></h3>
                                                <p><xsl:value-of select="@duree"></xsl:value-of></p>
                                            </div>
                                        </div>
                
                                        <div class="description">
                                            <p><xsl:value-of select="description"></xsl:value-of></p>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>