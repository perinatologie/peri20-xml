<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:cda="urn:hl7-org:v3"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:peri="urn:nictiz-nl:v3/peri"
                xmlns:decor="http://art-decor.org/ns/decor"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nfu="urn:urn:nictiz-nl:v3/nfu"
                xmlns:pharm="urn:ihe:pharm:medication"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>

   <!--PHASES-->


   <!--PROLOG-->
   <xsl:output method="text"/>

   <!--XSD TYPES FOR XSLT2-->


   <!--KEYS AND FUNCTIONS-->


   <!--DEFAULT RULES-->


   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>

   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>

   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>

   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <xsl:apply-templates select="/" mode="M11"/>
      <xsl:apply-templates select="/" mode="M12"/>
      <xsl:apply-templates select="/" mode="M13"/>
   </xsl:template>

   <!--SCHEMATRON PATTERNS-->


   <!--PATTERN -->
   <xsl:template match="text()" priority="-1" mode="M11"/>
   <xsl:template match="@*|node()" priority="-2" mode="M11">
      <xsl:apply-templates select="*" mode="M11"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000Acknowledgement-->


	  <!--RULE d14e3575-false-d46541e0-->
   <xsl:template match="hl7:MCCI_IN000002" priority="1023" mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:creationTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:creationTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:creationTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:creationTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:versionCode[@code='NICTIZEd2005-Okt'] is mandatory [min 1x]. (count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:versionCode[@code='NICTIZEd2005-Okt'] komt te vaak voor [max 1x]. (count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] is mandatory [min 1x]. (count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] komt te vaak voor [max 1x]. (count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'] is mandatory [min 1x]. (count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'] komt te vaak voor [max 1x]. (count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingCode[@code='P'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:processingCode[@code='P'] is mandatory [min 1x]. (count(hl7:processingCode[@code='P'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingCode[@code='P'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:processingCode[@code='P'] komt te vaak voor [max 1x]. (count(hl7:processingCode[@code='P'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingModeCode[@code='T'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:processingModeCode[@code='T'] is mandatory [min 1x]. (count(hl7:processingModeCode[@code='T'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingModeCode[@code='T'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:processingModeCode[@code='T'] komt te vaak voor [max 1x]. (count(hl7:processingModeCode[@code='T'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acceptAckCode[@code='NE'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:acceptAckCode[@code='NE'] is mandatory [min 1x]. (count(hl7:acceptAckCode[@code='NE'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acceptAckCode[@code='NE'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:acceptAckCode[@code='NE'] komt te vaak voor [max 1x]. (count(hl7:acceptAckCode[@code='NE'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acknowledgement[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:acknowledgement[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:acknowledgement[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acknowledgement[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:acknowledgement[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:acknowledgement[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3632-false-d46639e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:id[not(@nullFlavor)]"
                 priority="1022"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II: @root is required if @nullFlavor is not present (@nullFlavor or (not(@nullFlavor) and @root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II: @root may not be used if @nullFlavor is present (not(@nullFlavor) or (@nullFlavor and not(@root)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-II: @identifierName may not be used if @nullFlavor is present (not(@nullFlavor and @identifierName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-II: @displayable may not be used if @nullFlavor is present (not(@nullFlavor and @displayable) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-II: @reliability may not be used if @nullFlavor is present (not(@nullFlavor and @reliability) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present (not(@nullFlavor and @assigningAuthorityName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <xsl:message>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@root)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@root) &lt;= 128) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <xsl:message>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@extension)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@extension) &lt;= 64) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID. (not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations. (not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="root" select="@root"/>
      <xsl:variable name="extension" select="@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-II: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL be distinct (not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-II: Lower case UUID "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display. (not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]')) / info / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@root and @extension"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): Transmission: id element mist root of extension (@root and @extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3642-false-d46651e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:creationTime[not(@nullFlavor)]"
                 priority="1021"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-QTY: no uncertainty (not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_QTY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-QTY: no history or updateMode (count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_QTY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-QTY: [RIM-001] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> elements which are not null (not(@nullFlavor and $set_other[not(@nullFlavor)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_QTY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="value" select="@value"/>
      <xsl:variable name="unit" select="@unit"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-QTY: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (@value=<xsl:text/>
               <xsl:value-of select="$value"/>
               <xsl:text/> @unit=<xsl:text/>
               <xsl:value-of select="$unit"/>
               <xsl:text/>) SHALL be distinct (not($set_other[@value=$value][@unit=$unit]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_QTY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-TS: null or value or child element in case of extension ((@nullFlavor or @value or *) and not(@nullFlavor and @value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theTS" select="@value"/>
      <xsl:variable name="theBC" select="if (starts-with($theTS,'-')) then '-' else ()"/>
      <xsl:variable name="theTZ" select="replace($theTS,'-?[^+-]+([+-].*)?$','$1')"/>
      <xsl:variable name="theTZh"
                    select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <xsl:variable name="theTZm"
                    select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <xsl:variable name="theBaseTS" select="replace($theTS,'^-?([^+-]+)([+-].*)?','$1')"/>
      <xsl:variable name="theCentury"
                    select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <xsl:variable name="theYear"
                    select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <xsl:variable name="theMonth"
                    select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <xsl:variable name="theDay"
                    select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <xsl:variable name="theHour"
                    select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <xsl:variable name="theMinute"
                    select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <xsl:variable name="theSecond"
                    select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <xsl:variable name="theSubSecond"
                    select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <xsl:variable name="cCentury"
                    select="if (empty($theCentury)) then '00' else $theCentury"/>
      <xsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <xsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <xsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <xsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <xsl:variable name="cMinute"
                    select="if (empty($theMinute)) then '00' else $theMinute"/>
      <xsl:variable name="cSecond"
                    select="if (empty($theSecond)) then '00' else $theSecond"/>
      <xsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <xsl:variable name="theTSString"
                    select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <xsl:variable name="theDateTime"
                    select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-TS: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> "<xsl:text/>
               <xsl:value-of select="$theTS"/>
               <xsl:text/>" is not a valid timestamp. (empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime) / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or matches(@value, '^[0-9]{14,14}')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-TS.DATETIME.MIN: null or date precision of time stamp shall be at least YYYYMMDDhhmmss. (@nullFlavor or matches(@value, '^[0-9]{14,14}') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_TS.DATETIME.MIN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3651-false-d46666e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:versionCode[@code='NICTIZEd2005-Okt']"
                 priority="1020"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive ((@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-CS: cannot have codeSystem (not(@codeSystem) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-CS: cannot have codeSystemName (not(@codeSystemName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-CS: cannot have codeSystemVersion (not(@codeSystemVersion) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-CS: cannot have displayName (not(@displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:originalText)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-CS: cannot have originalText (not(hl7:originalText) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-CS: cannot have qualifier (not(hl7:qualifier) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-CS: cannot have translation (not(hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NICTIZEd2005-Okt')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'NICTIZEd2005-Okt''. (@nullFlavor or (@code='NICTIZEd2005-Okt') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3659-false-d46684e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:interactionId[@root='2.16.840.1.113883.1.6']"
                 priority="1019"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II: @root is required if @nullFlavor is not present (@nullFlavor or (not(@nullFlavor) and @root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II: @root may not be used if @nullFlavor is present (not(@nullFlavor) or (@nullFlavor and not(@root)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-II: @identifierName may not be used if @nullFlavor is present (not(@nullFlavor and @identifierName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-II: @displayable may not be used if @nullFlavor is present (not(@nullFlavor and @displayable) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-II: @reliability may not be used if @nullFlavor is present (not(@nullFlavor and @reliability) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present (not(@nullFlavor and @assigningAuthorityName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <xsl:message>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@root)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@root) &lt;= 128) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <xsl:message>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@extension)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@extension) &lt;= 64) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID. (not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations. (not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="root" select="@root"/>
      <xsl:variable name="extension" select="@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-II: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL be distinct (not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-II: Lower case UUID "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display. (not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]')) / info / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.1.6')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van @root MOET '2.16.840.1.113883.1.6' zijn. (string(@root)=('2.16.840.1.113883.1.6') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="interactionId"
                    select="self::node()[@root='2.16.840.1.113883.1.6']/@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): Transmission: @extension moet overeenkomen met het startelement van het bericht (not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3672-false-d46700e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1']"
                 priority="1018"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II: @root is required if @nullFlavor is not present (@nullFlavor or (not(@nullFlavor) and @root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II: @root may not be used if @nullFlavor is present (not(@nullFlavor) or (@nullFlavor and not(@root)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-II: @identifierName may not be used if @nullFlavor is present (not(@nullFlavor and @identifierName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-II: @displayable may not be used if @nullFlavor is present (not(@nullFlavor and @displayable) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-II: @reliability may not be used if @nullFlavor is present (not(@nullFlavor and @reliability) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present (not(@nullFlavor and @assigningAuthorityName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <xsl:message>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@root)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@root) &lt;= 128) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <xsl:message>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@extension)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@extension) &lt;= 64) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID. (not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations. (not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="root" select="@root"/>
      <xsl:variable name="extension" select="@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-II: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL be distinct (not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-II: Lower case UUID "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display. (not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]')) / info / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.9')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.9' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.9') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('F1')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van @extension MOET 'F1' zijn. (string(@extension)=('F1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3682-false-d46720e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:processingCode[@code='P']"
                 priority="1017"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive ((@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-CS: cannot have codeSystem (not(@codeSystem) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-CS: cannot have codeSystemName (not(@codeSystemName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-CS: cannot have codeSystemVersion (not(@codeSystemVersion) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-CS: cannot have displayName (not(@displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:originalText)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-CS: cannot have originalText (not(hl7:originalText) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-CS: cannot have qualifier (not(hl7:qualifier) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-CS: cannot have translation (not(hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='P')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'P''. (@nullFlavor or (@code='P') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3690-false-d46738e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:processingModeCode[@code='T']"
                 priority="1016"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive ((@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-CS: cannot have codeSystem (not(@codeSystem) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-CS: cannot have codeSystemName (not(@codeSystemName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-CS: cannot have codeSystemVersion (not(@codeSystemVersion) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-CS: cannot have displayName (not(@displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:originalText)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-CS: cannot have originalText (not(hl7:originalText) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-CS: cannot have qualifier (not(hl7:qualifier) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-CS: cannot have translation (not(hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='T')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'T''. (@nullFlavor or (@code='T') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3699-false-d46756e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acceptAckCode[@code='NE']"
                 priority="1015"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive ((@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-CS: cannot have codeSystem (not(@codeSystem) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-CS: cannot have codeSystemName (not(@codeSystemName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-CS: cannot have codeSystemVersion (not(@codeSystemVersion) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-CS: cannot have displayName (not(@displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:originalText)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-CS: cannot have originalText (not(hl7:originalText) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-CS: cannot have qualifier (not(hl7:qualifier) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-CS: cannot have translation (not(hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NE')"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'NE''. (@nullFlavor or (@code='NE') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3707-false-d46774e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]"
                 priority="1014"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@typeCode"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): attribute @typeCode MOET aanwezig zijn. (@typeCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('CA','CE','CR','AA','AE','AR')) then ($code) else ())"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@typeCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van typeCode MOET 'code CA of code CE of code CR of code AA of code AE of code AR' zijn. (not(@typeCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@typeCode='CA' or @typeCode='CE' or @typeCode='CR'"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): Transmission: ontvangstbevestigingen moeten acknowledgement/@typeCode CA, CE of CR hebben. In slechts sommige gevallen worden toch inhoudelijke antwoorden toegestaan (@typeCode is 'AA', 'AE' or 'AR'). (@typeCode='CA' or @typeCode='CE' or @typeCode='CR' / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@typeCode='AA' or @typeCode='CA' or hl7:acknowledgementDetail"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): Transmission: negatieve antwoordberichten moeten ook een reden hebben waarom (@typeCode='AA' or @typeCode='CA' or hl7:acknowledgementDetail / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetMessage[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:targetMessage[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:targetMessage[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetMessage[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:targetMessage[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:targetMessage[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3746-false-d46853e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:acknowledgementDetail"
                 priority="1013"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('E') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van @typeCode MOET 'E' zijn. (string(@typeCode)=('E') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="hl7:code[@code and @displayName] or hl7:text"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): Transmission: er moet een toelichting op de fout/waarschuwing zijn in hl7:code/@displayName of text (hl7:code[@code and @displayName] or hl7:text / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:code[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:code[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:code[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:code[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:text)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:text komt te vaak voor [max 1x]. (count(hl7:text)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3759-false-d46887e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:acknowledgementDetail/hl7:code[not(@nullFlavor)]"
                 priority="1012"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-CD: null or code and/or originalText (@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-CD: code requires codeSystem (@codeSystem or not(@code) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-CD: codeSystemName only if codeSystem (@codeSystem or not(@codeSystemName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-CD: codeSystemVersion only if codeSystem (@codeSystem or not(@codeSystemVersion) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-CD: displayName only if code (@code or not(@displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @code)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-CD: co-occurence violation. Cannot have code and null (not(@nullFlavor and @code) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-CD: co-occurence violation. Cannot have displayName and null (not(@nullFlavor and @displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.) (not(.//hl7:translation/@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-11-CD: translation code requires codeSystem (not(.//hl7:translation[@codeSystem][not(@code)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-CD: translation codeSystemName only if codeSystem (not(.//hl7:translation[@codeSystemName][not(@codeSystem)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-CD: translation codeSystemVersion only if codeSystem (not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-14-CD: translation displayName only if code (not(.//hl7:translation[@displayName][not(@code)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="matches(@displayName,'[\r\n\t]')">
         <xsl:message>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems. (matches(@displayName,'[\r\n\t]') / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="code" select="@code"/>
      <xsl:variable name="codeSystem" select="@codeSystem"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@code=$code][@codeSystem=$codeSystem])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-18-CD: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (@code=<xsl:text/>
               <xsl:value-of select="$code"/>
               <xsl:text/> @codeSystem=<xsl:text/>
               <xsl:value-of select="$codeSystem"/>
               <xsl:text/>) SHALL be distinct (not($set_other[@code=$code][@codeSystem=$codeSystem]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="translations"
                    select=".//hl7:translation/concat(@code,@codeSystem)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count($translations)=count(distinct-values($translations))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-19-CD: [RIM-002] translations SHALL be distinct (count($translations)=count(distinct-values($translations)) / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2) (not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-CE: cannot have qualifier (not(hl7:qualifier) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_CE)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@displayName or @codeSystem='2.16.840.1.113883.5.1100' or @codeSystem='2.16.840.1.113883.2.4.6.6.1.1000' or @codeSystem='2.16.840.1.113883.5.4'"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): Transmission: als de code niet uit een van de standaardcodesystemen '2.16.840.1.113883.5.1100', '2.16.840.1.113883.2.4.6.6.1.1000', of '2.16.840.1.113883.5.4' komt is het @displayName attribuut verplicht (@displayName or @codeSystem='2.16.840.1.113883.5.1100' or @codeSystem='2.16.840.1.113883.2.4.6.6.1.1000' or @codeSystem='2.16.840.1.113883.5.4' / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3769-false-d46899e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:acknowledgementDetail/hl7:text"
                 priority="1011"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor | * | text()[string-length(normalize-space()) gt 0]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-BIN: there must be a nullFlavor, or content must be non-empty (@nullFlavor | * | text()[string-length(normalize-space()) gt 0] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_BIN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@integrityCheck) or @integrityCheckAlgorithm"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-ED: integrityCheckAlgorithm required if integrityCheck (not(@integrityCheck) or @integrityCheckAlgorithm / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-ED: thumbnails not null and reference (not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-ED: thumbnails do not have thumbnails (not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-ED: compression only on binary ((@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-ED: value implies mediaType is text/plain (not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain')) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-ED: no history or updateMode (count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value or xml) or not(@charset)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-ED: no charset for value or xml (not(@value or xml) or not(@charset) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation) or hl7:thumbnail[not(hl7:translation)]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-9-ED: no nested translations (not(hl7:translation) or hl7:thumbnail[not(hl7:translation)] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @mediaType) or @mediaType = 'text/plain'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-ED: no mediaType if null (not(@nullFlavor and @mediaType) or @mediaType = 'text/plain' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @charset)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-11-ED: no charset if null (not(@nullFlavor and @charset) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @language)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-ED: no language if null (not(@nullFlavor and @language) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @compression)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-ED: no compression if null (not(@nullFlavor and @compression) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @integrityCheck)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-14-ED: no integrityCheck if null (not(@nullFlavor and @integrityCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-15-ED: no integrityCheckAlgorithm if null (not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-16-ED: no thumbnail if null (not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-17-ED: no translation if null (not(@nullFlavor and hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@language) or matches(@language,$RFC3066,'i')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-18-ED: @language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2) (not(@language) or matches(@language,$RFC3066,'i') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:reference)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-ST: no reference (not(hl7:reference) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:thumbnail)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-ST: no thumbnail (not(hl7:thumbnail) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@representation) or @representation='TXT'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-ST: @representation SHALL be 'TXT' if present. (not(@representation) or @representation='TXT' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@mediaType) or @mediaType='text/plain'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-ST: @mediaType SHALL be 'text/plain' if present. (not(@mediaType) or @mediaType='text/plain' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@compression)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-ST: @compression SHALL NOT be used on ST. (not(@compression) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@integrityCheck)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-ST: @integrityCheck SHALL NOT be used on ST. (not(@integrityCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-9-ST: @integrityCheckAlgorithm SHALL NOT be used on ST. (not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3775-false-d46911e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:acknowledgementDetail/hl7:location"
                 priority="1010"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor | * | text()[string-length(normalize-space()) gt 0]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-BIN: there must be a nullFlavor, or content must be non-empty (@nullFlavor | * | text()[string-length(normalize-space()) gt 0] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_BIN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@integrityCheck) or @integrityCheckAlgorithm"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-ED: integrityCheckAlgorithm required if integrityCheck (not(@integrityCheck) or @integrityCheckAlgorithm / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-ED: thumbnails not null and reference (not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-ED: thumbnails do not have thumbnails (not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-ED: compression only on binary ((@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-ED: value implies mediaType is text/plain (not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain')) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-ED: no history or updateMode (count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value or xml) or not(@charset)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-ED: no charset for value or xml (not(@value or xml) or not(@charset) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation) or hl7:thumbnail[not(hl7:translation)]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-9-ED: no nested translations (not(hl7:translation) or hl7:thumbnail[not(hl7:translation)] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @mediaType) or @mediaType = 'text/plain'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-ED: no mediaType if null (not(@nullFlavor and @mediaType) or @mediaType = 'text/plain' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @charset)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-11-ED: no charset if null (not(@nullFlavor and @charset) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @language)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-ED: no language if null (not(@nullFlavor and @language) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @compression)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-ED: no compression if null (not(@nullFlavor and @compression) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @integrityCheck)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-14-ED: no integrityCheck if null (not(@nullFlavor and @integrityCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-15-ED: no integrityCheckAlgorithm if null (not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-16-ED: no thumbnail if null (not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-17-ED: no translation if null (not(@nullFlavor and hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@language) or matches(@language,$RFC3066,'i')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-18-ED: @language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2) (not(@language) or matches(@language,$RFC3066,'i') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ED)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:reference)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-ST: no reference (not(hl7:reference) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:thumbnail)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-ST: no thumbnail (not(hl7:thumbnail) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@representation) or @representation='TXT'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-ST: @representation SHALL be 'TXT' if present. (not(@representation) or @representation='TXT' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@mediaType) or @mediaType='text/plain'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-ST: @mediaType SHALL be 'text/plain' if present. (not(@mediaType) or @mediaType='text/plain' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@compression)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-ST: @compression SHALL NOT be used on ST. (not(@compression) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@integrityCheck)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-ST: @integrityCheck SHALL NOT be used on ST. (not(@integrityCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-9-ST: @integrityCheckAlgorithm SHALL NOT be used on ST. (not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ST)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3782-false-d46923e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:targetMessage[not(@nullFlavor)]"
                 priority="1009"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3787-false-d46942e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:targetMessage[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1008"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II: @root is required if @nullFlavor is not present (@nullFlavor or (not(@nullFlavor) and @root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II: @root may not be used if @nullFlavor is present (not(@nullFlavor) or (@nullFlavor and not(@root)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-II: @identifierName may not be used if @nullFlavor is present (not(@nullFlavor and @identifierName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-II: @displayable may not be used if @nullFlavor is present (not(@nullFlavor and @displayable) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-II: @reliability may not be used if @nullFlavor is present (not(@nullFlavor and @reliability) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present (not(@nullFlavor and @assigningAuthorityName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <xsl:message>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@root)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@root) &lt;= 128) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <xsl:message>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@extension)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@extension) &lt;= 64) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID. (not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations. (not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="root" select="@root"/>
      <xsl:variable name="extension" select="@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-II: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL be distinct (not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-II: Lower case UUID "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display. (not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]')) / info / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3794-false-d46954e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver"
                 priority="1007"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('RCV') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van @typeCode MOET 'RCV' zijn. (string(@typeCode)=('RCV') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:device[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:device[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:device[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3812-false-d46977e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/hl7:device[not(@nullFlavor)]"
                 priority="1006"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:name komt te vaak voor [max 1x]. (count(hl7:name)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3817-false-d47003e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1005"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II: @root is required if @nullFlavor is not present (@nullFlavor or (not(@nullFlavor) and @root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II: @root may not be used if @nullFlavor is present (not(@nullFlavor) or (@nullFlavor and not(@root)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-II: @identifierName may not be used if @nullFlavor is present (not(@nullFlavor and @identifierName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-II: @displayable may not be used if @nullFlavor is present (not(@nullFlavor and @displayable) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-II: @reliability may not be used if @nullFlavor is present (not(@nullFlavor and @reliability) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present (not(@nullFlavor and @assigningAuthorityName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <xsl:message>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@root)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@root) &lt;= 128) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <xsl:message>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@extension)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@extension) &lt;= 64) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID. (not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations. (not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="root" select="@root"/>
      <xsl:variable name="extension" select="@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-II: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL be distinct (not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-II: Lower case UUID "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display. (not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]')) / info / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3823-false-d47015e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:name"
                 priority="1004"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1.1-EN: entity name shall not be null and have elements or text (not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content) (not(* and string-length(normalize-space(string-join(text(),'')))&gt;0) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1.3-EN: entity name that is not null shall not be empty (@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <xsl:message>dtr1-3-EN: empty name particles should not be present. (*[not(@nullFlavor)][normalize-space(.)=''] / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <xsl:message>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct. (substring(normalize-space(.),1,1)='"' / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-EN: [RIM-001] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> elements which are not null (not(@nullFlavor and $set_other[not(@nullFlavor)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-EN: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$value"/>
               <xsl:text/>) SHALL be distinct (not($set_other[string-join((.//@use|.//text()),'')=$value]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier (not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3831-false-d47027e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender"
                 priority="1003"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SND') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): de waarde van @typeCode MOET 'SND' zijn. (string(@typeCode)=('SND') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:device[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:device[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:device[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3849-false-d47050e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/hl7:device[not(@nullFlavor)]"
                 priority="1002"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): element hl7:name komt te vaak voor [max 1x]. (count(hl7:name)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3854-false-d47076e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1001"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II: @root is required if @nullFlavor is not present (@nullFlavor or (not(@nullFlavor) and @root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II: @root may not be used if @nullFlavor is present (not(@nullFlavor) or (@nullFlavor and not(@root)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-II: @identifierName may not be used if @nullFlavor is present (not(@nullFlavor and @identifierName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-II: @displayable may not be used if @nullFlavor is present (not(@nullFlavor and @displayable) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-II: @reliability may not be used if @nullFlavor is present (not(@nullFlavor and @reliability) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present (not(@nullFlavor and @assigningAuthorityName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <xsl:message>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@root)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@root) &lt;= 128) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <xsl:message>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
            <xsl:value-of select="string-length(@extension)"/>
            <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient (not(string-length(@extension) &lt;= 64) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID. (not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations. (not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <xsl:variable name="root" select="@root"/>
      <xsl:variable name="extension" select="@extension"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-12-II: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL be distinct (not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-13-II: Lower case UUID "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display. (not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]')) / info / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e3860-false-d47088e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/hl7:device[not(@nullFlavor)]/hl7:name"
                 priority="1000"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[         not(@nullFlavor) or         (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or         (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or         (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension)          )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[.='text/plain']|@representation[.='TXT']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1.1-EN: entity name shall not be null and have elements or text (not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content) (not(* and string-length(normalize-space(string-join(text(),'')))&gt;0) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1.3-EN: entity name that is not null shall not be empty (@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <xsl:message>dtr1-3-EN: empty name particles should not be present. (*[not(@nullFlavor)][normalize-space(.)=''] / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <xsl:message>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct. (substring(normalize-space(.),1,1)='"' / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-EN: [RIM-001] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> elements which are not null (not(@nullFlavor and $set_other[not(@nullFlavor)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-EN: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$value"/>
               <xsl:text/>) SHALL be distinct (not($set_other[string-join((.//@use|.//text()),'')=$value]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier (not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_EN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M12"/>
   <xsl:template match="@*|node()" priority="-2" mode="M12">
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000-closedAcknowledgement-->


	  <!--RULE d14e3575-true-d47147e0-->
   <xsl:template match="hl7:MCCI_IN000002/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code='NICTIZEd2005-Okt'] | self::hl7:interactionId[@root='2.16.840.1.113883.1.6'] | self::hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'] | self::hl7:processingCode[@code='P'] | self::hl7:processingModeCode[@code='T'] | self::hl7:acceptAckCode[@code='NE'] | self::hl7:acknowledgement[not(@nullFlavor)])]"
                 priority="1007"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3575-true-d47147e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code='NICTIZEd2005-Okt'] | hl7:interactionId[@root='2.16.840.1.113883.1.6'] | hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'] | hl7:processingCode[@code='P'] | hl7:processingModeCode[@code='T'] | hl7:acceptAckCode[@code='NE'] | hl7:acknowledgement[not(@nullFlavor)] (rule-reference: d14e3575-true-d47147e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3707-true-d47226e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/*[not(self::hl7:acknowledgementDetail | self::hl7:targetMessage[not(@nullFlavor)] | self::hl7:receiver | self::hl7:sender)]"
                 priority="1006"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3707-true-d47226e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:acknowledgementDetail | hl7:targetMessage[not(@nullFlavor)] | hl7:receiver | hl7:sender (rule-reference: d14e3707-true-d47226e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3746-true-d47252e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:acknowledgementDetail/*[not(self::hl7:code[not(@nullFlavor)] | self::hl7:text | self::hl7:location)]"
                 priority="1005"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3746-true-d47252e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[not(@nullFlavor)] | hl7:text | hl7:location (rule-reference: d14e3746-true-d47252e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3782-true-d47286e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:targetMessage[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)])]"
                 priority="1004"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3782-true-d47286e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d14e3782-true-d47286e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3794-true-d47308e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/*[not(self::hl7:device[not(@nullFlavor)])]"
                 priority="1003"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3794-true-d47308e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d14e3794-true-d47308e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3812-true-d47329e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
                 priority="1002"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3812-true-d47329e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d14e3812-true-d47329e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3831-true-d47357e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/*[not(self::hl7:device[not(@nullFlavor)])]"
                 priority="1001"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3831-true-d47357e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d14e3831-true-d47357e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e3849-true-d47378e0-->
   <xsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
                 priority="1000"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(mcci2-ack)/d14e3849-true-d47378e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d14e3849-true-d47378e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M13"/>
   <xsl:template match="@*|node()" priority="-2" mode="M13">
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
</xsl:stylesheet>
