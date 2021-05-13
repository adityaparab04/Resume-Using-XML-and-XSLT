<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/Resume">
<html>
  <head><title>RESUME</title></head>
  <style>
  .myDiv {
    border: 1px outset black;
    text-align: center;
    width: 70%;
    margin: 0 auto;
    padding: 20px;
    }
  </style>
  <body>
    <div class="myDiv">

    <h1 style= "background-color: C0C0C0">Resume</h1>
    <hr/>
    <br/>

    <xsl:for-each select="Applicant">
      <h2 style= "text-align:left; font-size= 100%" ><xsl:value-of select="Name" /></h2>
      <h3 style= "text-align:left; font-size= 100%" >Address:  <xsl:value-of select="Address" /></h3>
      <h3 style= "text-align:left; font-size= 100%" >Email Id:  <xsl:value-of select="EmailId" /></h3>
      <h3 style= "text-align:left; font-size= 100%" >Phone number:  <xsl:value-of select="PhoneNumber" /></h3>
      <h3 style= "text-align:left; font-size= 100%" >Marital Status:  <xsl:value-of select="Married_status" /></h3>
    </xsl:for-each>
    <br/>

    <h2 style="text-align:left;  background-color: C0C0C0">Objective</h2>
    <xsl:for-each select="Objectives">
      <h3 style= "text-align:left; font-size= 100%" ><xsl:value-of select="Objective" /></h3>
    </xsl:for-each>
    
    <br/>

    <h2 style="text-align:left ; background-color: C0C0C0">Education</h2>
    <table cellpadding = '5' cellspacing = '2%' width="100%" border="1">
      <TR>
        <TH width="15%">Term</TH>
        <TH width="15%">Program</TH>
        <TH width="10%">Institution</TH>
        <TH width="10%">Marks</TH>        
      </TR>

      <xsl:for-each select="Education/Qualification">
          <TR> 
          <TD width="10%" style="text-align: center;"><xsl:value-of select="Term" /></TD>   
          <TD width="5%" style="text-align: center;"><xsl:value-of select="Program" /></TD>
          <TD width="15%" style="text-align: center;"><xsl:value-of select="Institution" /></TD>
          <TD width="10%" style="text-align: center;"><xsl:value-of select="Marks" /></TD>     
          </TR>
      </xsl:for-each>

      
    </table>
    <br/>

    <h2 style="text-align:left;  background-color: C0C0C0">Certification</h2>
    <xsl:for-each select="Certification">
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Course" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Course1" /></li></ul></h3>
   
   
    </xsl:for-each>
    <br/>
    

    <h2 style="text-align:left;  background-color: C0C0C0 ">Strength</h2>
    <xsl:for-each select="Strengths">
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Strength" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Strength1" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Strength2" /></li></ul></h3>
    </xsl:for-each>
    <br/>

    <h2 style="text-align:left;  background-color: C0C0C0">Additional_Information</h2>
    <xsl:for-each select="Additional_Information">
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Languages" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Languages1" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Languages2" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Languages3" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Languages4" /></li></ul></h3> 
    </xsl:for-each>
    <br/>
  
    <h2 style="text-align:left;  background-color: C0C0C0">Hobbies</h2>
    <xsl:for-each select="Hobby"> 
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Hobbies" /></li></ul></h3>
      <h3 style= "text-align:left; font-size= 100%" ><ul><li><xsl:value-of select="Hobbies1" /></li></ul></h3>
    </xsl:for-each>

  </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>