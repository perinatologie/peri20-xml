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

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000Counseling bericht fase 1c-->


	  <!--RULE d14e4402-false-d76468e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]"
                 priority="1140"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'] is mandatory [min 1x]. (count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'] komt te vaak voor [max 1x]. (count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:statusCode[@code='active' or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='active' or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[@typeCode='SBJ'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:subject[@typeCode='SBJ'] is required [min 1x]. (count(hl7:subject[@typeCode='SBJ'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[@typeCode='SBJ'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:subject[@typeCode='SBJ'] komt te vaak voor [max 1x]. (count(hl7:subject[@typeCode='SBJ'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]] is required [min 1x]. (count(hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]] komt te vaak voor [max 1x]. (count(hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] is mandatory [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] is mandatory [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] is mandatory [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]] is mandatory [min 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x]. (count(hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e4409-false-d76735e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']"
                 priority="1139"
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
            <xsl:message>(counseling-1c): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.54')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.54' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.10.90.54') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76745e5-false-d76753e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:id[not(@nullFlavor)]"
                 priority="1138"
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
            <xsl:message>(CareProvisionID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900002-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e4424-false-d76765e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:statusCode[@code='active' or @nullFlavor]"
                 priority="1137"
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
            <xsl:message>(counseling-1c): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de elementwaarde MOET een zijn van 'code 'active''. (@nullFlavor or (@code='active') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d14e4434-false-d76785e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime"
                 priority="1136"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:low)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): element hl7:low komt te vaak voor [max 1x]. (count(hl7:low)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76801e5-false-d76809e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime/hl7:low"
                 priority="1135"
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
         <xsl:when test="@nullFlavor or matches(@value, '^[0-9]{8,8}')"/>
         <xsl:otherwise>
            <xsl:message>dtr1-1-TS.DATE.MIN: null or date precision of time stamp shall be at least YYYYMMDD. (@nullFlavor or matches(@value, '^[0-9]{8,8}') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / https://art-decor.org/mediawiki/index.php?title=DTr1_TS.DATE.MIN)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <xsl:message>(Datumstartzorgverantwoordelijkheid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900115-2012-09-02T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(Datumstartzorgverantwoordelijkheid): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900115-2012-09-02T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76818e5-false-d76836e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']"
                 priority="1134"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): de waarde van @typeCode MOET 'SBJ' zijn. (string(@typeCode)=('SBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76818e17-false-d76873e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]"
                 priority="1133"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PAT')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): de waarde van @classCode MOET 'PAT' zijn. (string(@classCode)=('PAT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): identification mother requires either a BSN or a local id or both (count(hl7:id)&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:statusCode[@code='active'] is mandatory [min 1x]. (count(hl7:statusCode[@code='active'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='active'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x]. (count(hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x]. (count(hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76934e5-false-d76942e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id"
                 priority="1132"
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

	  <!--RULE d76952e5-false-d76960e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:id"
                 priority="1131"
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
            <xsl:message>(Lokalepersoonsidentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900029-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76818e33-false-d76972e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:statusCode[@code='active']"
                 priority="1130"
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
            <xsl:message>(Vrouwcounseling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): de elementwaarde MOET een zijn van 'code 'active''. (@nullFlavor or (@code='active') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d76818e43-false-d76998e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]"
                 priority="1129"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PSN')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): de waarde van @classCode MOET 'PSN' zijn. (string(@classCode)=('PSN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@determinerCode)=('INSTANCE')"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): de waarde van @determinerCode MOET 'INSTANCE' zijn. (string(@determinerCode)=('INSTANCE') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:name is required [min 1x]. (count(hl7:name)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name)&lt;=2"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:name komt te vaak voor [max 2x]. (count(hl7:name)&lt;=2 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:birthTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:birthTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:birthTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:birthTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x]. (count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling): element hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77059e5-false-d77067e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
                 priority="1128"
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
            <xsl:message>(Naamvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900030-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theAttValue"
                    select="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <xsl:variable name="theAttCheck"
                    select="distinct-values(for $code in tokenize(@use,' ') return if ($code=('OR','L','OR L','L OR')) then ($code) else ())"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@use) or count($theAttValue) = count($theAttCheck)"/>
         <xsl:otherwise>
            <xsl:message>(Naamvrouw): de waarde van use MOET 'code OR of code L of code OR L of code L OR' zijn. (not(@use) or count($theAttValue) = count($theAttCheck) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900030-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77104e5-false-d77112e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
                 priority="1127"
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

	  <!--RULE d77121e5-false-d77131e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1126"
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

	  <!--RULE d77148e5-false-d77172e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]"
                 priority="1125"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PPRF')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @typeCode MOET 'PPRF' zijn. (string(@typeCode)=('PPRF') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] is required [min 1x]. (count(hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] komt te vaak voor [max 1x]. (count(hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e59-false-d77227e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]"
                 priority="1124"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ASSIGNED')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @classCode MOET 'ASSIGNED' zijn. (string(@classCode)=('ASSIGNED') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[@root='2.16.528.1.1007.3.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:agentPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:agentPerson[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:agentPerson[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:agentPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:agentPerson[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:agentPerson[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] is mandatory [min 1x]. (count(hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] komt te vaak voor [max 1x]. (count(hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e65-false-d77326e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[@root='2.16.528.1.1007.3.1']"
                 priority="1123"
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
            <xsl:message>(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.1')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn. (string(@root)=('2.16.528.1.1007.3.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e70-false-d77342e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1122"
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
            <xsl:message>(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e75-false-d77358e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
                 priority="1121"
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
            <xsl:message>(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.2')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.22.98.2') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77368e5-false-d77380e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1120"
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
            <xsl:message>(Zorgverlenertype): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenertype): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.58 ZorgverlenerType (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenertype): element hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77412e5-false-d77422e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]/hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1119"
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
            <xsl:message>(ZorgverlenertypeLVR2code): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900013-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenertypeLVR2code): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.2 ZorgverlenerTypeLVR (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900013-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theNullFlavor" select="@nullFlavor"/>
      <xsl:variable name="validNullFlavorsFound"
                    select="exists(doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or $validNullFlavorsFound"/>
         <xsl:otherwise>
            <xsl:message>(ZorgverlenertypeLVR2code): de nulwaarde '<xsl:text/>
               <xsl:value-of select="@nullFlavor"/>
               <xsl:text/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.2 ZorgverlenerTypeLVR (DYNAMISCH). (not(@nullFlavor) or $validNullFlavorsFound / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900013-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e93-false-d77499e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]"
                 priority="1118"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="elmcount"
                    select="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$elmcount&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.528.1.1007.3.3']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']) bevat te weinig elementen [min 1x] ($elmcount&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[@root='2.16.528.1.1007.3.3'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'] komt te vaak voor [max 1x]. (count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x]. (count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:name[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:name[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:name[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:name[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:addr[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:addr[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:addr[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): element hl7:addr[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:addr[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77600e5-false-d77606e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
                 priority="1117"
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
            <xsl:message>(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e101-false-d77618e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
                 priority="1116"
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
            <xsl:message>(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e106-false-d77634e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[@root='2.16.528.1.1007.3.3']"
                 priority="1115"
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
            <xsl:message>(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.528.1.1007.3.3')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn. (string(@root)=('2.16.528.1.1007.3.3') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77148e111-false-d77650e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']"
                 priority="1114"
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
            <xsl:message>(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.1')"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.1' zijn. (string(@root)=('2.16.840.1.113883.2.4.3.22.98.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77660e5-false-d77670e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1113"
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
            <xsl:message>(Zorginstellingtype): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900609-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Zorginstellingtype): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.59 ZorgaanbiederType (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900609-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77687e5-false-d77695e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:name"
                 priority="1112"
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

	  <!--RULE d77701e5-false-d77709e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr"
                 priority="1111"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e7-false-d77753e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:streetName"
                 priority="1110"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e13-false-d77765e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:houseNumber"
                 priority="1109"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e19-false-d77777e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:buildingNumberSuffix"
                 priority="1108"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e25-false-d77789e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:additionalLocator"
                 priority="1107"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e31-false-d77801e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:postalCode"
                 priority="1106"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e38-false-d77813e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:city"
                 priority="1105"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e44-false-d77825e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:county"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d77701e50-false-d77837e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/hl7:country"
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
            <xsl:message>(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1102"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1101"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): element hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): element hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1100"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1099"
                 mode="M12">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): value MOET in bereik [0..75] liggen   ((@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75)) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(Graviditeit): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1098"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1097"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): element hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): element hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): element hl7:effectiveTime is required [min 1x]. (count(hl7:effectiveTime)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1096"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): de elementwaarde MOET een zijn van 'code 'NFetusMax' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1095"
                 mode="M12">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): value MOET in bereik [1..9] liggen   ((@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9)) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(HoeveellingMax): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1094"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1093"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:effectiveTime is required [min 1x]. (count(hl7:effectiveTime)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1092"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1091"
                 mode="M12">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): value MOET in bereik [0..9] liggen   ((@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9)) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1090"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1089"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(EDD): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(EDD): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:effectiveTime is required [min 1x]. (count(hl7:effectiveTime)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:effectiveTime komt te vaak voor [max 1x]. (count(hl7:effectiveTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x]. (count(hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDD): element hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1088"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(EDD): de elementwaarde MOET een zijn van 'code 'EDD' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]"
                 priority="1087"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(EDD): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1086"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SPRT')"/>
         <xsl:otherwise>
            <xsl:message>(EDD): de waarde van @typeCode MOET 'SPRT' zijn. (string(@typeCode)=('SPRT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1085"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): element hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): element hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1084"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): de elementwaarde MOET een zijn van 'code 'EDDBasedOn' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1083"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theNullFlavor" select="@nullFlavor"/>
      <xsl:variable name="validNullFlavorsFound"
                    select="exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or $validNullFlavorsFound"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): de nulwaarde '<xsl:text/>
               <xsl:value-of select="@nullFlavor"/>
               <xsl:text/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH). (not(@nullFlavor) or $validNullFlavorsFound / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(EDDBasis): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1082"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(EDD): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1081"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): element hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): element hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1080"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): de elementwaarde MOET een zijn van 'code 'ActualEDD' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]"
                 priority="1079"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(ActualEDD): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]"
                 priority="1078"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]"
                 priority="1077"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='61285001'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): Ovulatie-inductie toegepast: required if Subfertiliteitsbehandeling value = true (hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='61285001'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='63487001'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): Geassisteerde conceptie: required if Subfertiliteitsbehandeling value = true (hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='63487001'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='176843009'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): Eiceldonatie toegepast: required if Subfertiliteitsbehandeling value = true (hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='176843009'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): element hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x]. (count(hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): element hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): element hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]"
                 priority="1076"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): de elementwaarde MOET een zijn van 'code 'PRN3206' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''. (@nullFlavor or (@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1075"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1074"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]] is mandatory [min 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1072"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PROC')"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): de waarde van @classCode MOET 'PROC' zijn. (string(@classCode)=('PROC') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@negationInd"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): attribute @negationInd MOET aanwezig zijn. (@negationInd / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): element hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): element hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id"
                 priority="1071"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('NI')"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): de waarde van @nullFlavor MOET 'NI' zijn. (string(@nullFlavor)=('NI') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1070"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(Ovulatieinductietoegepast): de elementwaarde MOET een zijn van 'code '61285001' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='61285001' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1069"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]] is mandatory [min 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1067"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PROC')"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): de waarde van @classCode MOET 'PROC' zijn. (string(@classCode)=('PROC') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@negationInd"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): attribute @negationInd MOET aanwezig zijn. (@negationInd / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="../hl7:procedure[string(@negationInd)='true'] or hl7:methodCode"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): If Geassisteerdeconceptie=true (negationInd=false) an hl7:methodCode shall be present (../hl7:procedure[string(@negationInd)='true'] or hl7:methodCode / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id"
                 priority="1066"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('NI')"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): de waarde van @nullFlavor MOET 'NI' zijn. (string(@nullFlavor)=('NI') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1065"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): de elementwaarde MOET een zijn van 'code '63487001' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='63487001' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1064"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.199 GeassConceptie (2014-01-28T00:00:00)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theNullFlavor" select="@nullFlavor"/>
      <xsl:variable name="validNullFlavorsFound"
                    select="exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or $validNullFlavorsFound"/>
         <xsl:otherwise>
            <xsl:message>(Geassisteerdeconceptie): de nulwaarde '<xsl:text/>
               <xsl:value-of select="@nullFlavor"/>
               <xsl:text/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.199 GeassConceptie (2014-01-28T00:00:00). (not(@nullFlavor) or $validNullFlavorsFound / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1063"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]] is mandatory [min 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(Subfertiliteitsbehandeling_2): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1061"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PROC')"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): de waarde van @classCode MOET 'PROC' zijn. (string(@classCode)=('PROC') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@negationInd"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): attribute @negationInd MOET aanwezig zijn. (@negationInd / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): element hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id"
                 priority="1060"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('NI')"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): de waarde van @nullFlavor MOET 'NI' zijn. (string(@nullFlavor)=('NI') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1059"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): de elementwaarde MOET een zijn van 'code '176843009' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='176843009' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1058"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x]. (count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(Eiceldonatietoegepast): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1056"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('PROC')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de waarde van @classCode MOET 'PROC' zijn. (string(@classCode)=('PROC') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id"
                 priority="1055"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('NI')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de waarde van @nullFlavor MOET 'NI' zijn. (string(@nullFlavor)=('NI') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1054"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de elementwaarde MOET een zijn van 'code '177037000' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='177037000' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]"
                 priority="1053"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de waarde van @typeCode MOET 'SBJ' zijn. (string(@typeCode)=('SBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:patient[hl7:statusCode[@code='completed']])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:patient[hl7:statusCode[@code='completed']] is mandatory [min 1x]. (count(hl7:patient[hl7:statusCode[@code='completed']])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:patient[hl7:statusCode[@code='completed']])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:patient[hl7:statusCode[@code='completed']] komt te vaak voor [max 1x]. (count(hl7:patient[hl7:statusCode[@code='completed']])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]"
                 priority="1052"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:id is required [min 1x]. (count(hl7:id)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='completed'])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:statusCode[@code='completed'] is mandatory [min 1x]. (count(hl7:statusCode[@code='completed'])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='completed'])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x]. (count(hl7:statusCode[@code='completed'])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Person[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:Person[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:Person[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:Person[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:Person[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:Person[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/hl7:id"
                 priority="1051"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@nullFlavor)=('NI')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de waarde van @nullFlavor MOET 'NI' zijn. (string(@nullFlavor)=('NI') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/hl7:statusCode[@code='completed']"
                 priority="1050"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='completed')"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): de elementwaarde MOET een zijn van 'code 'completed''. (@nullFlavor or (@code='completed') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/hl7:Person[not(@nullFlavor)]"
                 priority="1049"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime)&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:birthTime is required [min 1x]. (count(hl7:birthTime)&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:birthTime)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Geboortedatumeiceldonatrice): element hl7:birthTime komt te vaak voor [max 1x]. (count(hl7:birthTime)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1048"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1047"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): element hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): element hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1046"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): de elementwaarde MOET een zijn van 'code 'BroachDown' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1045"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.6 BroachDownSEOScreening (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theNullFlavor" select="@nullFlavor"/>
      <xsl:variable name="validNullFlavorsFound"
                    select="exists(doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or $validNullFlavorsFound"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): de nulwaarde '<xsl:text/>
               <xsl:value-of select="@nullFlavor"/>
               <xsl:text/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.6 BroachDownSEOScreening (DYNAMISCH). (not(@nullFlavor) or $validNullFlavorsFound / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(Prenatalescreeningaangekaart): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1044"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1043"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): element hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): element hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1042"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): de elementwaarde MOET een zijn van 'code 'CounselDesired' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
                 priority="1041"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.7 DownSEOCounselingDesired (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="theNullFlavor" select="@nullFlavor"/>
      <xsl:variable name="validNullFlavorsFound"
                    select="exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or $validNullFlavorsFound"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): de nulwaarde '<xsl:text/>
               <xsl:value-of select="@nullFlavor"/>
               <xsl:text/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.7 DownSEOCounselingDesired (DYNAMISCH). (not(@nullFlavor) or $validNullFlavorsFound / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalegewenst): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1040"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1039"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): element hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): element hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1038"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): de elementwaarde MOET een zijn van 'code 'TrisomyAnam' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1037"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(TrisomyInHistory): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1036"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1035"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): element hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): element hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1034"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): de elementwaarde MOET een zijn van 'code '46635009' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='46635009' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1033"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(DiabetesTypeI): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1032"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1031"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id)&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): element hl7:id komt te vaak voor [max 1x]. (count(hl7:id)&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): element hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): element hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1030"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): de elementwaarde MOET een zijn van 'code '77176002' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='77176002' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1029"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(TobaccoSmoker): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]"
                 priority="1028"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]"
                 priority="1027"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): element hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x]. (count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): element hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]"
                 priority="1026"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): de elementwaarde MOET een zijn van 'code '3141-9' codeSystem '2.16.840.1.113883.6.1''. (@nullFlavor or (@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1025"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (@unit='kg'))"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): value MOET eenheid 'kg' gebruiken en  ((@nullFlavor or (@unit='kg')) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=249.9))"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): value MOET in bereik [0..249.9] liggen   ((@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=249.9)) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(BodyWeight): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]"
                 priority="1024"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]"
                 priority="1023"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): element hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x]. (count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): element hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x]. (count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]"
                 priority="1022"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): de elementwaarde MOET een zijn van 'code '3137-7' codeSystem '2.16.840.1.113883.6.1''. (@nullFlavor or (@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
                 priority="1021"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (@unit='cm'))"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): value MOET eenheid 'cm' gebruiken en  ((@nullFlavor or (@unit='cm')) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=270))"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): value MOET in bereik [0..270] liggen   ((@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=270)) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(BodyHeight): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]"
                 priority="1020"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('PERT')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @typeCode MOET 'PERT' zijn. (string(@typeCode)=('PERT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@contextConductionInd)=('true')"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c): de waarde van @contextConductionInd MOET 'true' zijn. (string(@contextConductionInd)=('true') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]"
                 priority="1019"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ENC')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @classCode MOET 'ENC' zijn. (string(@classCode)=('ENC') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf/hl7:observation[hl7:code[@code='CounsConcerns'][@codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:value/@code='1'])=0 or             count(hl7:targetOf[hl7:act/hl7:code[@code='IPDDesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek):  Counseling prenatale screening en prenatale diagnostiek: direct IPD mandatory als counseling betreft is 'combinatietest' (count(hl7:targetOf/hl7:observation[hl7:code[@code='CounsConcerns'][@codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:value/@code='1'])=0 or count(hl7:targetOf[hl7:act/hl7:code[@code='IPDDesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf/hl7:observation[hl7:code[@code='CounsConcerns'][@codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:value/@code='2'])=0 or             count(hl7:targetOf[hl7:act/hl7:code[@code='InstantGUODesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek):  Counseling prenatale screening en prenatale diagnostiek: direct GUO mandatory als counseling betreft is 'SEO' (count(hl7:targetOf/hl7:observation[hl7:code[@code='CounsConcerns'][@codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:value/@code='2'])=0 or count(hl7:targetOf[hl7:act/hl7:code[@code='InstantGUODesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:id[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:id[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:id[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:id[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x]. (count(hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x]. (count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x]. (count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x]. (count(hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=2"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 2x]. (count(hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=2 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x]. (count(hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id"
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
            <xsl:message>(Counselingidentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900226-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]"
                 priority="1017"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de elementwaarde MOET een zijn van 'code '225328009' codeSystem '2.16.840.1.113883.6.96''. (@nullFlavor or (@code='225328009' and @codeSystem='2.16.840.1.113883.6.96') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:effectiveTime"
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
            <xsl:message>(Datumcounseling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
               <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>}:<xsl:text/>
               <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
               <xsl:text/>" ((local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <xsl:message>(Datumcounseling): <xsl:text/>
               <xsl:value-of select="local-name()"/>
               <xsl:text/> met datatype TS, MAG GEEN elementen bevatten. (not(*) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1015"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('COMP')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @typeCode MOET 'COMP' zijn. (string(@typeCode)=('COMP') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1014"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('OBS')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): de waarde van @classCode MOET 'OBS' zijn. (string(@classCode)=('OBS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): de waarde van @moodCode MOET 'EVN' zijn. (string(@moodCode)=('EVN') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): element hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): element hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] is required [min 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x]. (count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1013"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): de elementwaarde MOET een zijn van 'code 'CounsConcerns' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
                 priority="1012"
                 mode="M12">
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theCodeSystem" select="@codeSystem"/>
      <xsl:variable name="theCodeSystemVersion" select="@codeSystemVersion"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.70 CounselingConcerns (DYNAMISCH)'. (@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]]) / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@xsi:type"/>
         <xsl:otherwise>
            <xsl:message>(Counselingbetreft): attribute @xsi:type MOET aanwezig zijn. (@xsi:type / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1011"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SUBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @typeCode MOET 'SUBJ' zijn. (string(@typeCode)=('SUBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1010"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('CONS')"/>
         <xsl:otherwise>
            <xsl:message>(DirectIPDgewenst): de waarde van @classCode MOET 'CONS' zijn. (string(@classCode)=('CONS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('INT')"/>
         <xsl:otherwise>
            <xsl:message>(DirectIPDgewenst): de waarde van @moodCode MOET 'INT' zijn. (string(@moodCode)=('INT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DirectIPDgewenst): element hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DirectIPDgewenst): element hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1009"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(DirectIPDgewenst): de elementwaarde MOET een zijn van 'code 'IPDDesired' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1008"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SUBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @typeCode MOET 'SUBJ' zijn. (string(@typeCode)=('SUBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1007"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('CONS')"/>
         <xsl:otherwise>
            <xsl:message>(Combinatietestgewenst): de waarde van @classCode MOET 'CONS' zijn. (string(@classCode)=('CONS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('INT')"/>
         <xsl:otherwise>
            <xsl:message>(Combinatietestgewenst): de waarde van @moodCode MOET 'INT' zijn. (string(@moodCode)=('INT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Combinatietestgewenst): element hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(Combinatietestgewenst): element hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1006"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(Combinatietestgewenst): de elementwaarde MOET een zijn van 'code 'CombiTestDesired' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1005"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SUBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @typeCode MOET 'SUBJ' zijn. (string(@typeCode)=('SUBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1004"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('CONS')"/>
         <xsl:otherwise>
            <xsl:message>(DirectGUOgewenst): de waarde van @classCode MOET 'CONS' zijn. (string(@classCode)=('CONS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('INT')"/>
         <xsl:otherwise>
            <xsl:message>(DirectGUOgewenst): de waarde van @moodCode MOET 'INT' zijn. (string(@moodCode)=('INT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DirectGUOgewenst): element hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(DirectGUOgewenst): element hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1003"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(DirectGUOgewenst): de elementwaarde MOET een zijn van 'code 'InstantGUODesired' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]"
                 priority="1002"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@typeCode)=('SUBJ')"/>
         <xsl:otherwise>
            <xsl:message>(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van @typeCode MOET 'SUBJ' zijn. (string(@typeCode)=('SUBJ') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]"
                 priority="1001"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('CONS')"/>
         <xsl:otherwise>
            <xsl:message>(SEOgewenst): de waarde van @classCode MOET 'CONS' zijn. (string(@classCode)=('CONS') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('INT')"/>
         <xsl:otherwise>
            <xsl:message>(SEOgewenst): de waarde van @moodCode MOET 'INT' zijn. (string(@moodCode)=('INT') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1"/>
         <xsl:otherwise>
            <xsl:message>(SEOgewenst): element hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x]. (count(hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1"/>
         <xsl:otherwise>
            <xsl:message>(SEOgewenst): element hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x]. (count(hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1 / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE -->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]"
                 priority="1000"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')"/>
         <xsl:otherwise>
            <xsl:message>(SEOgewenst): de elementwaarde MOET een zijn van 'code 'SEODesired' codeSystem '2.16.840.1.113883.2.4.4.13''. (@nullFlavor or (@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13') / error / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M12"/>
   <xsl:template match="@*|node()" priority="-2" mode="M12">
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000-closedCounseling bericht fase 1c-->


	  <!--RULE d14e4402-true-d81256e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'] | self::hl7:id[not(@nullFlavor)] | self::hl7:statusCode[@code='active' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:subject[@typeCode='SBJ'] | self::hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
                 priority="1061"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4402-true-d81256e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'] | hl7:id[not(@nullFlavor)] | hl7:statusCode[@code='active' or @nullFlavor] | hl7:effectiveTime | hl7:subject[@typeCode='SBJ'] | hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]] (rule-reference: d14e4402-true-d81256e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4434-true-d81292e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime/*[not(self::hl7:low)]"
                 priority="1060"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4434-true-d81292e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low (rule-reference: d14e4434-true-d81292e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81304e5-true-d81348e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/*[not(self::hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']])]"
                 priority="1059"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling)/d81304e5-true-d81348e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']] (rule-reference: d81304e5-true-d81348e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81304e17-true-d81401e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/*[not(self::hl7:id | self::hl7:id | self::hl7:statusCode[@code='active'] | self::hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])]"
                 priority="1058"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling)/d81304e17-true-d81401e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:id | hl7:statusCode[@code='active'] | hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d81304e17-true-d81401e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81304e43-true-d81453e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])]"
                 priority="1057"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Vrouwcounseling)/d81304e43-true-d81453e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d81304e43-true-d81453e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81483e5-true-d81545e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/*[not(self::hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])]"
                 priority="1056"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling)/d81483e5-true-d81545e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] (rule-reference: d81483e5-true-d81545e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81483e59-true-d81619e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:agentPerson[not(@nullFlavor)] | self::hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])]"
                 priority="1055"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling)/d81483e59-true-d81619e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:agentPerson[not(@nullFlavor)] | hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] (rule-reference: d81483e59-true-d81619e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81641e5-true-d81659e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]/*[not(self::hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
                 priority="1054"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenertype)/d81641e5-true-d81659e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d81641e5-true-d81659e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81483e91-true-d81688e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]/*[not(self::hl7:name)]"
                 priority="1053"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling)/d81483e91-true-d81688e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d81483e91-true-d81688e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81483e93-true-d81733e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'] | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:name | self::hl7:addr)]"
                 priority="1052"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Zorgverlenereninstelling)/d81483e93-true-d81733e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'] | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:name | hl7:addr (rule-reference: d81483e93-true-d81733e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81779e5-true-d81828e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/*[not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:county | self::hl7:country)]"
                 priority="1051"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(Zorginstellingadres)/d81779e5-true-d81828e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:county | hl7:country (rule-reference: d81779e5-true-d81828e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4452-true-d81895e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1050"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4452-true-d81895e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4452-true-d81895e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81882e8-true-d81916e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1049"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d81882e8-true-d81916e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d81882e8-true-d81916e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4461-true-d81947e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1048"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4461-true-d81947e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4461-true-d81947e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81934e8-true-d81973e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1047"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d81934e8-true-d81973e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d81934e8-true-d81973e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4470-true-d82010e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1046"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4470-true-d82010e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4470-true-d82010e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d81997e8-true-d82041e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1045"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d81997e8-true-d82041e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d81997e8-true-d82041e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4480-true-d82096e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1044"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4480-true-d82096e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4480-true-d82096e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82071e8-true-d82144e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] | self::hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])]"
                 priority="1043"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82071e8-true-d82144e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] | hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d82071e8-true-d82144e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82071e45-true-d82181e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1042"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82071e45-true-d82181e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d82071e45-true-d82181e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82168e5-true-d82211e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
                 priority="1041"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82168e5-true-d82211e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82168e5-true-d82211e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82071e52-true-d82250e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1040"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82071e52-true-d82250e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d82071e52-true-d82250e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82237e5-true-d82271e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])]"
                 priority="1039"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82237e5-true-d82271e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] (rule-reference: d82237e5-true-d82271e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4489-true-d82320e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]])]"
                 priority="1038"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4489-true-d82320e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d14e4489-true-d82320e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82289e8-true-d82374e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
                 priority="1037"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82289e8-true-d82374e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]] (rule-reference: d82289e8-true-d82374e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82289e37-true-d82405e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1036"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82289e37-true-d82405e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82289e37-true-d82405e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82392e5-true-d82426e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])]"
                 priority="1035"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82392e5-true-d82426e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')] (rule-reference: d82392e5-true-d82426e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82289e44-true-d82457e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1034"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82289e44-true-d82457e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82289e44-true-d82457e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82444e5-true-d82487e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
                 priority="1033"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82444e5-true-d82487e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82444e5-true-d82487e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82289e51-true-d82532e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1032"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82289e51-true-d82532e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82289e51-true-d82532e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82513e5-true-d82564e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
                 priority="1031"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82513e5-true-d82564e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]] (rule-reference: d82513e5-true-d82564e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82513e44-true-d82595e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1030"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82513e44-true-d82595e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82513e44-true-d82595e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82582e5-true-d82621e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])]"
                 priority="1029"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82582e5-true-d82621e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] (rule-reference: d82582e5-true-d82621e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82582e53-true-d82649e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/*[not(self::hl7:patient[hl7:statusCode[@code='completed']])]"
                 priority="1028"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82582e53-true-d82649e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code='completed']] (rule-reference: d82582e53-true-d82649e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82582e57-true-d82675e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/*[not(self::hl7:id | self::hl7:statusCode[@code='completed'] | self::hl7:Person[not(@nullFlavor)])]"
                 priority="1027"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82582e57-true-d82675e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:statusCode[@code='completed'] | hl7:Person[not(@nullFlavor)] (rule-reference: d82582e57-true-d82675e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82582e69-true-d82703e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/hl7:Person[not(@nullFlavor)]/*[not(self::hl7:birthTime)]"
                 priority="1026"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82582e69-true-d82703e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:birthTime (rule-reference: d82582e69-true-d82703e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4498-true-d82728e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1025"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4498-true-d82728e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4498-true-d82728e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82715e8-true-d82753e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
                 priority="1024"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82715e8-true-d82753e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82715e8-true-d82753e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4508-true-d82786e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1023"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4508-true-d82786e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4508-true-d82786e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82773e8-true-d82811e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
                 priority="1022"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82773e8-true-d82811e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82773e8-true-d82811e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4517-true-d82844e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1021"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4517-true-d82844e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4517-true-d82844e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82831e8-true-d82870e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1020"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82831e8-true-d82870e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d82831e8-true-d82870e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4526-true-d82907e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1019"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4526-true-d82907e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d14e4526-true-d82907e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82894e8-true-d82933e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1018"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82894e8-true-d82933e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d82894e8-true-d82933e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4536-true-d82970e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1017"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4536-true-d82970e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d14e4536-true-d82970e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d82957e8-true-d82996e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1016"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d82957e8-true-d82996e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d82957e8-true-d82996e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4545-true-d83033e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]])]"
                 priority="1015"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4545-true-d83033e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]] (rule-reference: d14e4545-true-d83033e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83020e8-true-d83054e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1014"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83020e8-true-d83054e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d83020e8-true-d83054e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4554-true-d83085e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]])]"
                 priority="1013"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4554-true-d83085e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]] (rule-reference: d14e4554-true-d83085e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83072e8-true-d83106e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
                 priority="1012"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83072e8-true-d83106e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d83072e8-true-d83106e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d14e4564-true-d83179e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]])]"
                 priority="1011"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d14e4564-true-d83179e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d14e4564-true-d83179e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83124e8-true-d83260e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:effectiveTime | self::hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])]"
                 priority="1010"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83124e8-true-d83260e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:effectiveTime | hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d83124e8-true-d83260e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83124e51-true-d83301e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1009"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83124e51-true-d83301e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e51-true-d83301e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83288e5-true-d83326e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])]"
                 priority="1008"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83288e5-true-d83326e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] (rule-reference: d83288e5-true-d83326e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83124e58-true-d83359e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1007"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83124e58-true-d83359e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e58-true-d83359e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83346e5-true-d83375e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
                 priority="1006"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83346e5-true-d83375e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83346e5-true-d83375e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83124e65-true-d83400e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1005"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83124e65-true-d83400e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e65-true-d83400e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83387e5-true-d83416e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
                 priority="1004"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83387e5-true-d83416e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83387e5-true-d83416e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83124e73-true-d83441e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1003"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83124e73-true-d83441e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e73-true-d83441e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83428e5-true-d83457e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
                 priority="1002"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83428e5-true-d83457e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83428e5-true-d83457e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83124e80-true-d83482e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
                 priority="1001"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83124e80-true-d83482e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e80-true-d83482e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>

	  <!--RULE d83469e5-true-d83498e0-->
   <xsl:template match="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
                 priority="1000"
                 mode="M13">

		<!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(.)"/>
         <xsl:otherwise>
            <xsl:message>(counseling-1c)/d83469e5-true-d83498e0: dit element '<xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83469e5-true-d83498e0) (not(.) / warning / <xsl:apply-templates select="." mode="schematron-select-full-path"/> / http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html)</xsl:message>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M13"/>
   <xsl:template match="@*|node()" priority="-2" mode="M13">
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
</xsl:stylesheet>
