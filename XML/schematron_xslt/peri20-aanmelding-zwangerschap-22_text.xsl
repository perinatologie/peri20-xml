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

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000Aanmelding zwangerschap-->


	  <!--RULE d19e31264-false-d310030e0-->
   <xsl:template match="/" priority="1109" mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] is mandatory [min 1x]. (count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] komt te vaak voor [max 1x]. (count(hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e31273-false-d310278e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]"
                 priority="1108"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:creationTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:creationTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:creationTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:creationTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:versionCode[@code='NICTIZEd2005-Okt'] is mandatory [min 1x]. (count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:versionCode[@code='NICTIZEd2005-Okt'] komt te vaak voor [max 1x]. (count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] is mandatory [min 1x]. (count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] komt te vaak voor [max 1x]. (count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] is mandatory [min 1x]. (count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] komt te vaak voor [max 1x]. (count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingCode[@code='P'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:processingCode[@code='P'] is mandatory [min 1x]. (count(hl7:processingCode[@code='P'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingCode[@code='P'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:processingCode[@code='P'] komt te vaak voor [max 1x]. (count(hl7:processingCode[@code='P'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingModeCode[@code='T'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:processingModeCode[@code='T'] is mandatory [min 1x]. (count(hl7:processingModeCode[@code='T'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingModeCode[@code='T'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:processingModeCode[@code='T'] komt te vaak voor [max 1x]. (count(hl7:processingModeCode[@code='T'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:acceptAckCode[@code='AL' or @code='NE'] is mandatory [min 1x]. (count(hl7:acceptAckCode[@code='AL' or @code='NE'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:acceptAckCode[@code='AL' or @code='NE'] komt te vaak voor [max 1x]. (count(hl7:acceptAckCode[@code='AL' or @code='NE'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:receiver)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:receiver is required [min 1x]. (count(hl7:receiver)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:receiver)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:receiver komt te vaak voor [max 1x]. (count(hl7:receiver)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:sender[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:sender[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:sender[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:sender[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:sender[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:sender[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="transmission" select="."/>
      <xsl:variable name="interactionId" select="$transmission/local-name()"/>
      <xsl:variable name="interactionVocabFile"
                    select="'../vocab/2.16.840.1.113883.1.6.xml'"/>
      <xsl:variable name="interactionVocab"
                    select="if (doc-available($interactionVocabFile)) then doc($interactionVocabFile) else ()"/>
      <xsl:variable name="interactionName"
                    select="$interactionVocab/*/hl7:code[@code=$interactionId]/@displayName"/>
      <xsl:variable name="isActive"
                    select="not(exists($interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='Actief'][@value='false']))"/>
      <xsl:variable name="allowBsn"
                    select="exists($interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='AttentionLineMetBsn'][@value='true'])"/>
      <xsl:variable name="allowContextCode"
                    select="exists($interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='AttentionLineMetContextCode'][@value='true'])"/>
      <xsl:variable name="senderGbpOrGbk"
                    select="exists($transmission/hl7:ControlActProcess/hl7:authorOrPerformer/hl7:participant/hl7:AssignedPerson/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.3.11.8','2.16.840.1.113883.2.4.3.11.6')])"/>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$interactionVocab"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd. ($interactionVocab / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or $isActive"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: deze interactie <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) is niet (meer) Actief in <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/>
             (not($interactionVocab) or $isActive / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: er moet in deze interactie exact één AttentionLine met BSN zitten - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or  not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: er moet in deze interactie exact één AttentionLine met de ContextCode zitten - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (not($interactionVocab) or not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: deze interactie <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) is niet geconfigureerd voor gebruik van het element <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> voor BSN in <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> en afzender is niet GBK of GBP (not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: deze interactie <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) is niet geconfigureerd voor gebruik van het element <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> voor ContextCode in <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> en afzender is niet GBK of GBP (not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: er mag maximaal één AttentionLine met BSN zijn - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Transmission: er mag maximaal één AttentionLine met de ContextCode zijn - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e153-false-d310501e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]"
                 priority="1107"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@root and @extension"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): Transmission: id element mist root of extension (@root and @extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e162-false-d310512e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:creationTime[not(@nullFlavor)]"
                 priority="1106"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e171-false-d310527e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:versionCode[@code='NICTIZEd2005-Okt']"
                 priority="1105"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NICTIZEd2005-Okt')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'NICTIZEd2005-Okt''. (@nullFlavor or (@code='NICTIZEd2005-Okt') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e179-false-d310545e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:interactionId[@root='2.16.840.1.113883.1.6']"
                 priority="1104"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.1.6')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de waarde van @root MOET '2.16.840.1.113883.1.6' zijn. (string(@root)=('2.16.840.1.113883.1.6') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): Transmission: @extension moet overeenkomen met het startelement van het bericht (not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e190-false-d310561e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810']"
                 priority="1103"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.1')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('810')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de waarde van @extension MOET '810' zijn. (string(@extension)=('810') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e200-false-d310581e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingCode[@code='P']"
                 priority="1102"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='P')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'P''. (@nullFlavor or (@code='P') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e209-false-d310599e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingModeCode[@code='T']"
                 priority="1101"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='T')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'T''. (@nullFlavor or (@code='T') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e217-false-d310617e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:acceptAckCode[@code='AL' or @code='NE']"
                 priority="1100"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(MCCI_MT000100_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='AL') or (@code='NE')"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de elementwaarde MOET een zijn van 'code 'AL' of code 'NE''. (@nullFlavor or (@code='AL') or (@code='NE') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310618e31-false-d310638e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine"
                 priority="1099"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:keyWordText[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): element hl7:keyWordText[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:keyWordText[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:keyWordText[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): element hl7:keyWordText[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:keyWordText[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): element hl7:value[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:value[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): element hl7:value[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:value[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310618e36-false-d310665e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:keyWordText[not(@nullFlavor)]"
                 priority="1098"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-SC: code requires codeSystem (@codeSystem or not(@code) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SC)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-SC: codeSystemName only if codeSystem (@codeSystem or not(@codeSystemName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SC)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-SC: codeSystemVersion only if codeSystem (@codeSystem or not(@codeSystemVersion) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SC)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-SC: displayName only if code (@code or not(@displayName) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SC)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@code))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-SC: no code if null (not(@nullFlavor) or (@nullFlavor and not(@code)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SC)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@displayName))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-SC: no displayName if null (not(@nullFlavor) or (@nullFlavor and not(@displayName)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SC)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310618e48-false-d310676e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:value[not(@nullFlavor)]"
                 priority="1097"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e233-false-d310690e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver"
                 priority="1096"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('RCV') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de waarde van @typeCode MOET 'RCV' zijn. (string(@typeCode)=('RCV') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:device[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:device[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310687e58-false-d310718e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]"
                 priority="1095"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): element hl7:name komt te vaak voor [max 1x]. (count(hl7:name)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310687e63-false-d310742e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1094"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@root"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): attribute @root MOET aanwezig zijn. (@root / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@extension"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): attribute @extension MOET aanwezig zijn. (@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310687e73-false-d310761e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:name"
                 priority="1093"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310393e242-false-d310775e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]"
                 priority="1092"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SND') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): de waarde van @typeCode MOET 'SND' zijn. (string(@typeCode)=('SND') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:device[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:device[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:device[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310772e58-false-d310803e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]"
                 priority="1091"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): element hl7:name komt te vaak voor [max 1x]. (count(hl7:name)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310772e63-false-d310827e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1090"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@root"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): attribute @root MOET aanwezig zijn. (@root / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@extension"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri): attribute @extension MOET aanwezig zijn. (@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310772e73-false-d310846e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:name"
                 priority="1089"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e31279-false-d310944e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]"
                 priority="1088"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:authorOrPerformer[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:authorOrPerformer[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:authorOrPerformer[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:authorOrPerformer[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:authorOrPerformer[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:authorOrPerformer[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:overseer[@typeCode='RESP'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): element hl7:overseer[@typeCode='RESP'] komt te vaak voor [max 1x]. (count(hl7:overseer[@typeCode='RESP'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="controlActProcess" select="."/>
      <xsl:variable name="authorEntity"
                    select="$controlActProcess/hl7:authorOrPerformer//hl7:*[lower-case(local-name())=('assigneddevice','assignedperson')][1]"/>
      <xsl:variable name="authorDevice"
                    select="$authorEntity[lower-case(local-name())='assigneddevice']"/>
      <xsl:variable name="authorPerson"
                    select="$authorEntity[lower-case(local-name())='assignedperson']"/>
      <xsl:variable name="overseerPerson"
                    select="$controlActProcess/hl7:overseer//hl7:*[lower-case(local-name())=('assignedentity','assignedperson')][1]"/>
      <xsl:variable name="authorPath"
                    select="string-join($authorEntity/ancestor-or-self::*/name(),'/')"/>
      <xsl:variable name="overseerPath"
                    select="string-join($overseerPerson/ancestor-or-self::*/name(),'/')"/>
      <xsl:variable name="senderApplicationId"
                    select="$controlActProcess/../hl7:sender/hl7:device/hl7:id[@root='2.16.840.1.113883.2.4.6.6']/@extension"/>
      <xsl:variable name="authorApplicationId"
                    select="$authorDevice/hl7:id[@root='2.16.840.1.113883.2.4.6.6']/@extension"/>
      <xsl:variable name="overseerOrgId" select="$overseerPerson/hl7:Organization/hl7:id"/>
      <xsl:variable name="authorOrgId" select="$authorEntity/hl7:Organization/hl7:id"/>
      <xsl:variable name="interactionId" select="$controlActProcess/../local-name()"/>
      <xsl:variable name="interactionVocabFile"
                    select="'../vocab/2.16.840.1.113883.1.6.xml'"/>
      <xsl:variable name="interactionVocab"
                    select="if (doc-available($interactionVocabFile)) then doc($interactionVocabFile) else ()"/>
      <xsl:variable name="interactionTrustLevel"
                    select="$interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='Vertrouwensniveau']/@value"/>
      <xsl:variable name="interactionSendType"
                    select="$interactionVocab/*/hl7:code[@code=$interactionId]/hl7:qualifier[@name='Verzendtype']/@value"/>
      <xsl:variable name="interactionTriggerEventCode"
                    select="$interactionVocab/*/hl7:code[@code=$interactionId]/hl7:reference/@extension"/>
      <xsl:variable name="messageTriggerEventCode"
                    select="$controlActProcess/hl7:code/@code"/>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$interactionVocab"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd. ($interactionVocab / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/@moodCode moet 'EVN' zijn bij queries (not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/code (Trigger Event) moet bij deze interactie '<xsl:text/>
               <xsl:value-of select="$interactionTriggerEventCode"/>
               <xsl:text/>' zijn, gevonden is echter '<xsl:text/>
               <xsl:value-of select="$messageTriggerEventCode"/>
               <xsl:text/>' (not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag'"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/authorOrPerformer moet een persoon bevatten in berichten met vertrouwensniveau midden of hoog (not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag'"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/overseer moet de mandaterende persoon bevatten in berichten met vertrouwensniveau midden of hoog (not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Patiëntgebonden interacties, verzonden vanuit een patiëntenportaal (GBP), moeten een attentionLine hebben (not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Patiëntgebonden interacties, verzonden vanuit het klantenloket (GBK), moeten een attentionLine hebben (not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1'"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/id. Applicatie-id <xsl:text/>
               <xsl:value-of select="$authorApplicationId"/>
               <xsl:text/> komt niet overeen met Transmission-wrapper sender <xsl:text/>
               <xsl:value-of select="$senderApplicationId"/>
               <xsl:text/>. (empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/id moet tenminste het UZI-nummer systemen bevatten voor een XIS in een GBZ (not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension]"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/id moet de zorgaanbieder van het XIS identificeren (not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/code/@code moet "P" (Patiënt) zijn. Wettelijke vertegenwoordigers moet dit via het Klantenloket doen en kunnen dus niet als auteur optreden (not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/code/@code moet "KLANTENLOKET" zijn voor klantenloketmedewerkers (not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/code ontbreekt. Dit is alleen toegestaan als de rolcode 00.000 is. (not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111'] / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension]"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/id moet de zorgaanbieder van de persoon identificeren (not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/id/@root moet '2.16.840.1.113883.2.4.3.11.25' bevatten (not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/id moet de Nictiz-klantenloket organisatie identificeren (not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3'])"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/name moet de zorgaanbieder/organisatienaam bevatten (not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7'])"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/name moet de Nictiz-klantenloket organisatienaam bevatten (not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson) or $overseerPerson/hl7:code"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/code is verplicht (not($overseerPerson) or $overseerPerson/hl7:code / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/code/@code moet "P" (Patiënt) zijn of een geldige waarde uit RoleCodeWettelijkeVertegenwoordigerNL (not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/assignedPrincipalChoiceList/assignedPerson/name is verplicht (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/Organization/id moet de zorgaanbieder van de persoon identificeren (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>//Organization/name moet de zorgaanbiedernaam bevatten (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/Organization/addr moet tennminste de vestigingsplaats bevatten (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice']"/>
         <xsl:otherwise>
            <xsl:message>(aanmelding-zwangerschap-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/Organization/id. Organisatie van de overseer (<xsl:text/>
               <xsl:value-of select="$overseerOrgId/@root"/>
               <xsl:text/>#<xsl:text/>
               <xsl:value-of select="$overseerOrgId/@extension"/>
               <xsl:text/>) moet gelijk zijn aan die van de authorOrPerformer (<xsl:text/>
               <xsl:value-of select="$authorOrgId/@extension"/>
               <xsl:text/>) (not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310951e198-false-d311107e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor]"
                 priority="1087"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(ControlActMasterFileActPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@codeSystem='2.16.840.1.113883.1.18')"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.1.18''. (@nullFlavor or (@codeSystem='2.16.840.1.113883.1.18') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310951e206-false-d311124e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:effectiveTime"
                 priority="1086"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d311125e114-false-d311185e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer"
                 priority="1085"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@typeCode"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri): attribute @typeCode MOET aanwezig zijn. (@typeCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.19080-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@typeCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19080' x_ParticipationAuthorPerformer (2011-07-26T00:00:00). (not(@typeCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:participant[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri): element hl7:participant[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:participant[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:participant[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri): element hl7:participant[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:participant[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d311125e124-false-d311308e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]"
                 priority="1084"
                 mode="M12">
      <xsl:variable name="elmcount" select="count(hl7:AssignedDevice | hl7:AssignedPerson)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri): keuze (hl7:AssignedDevice  of  hl7:AssignedPerson) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri): keuze (hl7:AssignedDevice  of  hl7:AssignedPerson) bevat te veel elementen [max 1x] ($elmcount&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice"
                 priority="1083"
                 mode="M12">
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.2'] | hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | hl7:id[@root='2.16.528.1.1007.4'] | hl7:id)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&lt;=2"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.2']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.6']  of  hl7:id[@root='2.16.528.1.1007.4']  of  hl7:id) bevat te veel elementen [max 2x] ($elmcount&lt;=2 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Organization)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:Organization komt te vaak voor [max 1x]. (count(hl7:Organization)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.3.2']"
                 priority="1082"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.UZI: UZI-nummer @root MOET 2.16.528.1.1007.3.1 (Personen) of 2.16.528.1.1007.3.2 (Systemen) zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.UZI: UZI-nummer persoon MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.UZI: UZI-nummer systeem MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtUZIsystemen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1010-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.2')"/>
         <xsl:otherwise>
            <xsl:message>(dtUZIsystemen): de waarde van @root MOET '2.16.528.1.1007.3.2' zijn. (string(@root)=('2.16.528.1.1007.3.2') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1010-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.840.1.113883.2.4.6.6']"
                 priority="1081"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtAortaApplicationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@extension"/>
         <xsl:otherwise>
            <xsl:message>(dtAortaApplicationId): attribute @extension MOET aanwezig zijn. (@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@extension) or string-length(@extension)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(dtAortaApplicationId): attribuut @extension MOET datatype 'st' hebben (not(@extension) or string-length(@extension)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.6')"/>
         <xsl:otherwise>
            <xsl:message>(dtAortaApplicationId): de waarde van @root MOET '2.16.840.1.113883.2.4.6.6' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.6') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1008-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.4']"
                 priority="1080"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtSBV-Zsystemen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1018-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.4')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-Zsystemen): de waarde van @root MOET '2.16.528.1.1007.4' zijn. (string(@root)=('2.16.528.1.1007.4') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1018-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id"
                 priority="1079"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): attribuut @nullFlavor MOET datatype 'cs' hebben (not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s'))) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization"
                 priority="1078"
                 mode="M12">
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te veel elementen [max 1x] ($elmcount&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:addr komt te vaak voor [max 1x]. (count(hl7:addr)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1077"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.URA: UZI-registerabonneenummer @root MOET 2.16.528.1.1007.3.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.URA: UZI-registerabonneenummer MOET 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtURAorganization): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn. (string(@root)=('2.16.528.1.1007.3.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007'][@extension='4']"
                 priority="1076"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-ZOrganizationId): de waarde van @root MOET '2.16.528.1.1007' zijn. (string(@root)=('2.16.528.1.1007') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('4')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-ZOrganizationId): de waarde van @extension MOET '4' zijn. (string(@extension)=('4') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']"
                 priority="1075"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.25')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBO-GBP): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.25' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.25') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"
                 priority="1074"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBKOrganizationId): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('7')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBKOrganizationId): de waarde van @extension MOET '7' zijn. (string(@extension)=('7') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1073"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr"
                 priority="1072"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:city[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:city[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:city[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:city[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090300_peri): element hl7:city[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:city[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901043-2016-02-09T092350.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson"
                 priority="1071"
                 mode="M12">
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']  of  hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:telecom)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:telecom komt te vaak voor [max 1x]. (count(hl7:telecom)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assignedPrincipalChoiceList)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:assignedPrincipalChoiceList komt te vaak voor [max 1x]. (count(hl7:assignedPrincipalChoiceList)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Organization[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:Organization[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Organization[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:Organization[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1007.3.1']"
                 priority="1070"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.UZI: UZI-nummer @root MOET 2.16.528.1.1007.3.1 (Personen) of 2.16.528.1.1007.3.2 (Systemen) zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.UZI: UZI-nummer persoon MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.UZI: UZI-nummer systeem MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtUZIpersonen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.1')"/>
         <xsl:otherwise>
            <xsl:message>(dtUZIpersonen): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn. (string(@root)=('2.16.528.1.1007.3.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
                 priority="1069"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.BSN: Burgerservicenummer @root MOET 2.16.840.1.113883.2.4.6.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.3') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.BSN: Burgerservicenummer MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.3') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.3') or (         (   number(substring(@extension,1,1))*9 )+         (   number(substring(@extension,2,1))*8 )+         (   number(substring(@extension,3,1))*7 )+         (   number(substring(@extension,4,1))*6 )+         (   number(substring(@extension,5,1))*5 )+         (   number(substring(@extension,6,1))*4 )+         (   number(substring(@extension,7,1))*3 )+         (   number(substring(@extension,8,1))*2 )+         (   number(substring(@extension,9,1))*-1) ) mod 11=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.BSN: Burgerservicenummer voldoet niet aan modulo 11 proef. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.3') or ( ( number(substring(@extension,1,1))*9 )+ ( number(substring(@extension,2,1))*8 )+ ( number(substring(@extension,3,1))*7 )+ ( number(substring(@extension,4,1))*6 )+ ( number(substring(@extension,5,1))*5 )+ ( number(substring(@extension,6,1))*4 )+ ( number(substring(@extension,7,1))*3 )+ ( number(substring(@extension,8,1))*2 )+ ( number(substring(@extension,9,1))*-1) ) mod 11=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@extension"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): attribute @extension MOET aanwezig zijn. (@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@extension) or string-length(@extension)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): attribuut @extension MOET datatype 'st' hebben (not(@extension) or string-length(@extension)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(@extension) = 9"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): Het BSN dient altijd 9 cijfers te bevatten. Het BSN kan ook voorloopnullen bevatten, oftewel beginnen met een nul. (string-length(@extension) = 9 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']"
                 priority="1068"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtBatchInzageAuteur): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.7.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtBatchInzageAuteur): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.7.3' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.7.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']"
                 priority="1067"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtNictizKlantenloketPKIO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1003.1.3.5.4.1')"/>
         <xsl:otherwise>
            <xsl:message>(dtNictizKlantenloketPKIO): de waarde van @root MOET '2.16.528.1.1003.1.3.5.4.1' zijn. (string(@root)=('2.16.528.1.1003.1.3.5.4.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1066"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.AGB: AGB-code @root MOET 2.16.840.1.113883.2.4.6.1 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.AGB: AGB-code moet 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtAGB): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(dtAGB): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1065"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.2 RoleCodeNL - zorgverlenertype (personen) (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.4 RoleCodeNL - toegang patiënt (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.5 RoleCodeNL - wettelijke vertegenwoording (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111')"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): Control Act: <xsl:text/>
               <xsl:value-of select="name(..)"/>
               <xsl:text/>/<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> moet een UZI-rolcode 00.000 is niet toegestaan (not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList"
                 priority="1064"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assignedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:assignedPerson[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assignedPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:assignedPerson[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]"
                 priority="1063"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]"
                 priority="1062"
                 mode="M12">
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te veel elementen [max 1x] ($elmcount&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:addr komt te vaak voor [max 1x]. (count(hl7:addr)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1061"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.URA: UZI-registerabonneenummer @root MOET 2.16.528.1.1007.3.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.URA: UZI-registerabonneenummer MOET 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtURAorganization): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn. (string(@root)=('2.16.528.1.1007.3.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']"
                 priority="1060"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-ZOrganizationId): de waarde van @root MOET '2.16.528.1.1007' zijn. (string(@root)=('2.16.528.1.1007') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('4')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-ZOrganizationId): de waarde van @extension MOET '4' zijn. (string(@extension)=('4') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']"
                 priority="1059"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.25')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBO-GBP): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.25' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.25') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"
                 priority="1058"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBKOrganizationId): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('7')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBKOrganizationId): de waarde van @extension MOET '7' zijn. (string(@extension)=('7') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1057"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr"
                 priority="1056"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:city)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:city komt te vaak voor [max 1x]. (count(hl7:city)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d312359e67-false-d312394e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']"
                 priority="1055"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('RESP')"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri): de waarde van @typeCode MOET 'RESP' zijn. (string(@typeCode)=('RESP') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:AssignedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri): element hl7:AssignedPerson[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:AssignedPerson[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]"
                 priority="1054"
                 mode="M12">
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']  of  hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:telecom)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:telecom komt te vaak voor [max 1x]. (count(hl7:telecom)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assignedPrincipalChoiceList)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:assignedPrincipalChoiceList komt te vaak voor [max 1x]. (count(hl7:assignedPrincipalChoiceList)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Organization[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:Organization[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Organization[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:Organization[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:Organization[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']"
                 priority="1053"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.UZI: UZI-nummer @root MOET 2.16.528.1.1007.3.1 (Personen) of 2.16.528.1.1007.3.2 (Systemen) zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.UZI: UZI-nummer persoon MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.UZI: UZI-nummer systeem MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtUZIpersonen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.1')"/>
         <xsl:otherwise>
            <xsl:message>(dtUZIpersonen): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn. (string(@root)=('2.16.528.1.1007.3.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1009-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
                 priority="1052"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.BSN: Burgerservicenummer @root MOET 2.16.840.1.113883.2.4.6.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.3') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.BSN: Burgerservicenummer MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.3') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.3') or (         (   number(substring(@extension,1,1))*9 )+         (   number(substring(@extension,2,1))*8 )+         (   number(substring(@extension,3,1))*7 )+         (   number(substring(@extension,4,1))*6 )+         (   number(substring(@extension,5,1))*5 )+         (   number(substring(@extension,6,1))*4 )+         (   number(substring(@extension,7,1))*3 )+         (   number(substring(@extension,8,1))*2 )+         (   number(substring(@extension,9,1))*-1) ) mod 11=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.BSN: Burgerservicenummer voldoet niet aan modulo 11 proef. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.3') or ( ( number(substring(@extension,1,1))*9 )+ ( number(substring(@extension,2,1))*8 )+ ( number(substring(@extension,3,1))*7 )+ ( number(substring(@extension,4,1))*6 )+ ( number(substring(@extension,5,1))*5 )+ ( number(substring(@extension,6,1))*4 )+ ( number(substring(@extension,7,1))*3 )+ ( number(substring(@extension,8,1))*2 )+ ( number(substring(@extension,9,1))*-1) ) mod 11=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@extension"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): attribute @extension MOET aanwezig zijn. (@extension / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@extension) or string-length(@extension)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): attribuut @extension MOET datatype 'st' hebben (not(@extension) or string-length(@extension)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(@extension) = 9"/>
         <xsl:otherwise>
            <xsl:message>(dtBSNId): Het BSN dient altijd 9 cijfers te bevatten. Het BSN kan ook voorloopnullen bevatten, oftewel beginnen met een nul. (string-length(@extension) = 9 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1012-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']"
                 priority="1051"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtBatchInzageAuteur): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.7.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtBatchInzageAuteur): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.7.3' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.7.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1015-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']"
                 priority="1050"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtNictizKlantenloketPKIO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1003.1.3.5.4.1')"/>
         <xsl:otherwise>
            <xsl:message>(dtNictizKlantenloketPKIO): de waarde van @root MOET '2.16.528.1.1003.1.3.5.4.1' zijn. (string(@root)=('2.16.528.1.1003.1.3.5.4.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1016-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1049"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.AGB: AGB-code @root MOET 2.16.840.1.113883.2.4.6.1 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.AGB: AGB-code moet 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtAGB): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(dtAGB): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1017-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1048"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.2 RoleCodeNL - zorgverlenertype (personen) (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.4 RoleCodeNL - toegang patiënt (DYNAMISCH) of 2.16.840.1.113883.2.4.3.11.60.102.11.5 RoleCodeNL - wettelijke vertegenwoording (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111')"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): Control Act: <xsl:text/>
               <xsl:value-of select="name(..)"/>
               <xsl:text/>/<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> moet een UZI-rolcode 00.000 is niet toegestaan (not(@code='00.000' and @codeSystem='2.16.840.1.113883.2.4.15.111') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList"
                 priority="1047"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assignedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:assignedPerson[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assignedPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:assignedPerson[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:assignedPerson[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]"
                 priority="1046"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]"
                 priority="1045"
                 mode="M12">
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): keuze (hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.528.1.1007'][@extension='4']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']) bevat te veel elementen [max 1x] ($elmcount&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:addr komt te vaak voor [max 1x]. (count(hl7:addr)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1044"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.URA: UZI-registerabonneenummer @root MOET 2.16.528.1.1007.3.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.URA: UZI-registerabonneenummer MOET 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(dtURAorganization): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.3')"/>
         <xsl:otherwise>
            <xsl:message>(dtURAorganization): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn. (string(@root)=('2.16.528.1.1007.3.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1011-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']"
                 priority="1043"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtSBV-ZOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-ZOrganizationId): de waarde van @root MOET '2.16.528.1.1007' zijn. (string(@root)=('2.16.528.1.1007') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('4')"/>
         <xsl:otherwise>
            <xsl:message>(dtSBV-ZOrganizationId): de waarde van @extension MOET '4' zijn. (string(@extension)=('4') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1019-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']"
                 priority="1042"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtGBO-GBP): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11.25')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBO-GBP): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11.25' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11.25') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1020-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"
                 priority="1041"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(dtGBKOrganizationId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.11')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBKOrganizationId): de waarde van @root MOET '2.16.840.1.113883.2.4.3.11' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.11') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@extension)=('7')"/>
         <xsl:otherwise>
            <xsl:message>(dtGBKOrganizationId): de waarde van @extension MOET '7' zijn. (string(@extension)=('7') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.1021-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1040"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.1.11.1 RoleCodeNL - zorgaanbiedertype (organisaties) (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr"
                 priority="1039"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:city)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(COCT_MT090100_peri): element hl7:city komt te vaak voor [max 1x]. (count(hl7:city)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901040-2016-02-08T170641.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d310951e234-false-d313024e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]"
                 priority="1038"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SUBJ') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): de waarde van @typeCode MOET 'SUBJ' zijn. (string(@typeCode)=('SUBJ') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('false') or not(@contextConductionInd)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): de waarde van @contextConductionInd MOET 'false' zijn. (string(@contextConductionInd)=('false') or not(@contextConductionInd) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): element hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] is required [min 1x]. (count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActMasterFileActPeriAanmZw): element hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] komt te vaak voor [max 1x]. (count(hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e25-false-d313109e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]"
                 priority="1037"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('REG') or not(@classCode)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van @classCode MOET 'REG' zijn. (string(@classCode)=('REG') or not(@classCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@moodCode"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): attribute @moodCode MOET aanwezig zijn. (@moodCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@moodCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.10196-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@moodCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10196' ActMood (2011-07-26T00:00:00). (not(@moodCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] is required [min 1x]. (count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active' or @nullFlavor])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:statusCode[@code='active' or @nullFlavor] is required [min 1x]. (count(hl7:statusCode[@code='active' or @nullFlavor])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:statusCode[@code='active' or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:effectiveTime is required [min 1x]. (count(hl7:effectiveTime)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject1)=0"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:subject1 MAG NIET voorkomen. (count(hl7:subject1)=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]] is mandatory [min 1x]. (count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]] komt te vaak voor [max 1x]. (count(hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e34-false-d313214e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:id"
                 priority="1036"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="sendingId"
                    select="string-join(../../../../hl7:sender/hl7:device/hl7:id/(@root|@extension),'#')"/>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e39-false-d313226e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]"
                 priority="1035"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4')"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de elementwaarde MOET een zijn van 'code '900000' codeSystem '2.16.840.1.113883.2.4.15.4''. (@nullFlavor or (@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e44-false-d313244e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:statusCode[@code='active' or @nullFlavor]"
                 priority="1034"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de elementwaarde MOET een zijn van 'code 'active''. (@nullFlavor or (@code='active') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e50-false-d313261e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime"
                 priority="1033"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="not(@nullFlavor and @operator) or @operator = 'I'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-SXCM_TS: not operator if null (not(@nullFlavor and @operator) or @operator = 'I' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_SXCM_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(descendant-or-self::*[@nullFlavor and (@value|@unit|hl7:low|hl7:center|hl7:high|hl7:width)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-IVL_TS: null violation. Cannot have @nullFlavor and @value or other child elements (not(descendant-or-self::*[@nullFlavor and (@value|@unit|hl7:low|hl7:center|hl7:high|hl7:width)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value and hl7:*)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-IVL_TS: co-occurence violation. Cannot have @value and other child elements (not(@value and hl7:*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value and (hl7:low|hl7:center|hl7:high|hl7:width))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-2-IVL_TS: co-occurence violation. Cannot have @value and child elements (not(@value and (hl7:low|hl7:center|hl7:high|hl7:width)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:center and (hl7:low|hl7:high|hl7:width))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-3-IVL_TS: co-occurence violation. Cannot have center and other elements (not(hl7:center and (hl7:low|hl7:high|hl7:width)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:width and hl7:low and hl7:high)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-4-IVL_TS: co-occurence violation. Cannot have width and have both low and high elements (not(hl7:width and hl7:low and hl7:high) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*[@updateMode])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-IVL_TS: no updateMode on IVL attributes (not(hl7:*[@updateMode]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:low/@value = hl7:high/@value)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-IVL_TS: low/@value must not be equal to high/@value (not(hl7:low/@value = hl7:high/@value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:width[@unit][not(@value)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-PQR: width element: no unit without value (not(hl7:width[@unit][not(@value)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:width/hl7:translation)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-PQR: width element: no translation (not(hl7:width/hl7:translation) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:low/@value and hl7:high/@value) or number(substring(concat(hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-IVL_TS: low/@value must be before high/@value (not(hl7:low/@value and hl7:high/@value) or number(substring(concat(hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:high/@value,'00000000000000'),1,14)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:low[@nullFlavor='PINF'])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-1-IVL_TS: low must be lower than or equal to high. Found low boundary PINF (Positive Infinity) (not(hl7:low[@nullFlavor='PINF']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:high[@nullFlavor='NINF'])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-2-IVL_TS: low must be lower than or equal to high. Found high boundary NINF (Negative Infinity) (not(hl7:high[@nullFlavor='NINF']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-8-IVL_TS: for width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed (matches(hl7:width/@unit, $tum) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theTS" select="hl7:low/@value"/>
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
            <xsl:message>dtr1-9-IVL_TS: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/low "<xsl:text/>
               <xsl:value-of select="$theTS"/>
               <xsl:text/>" is not a valid timestamp. (empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime) / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theTS" select="hl7:center/@value"/>
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
            <xsl:message>dtr1-9-IVL_TS: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/center "<xsl:text/>
               <xsl:value-of select="$theTS"/>
               <xsl:text/>" is not a valid timestamp. (empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime) / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theTS" select="hl7:high/@value"/>
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
            <xsl:message>dtr1-9-IVL_TS: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/high "<xsl:text/>
               <xsl:value-of select="$theTS"/>
               <xsl:text/>" is not a valid timestamp. (empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime) / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): attribute @value MAG NIET voorkomen. (not(@value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('UNK') or not(@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van @nullFlavor MOET 'UNK' zijn. (string(@nullFlavor)=('UNK') or not(@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:low)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:low komt te vaak voor [max 1x]. (count(hl7:low)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e56-false-d313287e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/hl7:low"
                 priority="1032"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('UNK') or not(@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van @nullFlavor MOET 'UNK' zijn. (string(@nullFlavor)=('UNK') or not(@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e67-false-d313332e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]"
                 priority="1031"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']] is mandatory [min 1x]. (count(hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']] komt te vaak voor [max 1x]. (count(hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e69-false-d313401e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]"
                 priority="1030"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'] is mandatory [min 1x]. (count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'] komt te vaak voor [max 1x]. (count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:statusCode[@code='active' or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:performer[@typeCode='PPRF'][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:performer[@typeCode='PPRF'][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:performer[@typeCode='PPRF'][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] is mandatory [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e71-false-d313509e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']"
                 priority="1029"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900927')"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900927' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.10.90.900927') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313510e18-false-d313525e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:id[not(@nullFlavor)]"
                 priority="1028"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(CareProvisionID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900002-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313036e80-false-d313537e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:statusCode[@code='active' or @nullFlavor]"
                 priority="1027"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(RegistrationEventACTPeriAanmZw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de elementwaarde MOET een zijn van 'code 'active''. (@nullFlavor or (@code='active') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313538e18-false-d313568e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']"
                 priority="1026"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): de waarde van @typeCode MOET 'SBJ' zijn. (string(@typeCode)=('SBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313538e30-false-d313610e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]"
                 priority="1025"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PAT')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): de waarde van @classCode MOET 'PAT' zijn. (string(@classCode)=('PAT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): identification mother requires either a BSN or a local id or both (count(hl7:id)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:addr komt te vaak voor [max 1x]. (count(hl7:addr)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:statusCode[@code='active'] is mandatory [min 1x]. (count(hl7:statusCode[@code='active'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='active'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x]. (count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x]. (count(hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313624e27-false-d313695e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id"
                 priority="1024"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.BSN: Burgerservicenummer @root MOET 2.16.840.1.113883.2.4.6.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.3') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.BSN: Burgerservicenummer MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.3') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.3') or (         (   number(substring(@extension,1,1))*9 )+         (   number(substring(@extension,2,1))*8 )+         (   number(substring(@extension,3,1))*7 )+         (   number(substring(@extension,4,1))*6 )+         (   number(substring(@extension,5,1))*5 )+         (   number(substring(@extension,6,1))*4 )+         (   number(substring(@extension,7,1))*3 )+         (   number(substring(@extension,8,1))*2 )+         (   number(substring(@extension,9,1))*-1) ) mod 11=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.BSN: Burgerservicenummer voldoet niet aan modulo 11 proef. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.3') or ( ( number(substring(@extension,1,1))*9 )+ ( number(substring(@extension,2,1))*8 )+ ( number(substring(@extension,3,1))*7 )+ ( number(substring(@extension,4,1))*6 )+ ( number(substring(@extension,5,1))*5 )+ ( number(substring(@extension,6,1))*4 )+ ( number(substring(@extension,7,1))*3 )+ ( number(substring(@extension,8,1))*2 )+ ( number(substring(@extension,9,1))*-1) ) mod 11=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.BSN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.3') or not(@root)"/>
         <xsl:otherwise>
            <xsl:message>(Burgerservicenummer): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.3') or not(@root) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313696e18-false-d313711e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id"
                 priority="1023"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(Lokalepersoonsidentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900029-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313712e16-false-d313723e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr"
                 priority="1022"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@use"/>
         <xsl:otherwise>
            <xsl:message>(Adresvrouw): attribute @use MOET aanwezig zijn. (@use / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(for $code in tokenize(@use,' ') return if ($code=('HP','PHYS','TMP','HP PHYS','TMP PHYS')) then ($code) else ())"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@use) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(Adresvrouw): de waarde van use MOET 'code HP of code PHYS of code TMP of code HP PHYS of code TMP PHYS' zijn. (not(@use) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:postalCode)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Adresvrouw): element hl7:postalCode is required [min 1x]. (count(hl7:postalCode)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:postalCode)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Adresvrouw): element hl7:postalCode komt te vaak voor [max 1x]. (count(hl7:postalCode)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313712e49-false-d313781e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr/hl7:postalCode"
                 priority="1021"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(Adresvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313538e50-false-d313793e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:statusCode[@code='active']"
                 priority="1020"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(Vrouwcounseling2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): de elementwaarde MOET een zijn van 'code 'active''. (@nullFlavor or (@code='active') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313538e60-false-d313820e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]"
                 priority="1019"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PSN')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): de waarde van @classCode MOET 'PSN' zijn. (string(@classCode)=('PSN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@determinerCode)=('INSTANCE')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): de waarde van @determinerCode MOET 'INSTANCE' zijn. (string(@determinerCode)=('INSTANCE') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:name is required [min 1x]. (count(hl7:name)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=2"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:name komt te vaak voor [max 2x]. (count(hl7:name)&lt;=2 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:birthTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:birthTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:birthTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:birthTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x]. (count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling2): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313838e25-false-d313890e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
                 priority="1018"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="not(*[tokenize(@qualifier,'\s')='LS'])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-PN: Person names SHALL NOT contain a name part qualified with 'LS' (Legal status for organizations) (not(*[tokenize(@qualifier,'\s')='LS']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_PN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(Naamvrouw2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900925-2014-01-21T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313891e16-false-d313902e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
                 priority="1017"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumvrouw): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313903e20-false-d313920e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1016"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(Etniciteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Etniciteit): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theNullFlavor" select="@nullFlavor"/>
      <xsl:variable name="validNullFlavorsFound"
                    select="exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or $validNullFlavorsFound"/>
         <xsl:otherwise>
            <xsl:message>(Etniciteit): de nulwaarde '<xsl:text/>
               <xsl:value-of select="@nullFlavor"/>
               <xsl:text/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30). (not(@nullFlavor) or $validNullFlavorsFound / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e27-false-d313948e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']"
                 priority="1015"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PPRF')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @typeCode MOET 'PPRF' zijn. (string(@typeCode)=('PPRF') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:responsibleParty[@classCode='ASSIGNED'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:responsibleParty[@classCode='ASSIGNED'] is required [min 1x]. (count(hl7:responsibleParty[@classCode='ASSIGNED'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:responsibleParty[@classCode='ASSIGNED'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:responsibleParty[@classCode='ASSIGNED'] komt te vaak voor [max 1x]. (count(hl7:responsibleParty[@classCode='ASSIGNED'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e81-false-d313978e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']"
                 priority="1014"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ASSIGNED')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @classCode MOET 'ASSIGNED' zijn. (string(@classCode)=('ASSIGNED') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.528.1.1007.3.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:agentPerson)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:agentPerson komt te vaak voor [max 1x]. (count(hl7:agentPerson)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:representedOrganization[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:representedOrganization[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:representedOrganization[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:representedOrganization[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:representedOrganization[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:representedOrganization[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e87-false-d314051e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.528.1.1007.3.1']"
                 priority="1013"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.UZI: UZI-nummer @root MOET 2.16.528.1.1007.3.1 (Personen) of 2.16.528.1.1007.3.2 (Systemen) zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.1' or @root='2.16.528.1.1007.3.2' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.UZI: UZI-nummer persoon MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.1') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-II.NL.UZI: UZI-nummer systeem MOET 9 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.2') or matches(@extension,'^[0-9]{9}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.UZI)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.1')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn. (string(@root)=('2.16.528.1.1007.3.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e92-false-d314067e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1012"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.AGB: AGB-code @root MOET 2.16.840.1.113883.2.4.6.1 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.AGB: AGB-code moet 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e97-false-d314083e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
                 priority="1011"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.2')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.22.98.2') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e110-false-d314139e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]"
                 priority="1010"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&lt;=3"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']) bevat te veel elementen [max 3x] ($elmcount&lt;=3 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.528.1.1007.3.3'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): element hl7:name komt te vaak voor [max 1x]. (count(hl7:name)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e112-false-d314205e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]"
                 priority="1009"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e116-false-d314217e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1008"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.840.1.113883.2.4.6.1'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.AGB: AGB-code @root MOET 2.16.840.1.113883.2.4.6.1 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.840.1.113883.2.4.6.1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.AGB: AGB-code moet 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.840.1.113883.2.4.6.1') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.AGB)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e121-false-d314233e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1007"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="@nullFlavor or @root='2.16.528.1.1007.3.3'"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-II.NL.URA: UZI-registerabonneenummer @root MOET 2.16.528.1.1007.3.3 zijn indien niet null. Gevonden: "<xsl:text/>
               <xsl:value-of select="@root"/>
               <xsl:text/>" (@nullFlavor or @root='2.16.528.1.1007.3.3' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-II.NL.URA: UZI-registerabonneenummer MOET 8 cijfers lang zijn. Gevonden: "<xsl:text/>
               <xsl:value-of select="@extension"/>
               <xsl:text/>" (not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_II.NL.URA)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.3')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn. (string(@root)=('2.16.528.1.1007.3.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d313921e126-false-d314249e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']"
                 priority="1006"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
            <xsl:message>(ZorgverlenerInstellingZonderType): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.22.96.6')"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenerInstellingZonderType): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.22.96.6') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d314250e18-false-d314265e0-->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/hl7:name"
                 priority="1005"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value) (descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ANY)</xsl:message>
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
         <xsl:when test="count(hl7:family)=0 and count(hl7:given)=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-ON: no parts may be person name type particles (count(hl7:family)=0 and count(hl7:given)=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ON)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-ON: organization names SHALL be element content (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_ON)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(Naamzorginstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900025-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]"
                 priority="1004"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): element hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]] is mandatory [min 1x]. (count(hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): element hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]] komt te vaak voor [max 1x]. (count(hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(RegistrationEventACTPeriAanmZw): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]"
                 priority="1002"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): element hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] is mandatory [min 1x]. (count(hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): element hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): element hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] is mandatory [min 1x]. (count(hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): element hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] komt te vaak voor [max 1x]. (count(hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]"
                 priority="1001"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): de elementwaarde MOET een zijn van 'code 'RedenVerzending' codeSystem '2.16.840.1.113883.2.4.4.13.53''. (@nullFlavor or (@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]"
                 priority="1000"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): de elementwaarde MOET een zijn van 'code 'aan' codeSystem '2.16.840.1.113883.2.4.4.13.53''. (@nullFlavor or (@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="xsiLocalName"
                    select="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <xsl:variable name="xsiLocalNS"
                    select="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')"/>
         <xsl:otherwise>
            <xsl:message>(RedenVerzendingAanmeldingZwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" (@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900935-2014-04-14T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M12"/>
   <xsl:template match="@*|node()" priority="-2" mode="M12">
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000-closedAanmelding zwangerschap-->
   <xsl:template match="text()" priority="-1" mode="M13"/>
   <xsl:template match="@*|node()" priority="-2" mode="M13">
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
</xsl:stylesheet>
