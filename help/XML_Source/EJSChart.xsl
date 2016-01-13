<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
			      xmlns:xi="http://www.w3.org/2001/XInclude" >

<!-- The imagepath variable defines the path where images referenced in topics are located.
     if the projectfile.xml is viewed, this is the ./Images folder. The variable is referenced
     by the "Image" and "Link" template. When a single topic file is viewed, this variable
     gets overwritten by the topics style sheet. -->

<xsl:variable name="imagepath">./Images/</xsl:variable>

<xsl:template match="include">
<!-- <xsl:apply-templates select="document(@href)"/> -->
</xsl:template>

<xsl:template name="textstyleclass">
  <xsl:choose>
    <xsl:when test="@styleclass = 'Code Example'"><xsl:attribute name="style">font-family:'Courier New'; font-size:8pt; font-weight:normal; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Courier Fixed'"><xsl:attribute name="style">font-family:'Courier New'; font-size:9pt; font-weight:normal; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Normal'"><xsl:attribute name="style">font-family:Arial; font-size:10pt; font-weight:normal; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Comment'"><xsl:attribute name="style">font-family:Arial; font-size:10pt; font-weight:normal; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Heading1'"><xsl:attribute name="style">font-family:Arial; font-size:12pt; font-weight:bold; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Image Caption'"><xsl:attribute name="style">font-family:Arial; font-size:8pt; font-weight:bold; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Notes'"><xsl:attribute name="style">font-family:Arial; font-size:10pt; font-weight:normal; font-style:normal; text-decoration:none; text-transform:none; vertical-align:baseline; color:#000000; background-color:transparent; letter-spacing:normal; letter-scaling:100%; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template name="parastyleclass">
  <xsl:choose>
    <xsl:when test="@styleclass = 'Code Example'"><xsl:attribute name="style">text-align:left; text-indent:0px; margin-top:0px; margin-right:0px; margin-bottom:0px; margin-left:0px; line-height:1.0; background-color:transparent; white-space:nowrap; page-break-inside:avoid; page-break-after:auto; border:none; tabstops:none; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Normal'"><xsl:attribute name="style">text-align:left; text-indent:0px; margin-top:0px; margin-right:0px; margin-bottom:0px; margin-left:0px; line-height:1.0; background-color:transparent; white-space:normal; page-break-inside:auto; page-break-after:auto; border:none; tabstops:none; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Comment'"><xsl:attribute name="style">text-align:left; text-indent:0px; margin-top:0px; margin-right:0px; margin-bottom:0px; margin-left:0px; line-height:1.0; background-color:transparent; white-space:normal; page-break-inside:auto; page-break-after:auto; border:none; tabstops:none; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Heading1'"><xsl:attribute name="style">text-align:left; text-indent:0px; margin-top:0px; margin-right:0px; margin-bottom:0px; margin-left:0px; line-height:1.0; background-color:transparent; white-space:normal; page-break-inside:auto; page-break-after:auto; border:none; tabstops:none; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Image Caption'"><xsl:attribute name="style">text-align:left; text-indent:0px; margin-top:0px; margin-right:0px; margin-bottom:0px; margin-left:0px; line-height:1.0; background-color:transparent; white-space:normal; page-break-inside:auto; page-break-after:auto; border:none; tabstops:none; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
    <xsl:when test="@styleclass = 'Notes'"><xsl:attribute name="style">text-align:left; text-indent:0px; margin-top:0px; margin-right:0px; margin-bottom:0px; margin-left:0px; line-height:1.0; background-color:transparent; white-space:normal; page-break-inside:auto; page-break-after:auto; border:none; tabstops:none; <xsl:value-of select="@style"/></xsl:attribute></xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template match="/">
  <html><head>
    <title><xsl:value-of select="@title" /></title>
    <style type="text/css">
      body, p, table, div
           {font-size: 9pt;
 	    font-family: 'Arial';
	    font-style: normal;
            font-weight: normal;
            color: #000000;
            text-decoration: none;
	    text-align: left;
	    text-indent: 0px;
	    padding: 0px 0px 0px 0px;
	    margin: 4px;
	    line-height: normal;
           }
      h1 {font-size: 14pt; font-weight: bold;}
    </style>
    </head>
    <body>
      <xsl:apply-templates />
    </body>
  </html>
</xsl:template>


<xsl:template match="config">
<!-- do not display config section in preview -->
</xsl:template>


<xsl:template match="map">
   <table cellpadding="0" cellspacing="0" border="0" style="width:98%;border:none;border-spacing:0px;border-collapse:collapse;">
     <tr style="text-align:left;vertical-align:top;">
       <td style="padding:4px; background-color:#D3D3D3; border: solid 1px #000000;">
         <h1>Map &quot;<xsl:value-of select="@id"/>&quot;</h1>
       </td>
     </tr>        
     <tr style="text-align:left;vertical-align:top;">
       <td style="border: solid 1px #000000;">
         <table cellpadding="0" cellspacing="0" border="0" style="width:100%">
           <tr style="valign:top;padding-bottom:10px;font-weight:bold">
             <td>Caption</td>
             <td style="width:100px">Type</td> 
             <td style="width:100px">Status</td> 
             <td style="width:100px">Build</td> 
             <td style="width:200px">Map entry modified</td> 
           </tr>

           <xsl:for-each select="*">
             <xsl:call-template name="map-entry"/>
           </xsl:for-each>

         </table>
       </td>
     </tr>        
   </table>
</xsl:template>

<xsl:template name="map-entry">
 <xsl:param name="level">0</xsl:param>
 <xsl:param name="background">none</xsl:param>

 <tr style="valign:top;padding-bottom:2px">
   <td style="padding-left:{$level * 20};background:{$background}">
     <xsl:choose>
       <xsl:when test="@type='topic'">
         <a href="./topics/{@href}.xml"><xsl:apply-templates select="caption"/></a>
         <xsl:if test="@domain">&#160;(links to: <xsl:value-of select="@href"/>@<xsl:value-of select="@domain"/>)</xsl:if>
       </xsl:when>
       <xsl:otherwise>
         <xsl:apply-templates select="caption"/>
         <xsl:if test="@src">&#160;(Source: <xsl:value-of select="@src"/>)</xsl:if>
       </xsl:otherwise>
     </xsl:choose>
   </td>
   <td style="width:100px;background:{$background}"><xsl:value-of select="@type" /></td> 
   <td style="width:100px;background:{$background}">
     <xsl:choose>
       <xsl:when test="@status='new'"><span style="background-color:#FCFC04;font-weight:bold"><xsl:value-of select="@status"/></span></xsl:when>
       <xsl:when test="@status='review'"><span style="background-color:#04FCFC;font-weight:bold"><xsl:value-of select="@status"/></span></xsl:when>
       <xsl:when test="@status='outdated'"><span style="background-color:#FC0404;font-weight:bold"><xsl:value-of select="@status"/></span></xsl:when>
       <xsl:otherwise><xsl:value-of select="@status"/></xsl:otherwise>
     </xsl:choose>
   </td> 
   <td style="width:100px;background:{$background}"><xsl:value-of select="@build" /></td> 
   <td style="width:200px;background:{$background}"><xsl:value-of select="substring(@modified,1,10)"/>&#160;<xsl:value-of select="substring(@modified,12,8)"/></td> 
 </tr>
 <xsl:for-each select="navref|topicref">
   <xsl:call-template name="map-entry">
     <xsl:with-param name="level" select="$level + 1" />
     <xsl:with-param name="background">
       <xsl:choose> 
         <xsl:when test="$background='none'">#FAFAFA</xsl:when>
         <xsl:otherwise>none</xsl:otherwise>
       </xsl:choose> 
     </xsl:with-param>
   </xsl:call-template>
 </xsl:for-each>
</xsl:template>


<xsl:template match="baggage">
  <p><h1>Baggage files:</h1></p>
  <xsl:apply-templates />
</xsl:template>

<xsl:template match="baggage-file">
  <p style="text-indent:20px"><xsl:value-of select="@src" /></p>
</xsl:template>


<xsl:template match="topics">
<!-- <p><h1>Topics:</h1></p> -->
  <xsl:apply-templates />
</xsl:template>

<xsl:template match="topic">
 <table id="{@id}" border="0" cellpadding="0" style="margin-left:10px;margin-bottom:40px;">
   <tr><td>
   <table border="0" cellpadding="0" cellspacing="0" style="vertical-align:top;margin-bottom:10px">
     <tr>
       <td style="width:120px">Topic ID:</td><td style="font-weight:bold"><xsl:value-of select="@id"/></td>
     </tr>
     <tr style="vertical-align:top">
       <td>Modified:</td><td style="font-weight:bold"><xsl:value-of select="substring(@modified,1,10)"/>,&#160;<xsl:value-of select="substring(@modified,12,8)"/></td>
     </tr>
     <tr style="vertical-align:top">
       <td>Help window:</td><td><xsl:value-of select="@target" /></td>
     </tr>
     <xsl:if test="@helpcontext">
       <tr style="vertical-align:top">
         <td>Help context:</td><td><xsl:value-of select="@helpcontext" /></td>
       </tr>
     </xsl:if>
     <xsl:if test="./keywords">
       <tr style="vertical-align:top">
         <td>Keywords:</td><td>
           <xsl:for-each select="./keywords/keyword">
             <p><xsl:value-of select="text()" /></p>
             <xsl:for-each select="./keyword">
               <p style="margin-left:30px"><xsl:value-of select="text()" /></p>
             </xsl:for-each> 
           </xsl:for-each>
          </td>
       </tr>
     </xsl:if>
     <xsl:if test="./a-keywords">
       <tr style="vertical-align">
         <td>A-Keywords:</td><td>
           <xsl:for-each select="./a-keywords/a-keyword">
             <p><xsl:value-of select="." /></p>
           </xsl:for-each>
          </td>
       </tr>
     </xsl:if>
   </table>
   </td></tr>
   <tr style="vertical-align:top">
     <td><xsl:apply-templates/></td>
   </tr> 
 </table> 
</xsl:template>


<!-- Ignore, already processed above -->
<xsl:template match="topic/keywords">
</xsl:template>
<xsl:template match="topic/a-keywords">
</xsl:template>
<xsl:template match="topic/help-context">
</xsl:template>

<xsl:template match="topic/body">
 
 <table cellpadding="0" cellspacing="0" border="0">
   <tr style="vertical-align:top">
     <td style="padding:4px 4px 4px 4px;margin:0px;border:1px solid #000000;">
       <xsl:apply-templates/>
     </td>
   </tr>
  </table> 
</xsl:template>

<xsl:template match="body/header">
 <div style="background-color:#D3D3D3;padding:4px;margin:-4px -4px 4px -4px">
   <xsl:apply-templates/>
 </div>
</xsl:template>

<xsl:preserve-space elements="text para link var" />

<xsl:template match="para">
 <p style="{@style}"><xsl:call-template name="parastyleclass"/><xsl:apply-templates/><xsl:if test=". = ''">&#160;</xsl:if></p>
</xsl:template>

<xsl:template match="text">
 <span style="{@style};white-space:pre"><xsl:call-template name="textstyleclass"/><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="list">
 <xsl:choose> 
   <xsl:when test="@type = 'ol'"><ol style="list-style-type:{@listtype}"><xsl:apply-templates/></ol></xsl:when>
   <xsl:otherwise><ul><xsl:apply-templates/></ul></xsl:otherwise>
 </xsl:choose> 
</xsl:template>

<xsl:template match="li">
 <li style="{@style}"><xsl:call-template name="parastyleclass"/><xsl:apply-templates/></li>
</xsl:template>

<xsl:template match="image">
  <xsl:variable name="caption">
    <xsl:copy-of select="./caption"/>
  </xsl:variable>
  <xsl:choose>
    <xsl:when test="./caption or @align != ''">
      <table align="{@align}" cellpadding="0" cellspacing="0" style="text-align:center"><tr style="valign:top"><td style="{@style}">
        <xsl:call-template name="textstyleclass"/>
        <xsl:choose>
          <xsl:when test="@width">
            <img src="{$imagepath}{@src}" width="{@width}" height="{@height}" style="{@style}"/><br/><xsl:value-of select="$caption"/>
          </xsl:when>
          <xsl:otherwise>
            <img src="{$imagepath}{@src}" style="{@style}"/><br/><xsl:value-of select="$caption"/>
          </xsl:otherwise>
        </xsl:choose>
      </td></tr></table>
    </xsl:when>
    <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="@width">
            <img src="{$imagepath}{@src}" width="{@width}" height="{@height}" style="{@style}"/>
          </xsl:when>
          <xsl:otherwise>
            <img src="{$imagepath}{@src}" style="{@style}"/>
          </xsl:otherwise>
        </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="link">
  <xsl:variable name="onclick">
    <xsl:choose>
      <xsl:when test="@type = 'topiclink'">Topic link: href=<xsl:value-of select="@href"/><xsl:if test="@anchor">&#160;&#160;#<xsl:value-of select="@anchor"/></xsl:if></xsl:when>
      <xsl:when test="@type = 'weblink'">Web link: href=<xsl:value-of select="@href"/><xsl:if test="@target">&#160;&#160;Target=<xsl:value-of select="@target"/></xsl:if></xsl:when>
      <xsl:when test="@type = 'filelink'">File link: href=<xsl:value-of select="@href"/><xsl:if test="@params">&#160;&#160;Params=<xsl:value-of select="@params"/></xsl:if></xsl:when>
      <xsl:otherwise>Javascript or Macro</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:choose>
    <xsl:when test="@displaytype = 'button'">
      <xsl:variable name="buttoncaption">
        <xsl:value-of select="."/>
      </xsl:variable>
      <input type="button" style="font-family:'MS Sans Serif';font-size:8pt;color:#000000" value="{$buttoncaption}" OnClick="javascript:alert('{$onclick}')"/>
    </xsl:when>
    <xsl:when test="@displaytype = 'image'">
      <a href="javascript:void(0);" OnClick="javascript:alert('{$onclick}')"><img src="{$imagepath}{@src}"/></a>
    </xsl:when>
    <xsl:otherwise>
      <a href="javascript:void(0);" style="{@style}" OnClick="javascript:alert('{$onclick}')"><xsl:call-template name="textstyleclass"/><xsl:value-of select="."/></a>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="html-code">
<div style="font-family:'Courier New';font-size:7pt;color:#000000;margin:4px;padding:4px;background-color:#B3D9FF;border:1px dashed #000000">
  <xsl:value-of select="."/>
</div>
</xsl:template>

<xsl:template match="anchor">
<a name="{@id}" style="border:1px dashed #A0A0A0;padding:1px;background-color:#0000FF;color:#FFFFFF;font-weight:bold">Anchor: <xsl:value-of select="@id"/></a>
</xsl:template>

<xsl:template match="line">
<hr style="{@style}"/>
</xsl:template>

<xsl:template match="var">
 <span style="{@style}"><xsl:call-template name="textstyleclass"/><span style="white-space:pre;background-color:#00FF00;"><xsl:value-of select="."/></span></span>
</xsl:template>

<xsl:template match="conditional-text">
<span style="font-weight:bold;color:#FFFFFF;background-color:#FF6868">
  <xsl:choose>
    <xsl:when test="@type = 'IF'">IF&#160;<xsl:value-of select="@value"/>&gt;</xsl:when>
    <xsl:when test="@type = 'IFNOT'">IFNOT&#160;<xsl:value-of select="@value"/>&gt;</xsl:when>
    <xsl:when test="@type = 'ELSE'">&lt;ELSE&gt;</xsl:when>
    <xsl:when test="@type = 'END'">&lt;END</xsl:when>
    <!-- if somebody modified the type attribute to lowercase, it still works -->
    <xsl:otherwise><xsl:value-of select="@type"/><xsl:value-of select="@value"/></xsl:otherwise>
  </xsl:choose>
</span>
</xsl:template>

<xsl:template match="draft-comment">
<div style="white-space:pre;margin:4px;padding:4px;background-color:#FCFCAC;border:1px dashed #000000">
  <b>Draft Comment, <xsl:value-of select="@modified"/>:</b><br/>
  <span style="{@style}"><xsl:call-template name="textstyleclass"/>
    <xsl:value-of select="."/>
  </span>
</div>
</xsl:template>

<xsl:template match="include-topic">
<div style="width:100%;text-align:center;padding:4px;background-color:#E2E2E2;border:1px dashed #000000">
Include topic: <b><xsl:value-of select="@src"/></b>
</div>
</xsl:template>

<xsl:template match="tab">
&#160;&#160;&#160;&#160;&#160;
</xsl:template>

<xsl:template match="embedded-image">
<span style="border:2px dashed #000000;padding:2px;font-weight:bold;color:#FFFFFF;background-color:#FF0000">Embedded image</span>
</xsl:template>

<xsl:template match="embedded-olecontrol">
<span style="border:2px dashed #000000;padding:2px;font-weight:bold;color:#FFFFFF;background-color:#FF0000">Embedded OLE control</span>
</xsl:template>

<xsl:template match="toggle">
  <xsl:variable name="caption">
    <xsl:copy-of select="./caption"/>
  </xsl:variable>
  <a href="javascript:alert('Toggle')">
  <xsl:choose>
    <xsl:when test="@type = 'picture'">
      <xsl:choose>
        <xsl:when test="./caption or @align != ''">
          <table align="{@align}" cellpadding="0" cellspacing="0" style="text-align:center"><tr style="valign:top"><td style="{@style}">
            <xsl:call-template name="textstyleclass"/>
            <xsl:choose>
              <xsl:when test="@width">
                <img src="{$imagepath}{@src-collapsed}" width="{@width}" height="{@height}" style="{@style}"/><br/><xsl:value-of select="$caption"/>
              </xsl:when>
              <xsl:otherwise>
                <img src="{$imagepath}{@src-collapsed}" style="{@style}"/><br/><xsl:value-of select="$caption"/>
              </xsl:otherwise>
            </xsl:choose>
          </td></tr></table>
        </xsl:when>
        <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="@width">
                <img src="{$imagepath}{@src-collapsed}" width="{@width}" height="{@height}" style="{@style}"/>
              </xsl:when>
              <xsl:otherwise>
                <img src="{$imagepath}{@src-collapsed}" style="{@style}"/>
              </xsl:otherwise>
            </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:otherwise>
      <span style="{@style};white-space:pre"><xsl:call-template name="textstyleclass"/><xsl:apply-templates/></span>
    </xsl:otherwise>
  </xsl:choose>
  </a>
</xsl:template>

<xsl:template match="table">
 <table cellpadding="{@cellpadding}" cellspacing="{@cellspacing}" style="{@style}"><xsl:apply-templates /></table>
</xsl:template>
<xsl:template match="tr">
 <tr style="{@style}"><xsl:apply-templates /></tr>
</xsl:template>
<xsl:template match="thead">
 <tr style="{@style}"><xsl:apply-templates /></tr>
</xsl:template>
<xsl:template match="td">
 <td colspan="{@colspan}" rowspan="{@rowspan}" style="{@style}"><xsl:apply-templates /></td>
</xsl:template>
<xsl:template match="table-background">
<!--embedded table background image, ignore-->
</xsl:template>

</xsl:stylesheet>
