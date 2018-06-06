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

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000Administratief geboortebericht (2.2)-->


	  <!--RULE d14e42435-false-d381028e0-->
   <xsl:template match="/" priority="1106" mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] is mandatory [min 1x]. (count(hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] komt te vaak voor [max 1x]. (count(hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42444-false-d381112e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]"
                 priority="1105"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:creationTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:creationTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:creationTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:creationTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:versionCode[@code='NICTIZEd2005-Okt'] is mandatory [min 1x]. (count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:versionCode[@code='NICTIZEd2005-Okt'] komt te vaak voor [max 1x]. (count(hl7:versionCode[@code='NICTIZEd2005-Okt'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] is mandatory [min 1x]. (count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:interactionId[@root='2.16.840.1.113883.1.6'] komt te vaak voor [max 1x]. (count(hl7:interactionId[@root='2.16.840.1.113883.1.6'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] is mandatory [min 1x]. (count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] komt te vaak voor [max 1x]. (count(hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingCode[@code='P'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:processingCode[@code='P'] is mandatory [min 1x]. (count(hl7:processingCode[@code='P'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingCode[@code='P'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:processingCode[@code='P'] komt te vaak voor [max 1x]. (count(hl7:processingCode[@code='P'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingModeCode[@code='T'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:processingModeCode[@code='T'] is mandatory [min 1x]. (count(hl7:processingModeCode[@code='T'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:processingModeCode[@code='T'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:processingModeCode[@code='T'] komt te vaak voor [max 1x]. (count(hl7:processingModeCode[@code='T'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:acceptAckCode[@code='AL' or @code='NE'] is mandatory [min 1x]. (count(hl7:acceptAckCode[@code='AL' or @code='NE'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:acceptAckCode[@code='AL' or @code='NE'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:acceptAckCode[@code='AL' or @code='NE'] komt te vaak voor [max 1x]. (count(hl7:acceptAckCode[@code='AL' or @code='NE'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:receiver)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:receiver is required [min 1x]. (count(hl7:receiver)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:receiver)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:receiver komt te vaak voor [max 1x]. (count(hl7:receiver)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:sender[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:sender[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:sender[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:sender[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:sender[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:sender[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
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
            <xsl:message>(admgeboorte-22): Transmission: <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd. ($interactionVocab / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or $isActive"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: deze interactie <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) is niet (meer) Actief in <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/>
             (not($interactionVocab) or $isActive / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: er moet in deze interactie exact één AttentionLine met BSN zitten - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (not($interactionVocab) or not($allowBsn) or $transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or  not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: er moet in deze interactie exact één AttentionLine met de ContextCode zitten - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (not($interactionVocab) or not($allowContextCode) or $transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: deze interactie <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) is niet geconfigureerd voor gebruik van het element <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> voor BSN in <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> en afzender is niet GBK of GBP (not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowBsn or $senderGbpOrGbk / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: deze interactie <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) is niet geconfigureerd voor gebruik van het element <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> voor ContextCode in <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> en afzender is niet GBK of GBP (not($interactionVocab) or not($transmission/hl7:attentionLine/hl7:keywordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1']) or $allowContextCode or $senderGbpOrGbk / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: er mag maximaal één AttentionLine met BSN zijn - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (count($transmission/hl7:attentionLine/hl7:keyWordText[@code=('FICID','PATID')][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Transmission: er mag maximaal één AttentionLine met de ContextCode zijn - <xsl:text/>
               <xsl:value-of select="$interactionId"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$interactionName"/>
               <xsl:text/>) (count($transmission/hl7:attentionLine/hl7:keyWordText[@code='CONTEXT'][@codeSystem='2.16.840.1.113883.2.4.15.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d381263e37-false-d381271e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:id[not(@nullFlavor)]"
                 priority="1104"
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

	  <!--RULE d381263e46-false-d381283e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:creationTime[not(@nullFlavor)]"
                 priority="1103"
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

	  <!--RULE d381263e55-false-d381298e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:versionCode[@code='NICTIZEd2005-Okt']"
                 priority="1102"
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

	  <!--RULE d381263e63-false-d381316e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:interactionId[@root='2.16.840.1.113883.1.6']"
                 priority="1101"
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

	  <!--RULE d381263e74-false-d381332e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810']"
                 priority="1100"
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

	  <!--RULE d381263e84-false-d381352e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingCode[@code='P']"
                 priority="1099"
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

	  <!--RULE d381263e93-false-d381370e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:processingModeCode[@code='T']"
                 priority="1098"
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

	  <!--RULE d381263e101-false-d381389e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:acceptAckCode[@code='AL' or @code='NE']"
                 priority="1097"
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

	  <!--RULE d381404e18-false-d381412e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine"
                 priority="1096"
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

	  <!--RULE d381404e23-false-d381441e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:keyWordText[not(@nullFlavor)]"
                 priority="1095"
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

	  <!--RULE d381404e35-false-d381453e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/hl7:value[not(@nullFlavor)]"
                 priority="1094"
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
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d381263e117-false-d381468e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver"
                 priority="1093"
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

	  <!--RULE d381491e25-false-d381499e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]"
                 priority="1092"
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

	  <!--RULE d381491e30-false-d381525e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1091"
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

	  <!--RULE d381491e40-false-d381545e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/hl7:name"
                 priority="1090"
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
            <xsl:message>(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d381263e126-false-d381559e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]"
                 priority="1089"
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

	  <!--RULE d381582e25-false-d381590e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]"
                 priority="1088"
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

	  <!--RULE d381582e30-false-d381616e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
                 priority="1087"
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

	  <!--RULE d381582e40-false-d381636e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/hl7:name"
                 priority="1086"
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
            <xsl:message>(TransmissionWrapperDevicePeri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42450-false-d381665e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]"
                 priority="1085"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:authorOrPerformer[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:authorOrPerformer[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:authorOrPerformer[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:authorOrPerformer[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:authorOrPerformer[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:authorOrPerformer[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:overseer[@typeCode='RESP'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:overseer[@typeCode='RESP'] komt te vaak voor [max 1x]. (count(hl7:overseer[@typeCode='RESP'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
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
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$interactionVocabFile"/>
               <xsl:text/> niet gevonden. Controles gebaseerd op dit externe configuratiebestand zijn gedeactiveerd. ($interactionVocab / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/@moodCode moet 'EVN' zijn bij queries (not($controlActProcess/hl7:queryByParameter) or $controlActProcess[@moodCode='EVN'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/code (Trigger Event) moet bij deze interactie '<xsl:text/>
               <xsl:value-of select="$interactionTriggerEventCode"/>
               <xsl:text/>' zijn, gevonden is echter '<xsl:text/>
               <xsl:value-of select="$messageTriggerEventCode"/>
               <xsl:text/>' (not($interactionVocab) or not($messageTriggerEventCode) or $interactionTriggerEventCode=$messageTriggerEventCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag'"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/authorOrPerformer moet een persoon bevatten in berichten met vertrouwensniveau midden of hoog (not($interactionVocab) or $authorPerson or not($interactionTrustLevel) or $interactionTrustLevel='Laag' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag'"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/>/overseer moet de mandaterende persoon bevatten in berichten met vertrouwensniveau midden of hoog (not($interactionVocab) or $overseerPerson or empty($interactionTrustLevel) or $interactionTrustLevel='Laag' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Patiëntgebonden interacties, verzonden vanuit een patiëntenportaal (GBP), moeten een attentionLine hebben (not($authorEntity//hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Patiëntgebonden interacties, verzonden vanuit het klantenloket (GBK), moeten een attentionLine hebben (not($authorEntity//hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or not($authorEntity/../(hl7:queryByParameter|hl7:subject)//hl7:*[@root='2.16.840.1.113883.2.4.6.3']) or $authorEntity/../../hl7:attentionLine / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1'"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/id. Applicatie-id <xsl:text/>
               <xsl:value-of select="$authorApplicationId"/>
               <xsl:text/> komt niet overeen met Transmission-wrapper sender <xsl:text/>
               <xsl:value-of select="$senderApplicationId"/>
               <xsl:text/>. (empty($senderApplicationId) or empty($authorApplicationId) or $senderApplicationId=$authorApplicationId or $senderApplicationId='1' / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/id moet tenminste het UZI-nummer systemen bevatten voor een XIS in een GBZ (not($authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']) or $authorDevice/hl7:id[@root='2.16.528.1.1007.3.2'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension]"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/id moet de zorgaanbieder van het XIS identificeren (not($authorDevice/hl7:id[@root='2.16.528.1.1007.3.2']) or $authorDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3' and @extension] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/code/@code moet "P" (Patiënt) zijn. Wettelijke vertegenwoordigers moet dit via het Klantenloket doen en kunnen dus niet als auteur optreden (not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/code/@code moet "KLANTENLOKET" zijn voor klantenloketmedewerkers (not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11.7.3','2.16.528.1.1003.1.3.5.4.1')]) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='KLANTENLOKET'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/code ontbreekt. Dit is alleen toegestaan als de rolcode 00.000 is. (not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.15.111'] / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension]"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/id moet de zorgaanbieder van de persoon identificeren (not($authorPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $authorOrgId[@root='2.16.528.1.1007.3.3' and @extension] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/id/@root moet '2.16.840.1.113883.2.4.3.11.25' bevatten (not($authorPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11.25'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/id moet de Nictiz-klantenloket organisatie identificeren (not($authorPerson/hl7:id[@root=('2.16.840.1.113883.2.4.3.11','2.16.528.1.1003.1.3.5.4.1')]) or $authorOrgId[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3'])"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/name moet de zorgaanbieder/organisatienaam bevatten (not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.528.1.1007.3.3']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7'])"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$authorPath"/>
               <xsl:text/>/Organization/name moet de Nictiz-klantenloket organisatienaam bevatten (not($overseerPerson/hl7:Organization[not(hl7:name)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11' and @extension='7']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson) or $overseerPerson/hl7:code"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/code is verplicht (not($overseerPerson) or $overseerPerson/hl7:code / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/code/@code moet "P" (Patiënt) zijn of een geldige waarde uit RoleCodeWettelijkeVertegenwoordigerNL (not($overseerPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']) or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.8'][@code='P'] or $overseerPerson/hl7:code[@codeSystem='2.16.840.1.113883.2.4.3.11.6'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/assignedPrincipalChoiceList/assignedPerson/name is verplicht (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson/hl7:name / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/Organization/id moet de zorgaanbieder van de persoon identificeren (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>//Organization/name moet de zorgaanbiedernaam bevatten (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:name / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/Organization/addr moet tennminste de vestigingsplaats bevatten (not($overseerPerson/hl7:id[@root='2.16.528.1.1007.3.1']) or $overseerPerson/hl7:Organization/hl7:addr/hl7:city / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice']"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Control Act: <xsl:text/>
               <xsl:value-of select="$overseerPath"/>
               <xsl:text/>/Organization/id. Organisatie van de overseer (<xsl:text/>
               <xsl:value-of select="$overseerOrgId/@root"/>
               <xsl:text/>#<xsl:text/>
               <xsl:value-of select="$overseerOrgId/@extension"/>
               <xsl:text/>) moet gelijk zijn aan die van de authorOrPerformer (<xsl:text/>
               <xsl:value-of select="$authorOrgId/@extension"/>
               <xsl:text/>) (not($overseerOrgId) or $authorOrgId[@root=$overseerOrgId/@root][@extension=$overseerOrgId/@extension] or $authorEntity[lower-case(local-name())='assigneddevice'] / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]] is mandatory [min 1x]. (count(hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]] komt te vaak voor [max 1x]. (count(hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d381791e39-false-d381799e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor]"
                 priority="1084"
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
            <xsl:message>(ControlActInitiating_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@codeSystem='2.16.840.1.113883.1.18')"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.1.18''. (@nullFlavor or (@codeSystem='2.16.840.1.113883.1.18') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d381791e47-false-d381817e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:effectiveTime"
                 priority="1083"
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d381826e99-false-d381868e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer"
                 priority="1082"
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

	  <!--RULE d381826e109-false-d381970e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]"
                 priority="1081"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice"
                 priority="1080"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.3.2']"
                 priority="1079"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.840.1.113883.2.4.6.6']"
                 priority="1078"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id[@root='2.16.528.1.1007.4']"
                 priority="1077"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:id"
                 priority="1076"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization"
                 priority="1075"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1074"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.528.1.1007'][@extension='4']"
                 priority="1073"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']"
                 priority="1072"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"
                 priority="1071"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1070"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr"
                 priority="1069"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson"
                 priority="1068"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1007.3.1']"
                 priority="1067"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
                 priority="1066"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']"
                 priority="1065"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']"
                 priority="1064"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1063"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1062"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList"
                 priority="1061"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]"
                 priority="1060"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]"
                 priority="1059"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1058"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']"
                 priority="1057"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']"
                 priority="1056"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"
                 priority="1055"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1054"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr"
                 priority="1053"
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

	  <!--RULE d383027e63-false-d383054e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']"
                 priority="1052"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]"
                 priority="1051"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']"
                 priority="1050"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
                 priority="1049"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3']"
                 priority="1048"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1003.1.3.5.4.1']"
                 priority="1047"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1046"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1045"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList"
                 priority="1044"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]"
                 priority="1043"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]"
                 priority="1042"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1041"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007'][@extension='4']"
                 priority="1040"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11.25']"
                 priority="1039"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7']"
                 priority="1038"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1037"
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
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr"
                 priority="1036"
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

	  <!--RULE d381791e68-false-d383660e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason"
                 priority="1035"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('RSON') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): de waarde van @typeCode MOET 'RSON' zijn. (string(@typeCode)=('RSON') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): attribuut @contextConductionInd MOET datatype 'bl' hebben (not(@contextConductionInd) or string(@contextConductionInd)=('true','false') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:justifyingDetectedIssueEvent)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): element hl7:justifyingDetectedIssueEvent is required [min 1x]. (count(hl7:justifyingDetectedIssueEvent)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:justifyingDetectedIssueEvent)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri): element hl7:justifyingDetectedIssueEvent komt te vaak voor [max 1x]. (count(hl7:justifyingDetectedIssueEvent)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent"
                 priority="1034"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ALRT') or not(@classCode)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van @classCode MOET 'ALRT' zijn. (string(@classCode)=('ALRT') or not(@classCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN') or not(@moodCode)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') or not(@moodCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="hl7:code[@code and @displayName] or hl7:text or hl7:value"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): Control Act: Bij voorkeur moet code/@displayName, text of value een uitgebreidere toelichting op de fout/waarschuwing bevatten (hl7:code[@code and @displayName] or hl7:text or hl7:value / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:code[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:code[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:code[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:code[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:text)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:text komt te vaak voor [max 1x]. (count(hl7:text)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:value komt te vaak voor [max 1x]. (count(hl7:value)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor"
                 priority="1033"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('TRIG') or not(@typeCode)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van @typeCode MOET 'TRIG' zijn. (string(@typeCode)=('TRIG') or not(@typeCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): attribuut @contextConductionInd MOET datatype 'bl' hebben (not(@contextConductionInd) or string(@contextConductionInd)=('true','false') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@negationInd) or string(@negationInd)=('true','false')"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): attribuut @negationInd MOET datatype 'bl' hebben (not(@negationInd) or string(@negationInd)=('true','false') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:actOrderRequired)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:actOrderRequired is required [min 1x]. (count(hl7:actOrderRequired)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:actOrderRequired)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:actOrderRequired komt te vaak voor [max 1x]. (count(hl7:actOrderRequired)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired"
                 priority="1032"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ACT') or not(@classCode)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van @classCode MOET 'ACT' zijn. (string(@classCode)=('ACT') or not(@classCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('RQO') or not(@moodCode)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van @moodCode MOET 'RQO' zijn. (string(@moodCode)=('RQO') or not(@moodCode) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:code komt te vaak voor [max 1x]. (count(hl7:code)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/hl7:subject"
                 priority="1031"
                 mode="M12">
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.10901-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@typeCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10901' ParticipationType (2011-07-26T00:00:00). (not(@typeCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:participant)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:participant is required [min 1x]. (count(hl7:participant)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:participant)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:participant komt te vaak voor [max 1x]. (count(hl7:participant)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/hl7:subject/hl7:participant"
                 priority="1030"
                 mode="M12">
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@classCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.11555-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@classCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van classCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.11555' RoleClass (2011-07-26T00:00:00). (not(@classCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:code komt te vaak voor [max 1x]. (count(hl7:code)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:targetOf"
                 priority="1029"
                 mode="M12">
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.10317-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@typeCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10317' ActRelationshipType (2011-07-26T00:00:00). (not(@typeCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('false') or not(@contextConductionInd)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van @contextConductionInd MOET 'false' zijn. (string(@contextConductionInd)=('false') or not(@contextConductionInd) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:targetOf/hl7:source"
                 priority="1028"
                 mode="M12">
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@classCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.155-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@classCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van classCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.155' AcknowledgementCondition (2011-07-26T00:00:00). (not(@classCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@moodCode"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): attribute @moodCode MOET aanwezig zijn. (@moodCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@moodCode),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(doc('include/voc-2.16.840.1.113883.1.11.19375-2011-07-26T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@moodCode) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19375' x_ActMoodDefEvn (2011-07-26T00:00:00). (not(@moodCode) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:code komt te vaak voor [max 1x]. (count(hl7:code)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:text)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DetectedIssueEvent): element hl7:text komt te vaak voor [max 1x]. (count(hl7:text)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.508-2012-09-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42456-false-d384058e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]"
                 priority="1027"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] is mandatory [min 1x]. (count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] komt te vaak voor [max 1x]. (count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42458-false-d384081e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]"
                 priority="1026"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] is mandatory [min 1x]. (count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:statusCode[@code='active'] is mandatory [min 1x]. (count(hl7:statusCode[@code='active'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='active'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:effectiveTime is required [min 1x]. (count(hl7:effectiveTime)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject1[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:subject1[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:subject1[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject1[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:subject1[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:subject1[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42462-false-d384143e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]"
                 priority="1025"
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de elementwaarde MOET een zijn van 'code '118118' codeSystem '2.16.840.1.113883.2.4.15.4''. (@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42467-false-d384161e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code='active']"
                 priority="1024"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de elementwaarde MOET een zijn van 'code 'active''. (@nullFlavor or (@code='active') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42472-false-d384179e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime"
                 priority="1023"
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42474-false-d384194e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42477-false-d384211e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]"
                 priority="1021"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:identifiedPerson[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:identifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42479-false-d384234e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]"
                 priority="1020"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:addr[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:addr[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:addr[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:addr[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:identifiedPerson[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:identifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assigningOrganization[@classCode='ORG'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:assigningOrganization[@classCode='ORG'] is required [min 1x]. (count(hl7:assigningOrganization[@classCode='ORG'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:assigningOrganization[@classCode='ORG'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:assigningOrganization[@classCode='ORG'] komt te vaak voor [max 1x]. (count(hl7:assigningOrganization[@classCode='ORG'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d384287e5-false-d384295e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:id"
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

	  <!--RULE d14e42485-false-d384311e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:addr[not(@nullFlavor)]"
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
         <xsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-AD: address shall be null or text only or element only (no mixed content) (@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/>)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-AD: no useablePeriod if null (not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-AD: updateMode shall not be used on address elements (count(*[self::hl7:useablePeriod][@updateMode])=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value (not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value (not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed (matches(hl7:useablePeriod/hl7:width/@unit, $tum) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <xsl:message>dtr1-8-AD: empty address particles should not be present. (*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)=''] / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-9-AD: [RIM-001] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> elements which are not null (not(@nullFlavor and $set_other[not(@nullFlavor)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-AD: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$value"/>
               <xsl:text/>) SHALL be distinct (not($set_other[string-join((.//@use|.//text()),'')=$value]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(hl7:streetName)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Straatnaam (t.b.v. hielprik) moet gevuld zijn (string-length(hl7:streetName)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(hl7:houseNumber)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Huisnummer (t.b.v. hielprik) moet gevuld zijn (string-length(hl7:houseNumber)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(hl7:postalCode)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Postcode (t.b.v. hielprik) moet gevuld zijn (string-length(hl7:postalCode)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(hl7:city)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Plaatsnaam (t.b.v. hielprik) moet gevuld zijn (string-length(hl7:city)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42500-false-d384323e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:statusCode"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42502-false-d384335e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]"
                 priority="1016"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:deceasedTime and not(hl7:deceasedInd/@value='true'))"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Als deceasedTime aanwezig, dan moet moet deceasedInd 'true' zijn. (not(hl7:deceasedTime and not(hl7:deceasedInd/@value='true')) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:multipleBirthOrderNumber and not(hl7:multipleBirthInd/@value='true'))"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Als multipleBirthOrderNumber aanwezig, dan moet moet multipleBirthInd 'true' zijn. (not(hl7:multipleBirthOrderNumber and not(hl7:multipleBirthInd/@value='true')) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:telecom)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:telecom is required [min 1x]. (count(hl7:telecom)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:administrativeGenderCode)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:administrativeGenderCode is required [min 1x]. (count(hl7:administrativeGenderCode)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:administrativeGenderCode)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:administrativeGenderCode komt te vaak voor [max 1x]. (count(hl7:administrativeGenderCode)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:birthTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:birthTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:birthTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:birthTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:deceasedInd)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:deceasedInd komt te vaak voor [max 1x]. (count(hl7:deceasedInd)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:deceasedTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:deceasedTime komt te vaak voor [max 1x]. (count(hl7:deceasedTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:multipleBirthInd)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:multipleBirthInd is required [min 1x]. (count(hl7:multipleBirthInd)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:multipleBirthInd)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:multipleBirthInd komt te vaak voor [max 1x]. (count(hl7:multipleBirthInd)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:multipleBirthOrderNumber)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:multipleBirthOrderNumber komt te vaak voor [max 1x]. (count(hl7:multipleBirthOrderNumber)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthPlace)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:birthPlace is required [min 1x]. (count(hl7:birthPlace)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthPlace)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:birthPlace komt te vaak voor [max 1x]. (count(hl7:birthPlace)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42504-false-d384426e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name[not(@nullFlavor)]"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string-length(hl7:family)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): Achternaam (name/family) kind moet gevuld zijn (string-length(hl7:family)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42510-false-d384438e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:telecom"
                 priority="1014"
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
         <xsl:when test="@nullFlavor or @value"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-URL: elements of type URL SHALL have a @value attribute. (@nullFlavor or @value / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_URL)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @value=iri-to-uri(@value)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-URL: @value must be a valid URI, e.g. '<xsl:text/>
               <xsl:value-of select="iri-to-uri(@value)"/>
               <xsl:text/>'. (@nullFlavor or @value=iri-to-uri(@value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_URL)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="use" select="@use"/>
      <xsl:variable name="value" select="@value"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-4-URL: [RIM-001] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> elements which are not null (not(@nullFlavor and $set_other[not(@nullFlavor)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_URL)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@use=$use][@value=$value])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-URL: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$value"/>
               <xsl:text/>) SHALL be distinct (not($set_other[@use=$use][@value=$value]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_URL)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and hl7:useablePeriod)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-TEL: not null and useablePeriod (not(@nullFlavor and hl7:useablePeriod) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_TEL)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42512-false-d384450e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode"
                 priority="1013"
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42514-false-d384462e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime[not(@nullFlavor)]"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42520-false-d384477e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:deceasedInd"
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42522-false-d384489e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:deceasedTime"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42531-false-d384504e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:multipleBirthInd"
                 priority="1009"
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
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42533-false-d384516e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:multipleBirthOrderNumber"
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
            <xsl:message>dtr1-1-INT: null or value or child element in case of extension ((@nullFlavor or @value or *) and not(@nullFlavor and @value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_INT)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:uncertainty)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-INT: no uncertainty (not(hl7:uncertainty) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_INT)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): @value is geen geldig INT getal <xsl:text/>
               <xsl:value-of select="@value"/>
               <xsl:text/>
       (not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42539-false-d384531e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]"
                 priority="1007"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] is mandatory [min 1x]. (count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42541-false-d384554e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]"
                 priority="1006"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de elementwaarde MOET een zijn van 'code 'NMTH' codeSystem '2.16.840.1.113883.5.111''. (@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42546-false-d384569e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder"
                 priority="1005"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:name is required [min 1x]. (count(hl7:name)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:name komt te vaak voor [max 1x]. (count(hl7:name)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42548-false-d384598e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:id[not(@nullFlavor)]"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42550-false-d384610e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name"
                 priority="1003"
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
         <xsl:when test="not(*[tokenize(@qualifier,'\s')='LS'])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-PN: Person names SHALL NOT contain a name part qualified with 'LS' (Legal status for organizations) (not(*[tokenize(@qualifier,'\s')='LS']) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_PN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42555-false-d384622e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthPlace"
                 priority="1002"
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
         <xsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-AD: address shall be null or text only or element only (no mixed content) (@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/>)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-2-AD: no useablePeriod if null (not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <xsl:otherwise>
            <xsl:message>dtr1-3-AD: updateMode shall not be used on address elements (count(*[self::hl7:useablePeriod][@updateMode])=0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value (not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <xsl:message>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value (not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14)) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <xsl:message>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed (matches(hl7:useablePeriod/hl7:width/@unit, $tum) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <xsl:message>dtr1-8-AD: empty address particles should not be present. (*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)=''] / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-9-AD: [RIM-001] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> elements which are not null (not(@nullFlavor and $set_other[not(@nullFlavor)]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <xsl:message>dtr1-10-AD: [RIM-002] <xsl:text/>
               <xsl:value-of select="$name"/>
               <xsl:text/> (<xsl:text/>
               <xsl:value-of select="$value"/>
               <xsl:text/>) SHALL be distinct (not($set_other[string-join((.//@use|.//text()),'')=$value]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_AD)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42559-false-d384634e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']"
                 priority="1001"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ORG')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de waarde van @classCode MOET 'ORG' zijn. (string(@classCode)=('ORG') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@determinerCode)=('INSTANCE')"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): de waarde van @determinerCode MOET 'INSTANCE' zijn. (string(@determinerCode)=('INSTANCE') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:contactParty)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:contactParty is required [min 1x]. (count(hl7:contactParty)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:contactParty)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22): element hl7:contactParty komt te vaak voor [max 1x]. (count(hl7:contactParty)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e42565-false-d384671e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:id"
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
            <xsl:message>(admgeboorte-22): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M12"/>
   <xsl:template match="@*|node()" priority="-2" mode="M12">
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000-closedAdministratief geboortebericht (2.2)-->


	  <!--RULE d14e42435-true-d384765e0-->
   <xsl:template match="/*[not(self::hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])]"
                 priority="1039"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42435-true-d384765e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] (rule-reference: d14e42435-true-d384765e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42444-true-d384874e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code='NICTIZEd2005-Okt'] | self::hl7:interactionId[@root='2.16.840.1.113883.1.6'] | self::hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | self::hl7:processingCode[@code='P'] | self::hl7:processingModeCode[@code='T'] | self::hl7:acceptAckCode[@code='AL' or @code='NE'] | self::hl7:attentionLine | self::hl7:receiver | self::hl7:sender[not(@nullFlavor)] | self::hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])]"
                 priority="1038"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42444-true-d384874e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code='NICTIZEd2005-Okt'] | hl7:interactionId[@root='2.16.840.1.113883.1.6'] | hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | hl7:processingCode[@code='P'] | hl7:processingModeCode[@code='T'] | hl7:acceptAckCode[@code='AL' or @code='NE'] | hl7:attentionLine | hl7:receiver | hl7:sender[not(@nullFlavor)] | hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] (rule-reference: d14e42444-true-d384874e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d384932e18-true-d384951e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/*[not(self::hl7:keyWordText[not(@nullFlavor)] | self::hl7:value[not(@nullFlavor)])]"
                 priority="1037"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperAttentionLine)/d384932e18-true-d384951e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:keyWordText[not(@nullFlavor)] | hl7:value[not(@nullFlavor)] (rule-reference: d384932e18-true-d384951e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d384878e117-true-d384979e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/*[not(self::hl7:device[not(@nullFlavor)])]"
                 priority="1036"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri)/d384878e117-true-d384979e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d384878e117-true-d384979e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d384983e25-true-d385002e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
                 priority="1035"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri)/d384983e25-true-d385002e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d384983e25-true-d385002e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d384878e126-true-d385030e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/*[not(self::hl7:device[not(@nullFlavor)])]"
                 priority="1034"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(MCCI_MT000100_peri)/d384878e126-true-d385030e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d384878e126-true-d385030e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385034e25-true-d385053e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
                 priority="1033"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(TransmissionWrapperDevicePeri)/d385034e25-true-d385053e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d385034e25-true-d385053e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42450-true-d385173e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/*[not(self::hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:authorOrPerformer | self::hl7:overseer[@typeCode='RESP'] | self::hl7:reason | self::hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]])]"
                 priority="1032"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42450-true-d385173e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] | hl7:effectiveTime | hl7:authorOrPerformer | hl7:overseer[@typeCode='RESP'] | hl7:reason | hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]] (rule-reference: d14e42450-true-d385173e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385194e99-true-d385310e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/*[not(self::hl7:participant[not(@nullFlavor)])]"
                 priority="1031"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385194e99-true-d385310e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant[not(@nullFlavor)] (rule-reference: d385194e99-true-d385310e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385194e109-true-d385393e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/*[not(self::hl7:AssignedDevice | self::hl7:AssignedPerson)]"
                 priority="1030"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385194e109-true-d385393e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedDevice | hl7:AssignedPerson (rule-reference: d385194e109-true-d385393e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385194e113-true-d385458e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/*[not(self::hl7:id[@root='2.16.528.1.1007.3.2'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | self::hl7:id[@root='2.16.528.1.1007.4'] | self::hl7:id | self::hl7:Organization | self::hl7:templateId)]"
                 priority="1029"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385194e113-true-d385458e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.2'] | hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | hl7:id[@root='2.16.528.1.1007.4'] | hl7:id | hl7:Organization | hl7:templateId (rule-reference: d385194e113-true-d385458e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385399e32-true-d385548e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
                 priority="1028"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385399e32-true-d385548e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d385399e32-true-d385548e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385399e81-true-d385622e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr/*[not(self::hl7:city[not(@nullFlavor)])]"
                 priority="1027"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385399e81-true-d385622e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city[not(@nullFlavor)] (rule-reference: d385399e81-true-d385622e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385194e115-true-d385738e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
                 priority="1026"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385194e115-true-d385738e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d385194e115-true-d385738e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385640e42-true-d385819e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
                 priority="1025"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385640e42-true-d385819e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d385640e42-true-d385819e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385640e47-true-d385835e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
                 priority="1024"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385640e47-true-d385835e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d385640e47-true-d385835e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385640e59-true-d385901e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
                 priority="1023"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385640e59-true-d385901e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d385640e59-true-d385901e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385640e105-true-d385975e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
                 priority="1022"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActAuthorOrPerformerPeri)/d385640e105-true-d385975e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d385640e105-true-d385975e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385994e63-true-d386065e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/*[not(self::hl7:AssignedPerson[not(@nullFlavor)])]"
                 priority="1021"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri)/d385994e63-true-d386065e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedPerson[not(@nullFlavor)] (rule-reference: d385994e63-true-d386065e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385994e70-true-d386169e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
                 priority="1020"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri)/d385994e70-true-d386169e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d385994e70-true-d386169e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386071e46-true-d386250e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
                 priority="1019"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri)/d386071e46-true-d386250e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d386071e46-true-d386250e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386071e51-true-d386266e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
                 priority="1018"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri)/d386071e51-true-d386266e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d386071e51-true-d386266e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386071e63-true-d386332e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
                 priority="1017"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri)/d386071e63-true-d386332e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d386071e63-true-d386332e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386071e109-true-d386406e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
                 priority="1016"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActOverseerPersonMcaiMfmiPeri)/d386071e109-true-d386406e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d386071e109-true-d386406e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385177e68-true-d386437e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/*[not(self::hl7:justifyingDetectedIssueEvent)]"
                 priority="1015"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d385177e68-true-d386437e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:justifyingDetectedIssueEvent (rule-reference: d385177e68-true-d386437e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d385177e74-true-d386481e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/*[not(self::hl7:id | self::hl7:code[not(@nullFlavor)] | self::hl7:text | self::hl7:value | self::hl7:triggerFor | self::hl7:targetOf)]"
                 priority="1014"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d385177e74-true-d386481e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[not(@nullFlavor)] | hl7:text | hl7:value | hl7:triggerFor | hl7:targetOf (rule-reference: d385177e74-true-d386481e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386443e39-true-d386521e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/*[not(self::hl7:actOrderRequired)]"
                 priority="1013"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d386443e39-true-d386521e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actOrderRequired (rule-reference: d386443e39-true-d386521e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386443e63-true-d386547e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/*[not(self::hl7:code | self::hl7:effectiveTime | self::hl7:subject)]"
                 priority="1012"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d386443e63-true-d386547e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:effectiveTime | hl7:subject (rule-reference: d386443e63-true-d386547e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386443e79-true-d386575e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/hl7:subject/*[not(self::hl7:participant)]"
                 priority="1011"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d386443e79-true-d386575e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant (rule-reference: d386443e79-true-d386575e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386443e94-true-d386591e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/hl7:subject/hl7:participant/*[not(self::hl7:code)]"
                 priority="1010"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d386443e94-true-d386591e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code (rule-reference: d386443e94-true-d386591e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386443e109-true-d386613e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:targetOf/*[not(self::hl7:source)]"
                 priority="1009"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d386443e109-true-d386613e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:source (rule-reference: d386443e109-true-d386613e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d386443e142-true-d386634e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:targetOf/hl7:source/*[not(self::hl7:code | self::hl7:text)]"
                 priority="1008"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(ControlActInitiating_peri)/d386443e142-true-d386634e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:text (rule-reference: d386443e142-true-d386634e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42456-true-d386673e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/*[not(self::hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])]"
                 priority="1007"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42456-true-d386673e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] (rule-reference: d14e42456-true-d386673e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42458-true-d386715e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/*[not(self::hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] | self::hl7:statusCode[@code='active'] | self::hl7:effectiveTime | self::hl7:effectiveTime | self::hl7:subject1[not(@nullFlavor)])]"
                 priority="1006"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42458-true-d386715e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] | hl7:statusCode[@code='active'] | hl7:effectiveTime | hl7:effectiveTime | hl7:subject1[not(@nullFlavor)] (rule-reference: d14e42458-true-d386715e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42477-true-d386761e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/*[not(self::hl7:identifiedPerson[not(@nullFlavor)])]"
                 priority="1005"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42477-true-d386761e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:identifiedPerson[not(@nullFlavor)] (rule-reference: d14e42477-true-d386761e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42479-true-d386797e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:id | self::hl7:addr[not(@nullFlavor)] | self::hl7:statusCode | self::hl7:identifiedPerson[not(@nullFlavor)] | self::hl7:assigningOrganization[@classCode='ORG'])]"
                 priority="1004"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42479-true-d386797e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr[not(@nullFlavor)] | hl7:statusCode | hl7:identifiedPerson[not(@nullFlavor)] | hl7:assigningOrganization[@classCode='ORG'] (rule-reference: d14e42479-true-d386797e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42502-true-d386878e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:administrativeGenderCode | self::hl7:birthTime[not(@nullFlavor)] | self::hl7:deceasedInd | self::hl7:deceasedTime | self::hl7:multipleBirthInd | self::hl7:multipleBirthOrderNumber | self::hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]] | self::hl7:birthPlace)]"
                 priority="1003"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42502-true-d386878e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:administrativeGenderCode | hl7:birthTime[not(@nullFlavor)] | hl7:deceasedInd | hl7:deceasedTime | hl7:multipleBirthInd | hl7:multipleBirthOrderNumber | hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]] | hl7:birthPlace (rule-reference: d14e42502-true-d386878e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42539-true-d386947e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder)]"
                 priority="1002"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42539-true-d386947e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] | hl7:relationshipHolder (rule-reference: d14e42539-true-d386947e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42546-true-d386974e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
                 priority="1001"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42546-true-d386974e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d14e42546-true-d386974e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e42559-true-d387013e0-->
   <xsl:template match="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/*[not(self::hl7:id | self::hl7:contactParty)]"
                 priority="1000"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(admgeboorte-22)/d14e42559-true-d387013e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:contactParty (rule-reference: d14e42559-true-d387013e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M13"/>
   <xsl:template match="@*|node()" priority="-2" mode="M13">
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
</xsl:stylesheet>
