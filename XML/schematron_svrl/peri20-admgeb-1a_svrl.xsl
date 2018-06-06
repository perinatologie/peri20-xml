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
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>

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
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                              title=" Schematron file for PRPA_IN101001 - Administratief geboortebericht fase 1a "
                              schemaVersion="">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:v3" prefix="hl7"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:v3" prefix="cda"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:nictiz-nl:v3/peri" prefix="peri"/>
         <svrl:ns-prefix-in-attribute-values uri="http://art-decor.org/ns/decor" prefix="decor"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:sdtc" prefix="sdtc"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:urn:nictiz-nl:v3/nfu" prefix="nfu"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:ihe:pharm:medication" prefix="pharm"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M11"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="id">template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000</xsl:attribute>
            <xsl:attribute name="name">Administratief geboortebericht</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M12"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="id">template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000-closed</xsl:attribute>
            <xsl:attribute name="name">Administratief geboortebericht</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M13"/>
      </svrl:schematron-output>
   </xsl:template>

   <!--SCHEMATRON PATTERNS-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl"> Schematron file for PRPA_IN101001 - Administratief geboortebericht fase 1a </svrl:text>

   <!--PATTERN -->
   <xsl:template match="text()" priority="-1" mode="M11"/>
   <xsl:template match="@*|node()" priority="-2" mode="M11">
      <xsl:apply-templates select="*" mode="M11"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000Administratief geboortebericht-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Administratief geboortebericht</svrl:text>

	  <!--RULE d19e3348-false-d36170e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]"
                 priority="1027"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3355-false-d36188e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]"
                 priority="1026"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@moodCode)=('EVN')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string(@moodCode)=('EVN')">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): de waarde van @moodCode MOET 'EVN' zijn.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:statusCode[@code='active'])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:statusCode[@code='active'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:statusCode[@code='active'])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:statusCode[@code='active'])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:effectiveTime)&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:effectiveTime)&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:effectiveTime komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject1[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:subject1[not(@nullFlavor)])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:subject1[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:subject1[not(@nullFlavor)])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3489-false-d36239e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]"
                 priority="1025"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@code or not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@displayName][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="matches(@displayName,'[\r\n\t]')">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@code=<xsl:text/>
                  <xsl:value-of select="$code"/>
                  <xsl:text/> @codeSystem=<xsl:text/>
                  <xsl:value-of select="$codeSystem"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="translations"
                    select=".//hl7:translation/concat(@code,@codeSystem)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count($translations)=count(distinct-values($translations))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($translations)=count(distinct-values($translations))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): de elementwaarde MOET een zijn van 'code '118118' codeSystem '2.16.840.1.113883.2.4.15.4''.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3494-false-d36257e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code='active']"
                 priority="1024"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystem)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CS: cannot have codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CS: cannot have codeSystemName</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CS: cannot have codeSystemVersion</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CS: cannot have displayName</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:originalText)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:originalText)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CS: cannot have originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CS: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:translation)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-8-CS: cannot have translation</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='active')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (@code='active')">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'active''.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3499-false-d36274e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime"
                 priority="1023"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="value" select="@value"/>
      <xsl:variable name="unit" select="@unit"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@value=$value][@unit=$unit])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@value=<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/> @unit=<xsl:text/>
                  <xsl:value-of select="$unit"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> met datatype TS, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3502-false-d36288e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]"
                 priority="1022"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:IdentifiedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:IdentifiedPerson[not(@nullFlavor)])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:IdentifiedPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:IdentifiedPerson[not(@nullFlavor)])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3504-false-d36305e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]"
                 priority="1021"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3506-false-d36338e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:id"
                 priority="1020"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (not(@nullFlavor) and @root)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-II: @root is required if @nullFlavor is not present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (@nullFlavor and not(@root))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-II: @root may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @identifierName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-II: @identifierName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayable)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-II: @displayable may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @reliability)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-II: @reliability may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @assigningAuthorityName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(string-length(@root) &lt;= 128)">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
               <xsl:value-of select="string-length(@root)"/>
               <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(string-length(@extension) &lt;= 64)">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
               <xsl:value-of select="string-length(@extension)"/>
               <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations.</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-II: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-II: Lower case UUID "<xsl:text/>
                  <xsl:value-of select="@root"/>
                  <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3508-false-d36349e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:addr"
                 priority="1019"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3510-false-d36360e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:statusCode"
                 priority="1018"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystem)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CS: cannot have codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CS: cannot have codeSystemName</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CS: cannot have codeSystemVersion</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CS: cannot have displayName</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:originalText)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:originalText)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CS: cannot have originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CS: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:translation)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:translation)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-8-CS: cannot have translation</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3514-false-d36403e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name"
                 priority="1017"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.1-EN: entity name shall not be null and have elements or text</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.3-EN: entity name that is not null shall not be empty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-3-EN: empty name particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="substring(normalize-space(.),1,1)='&#34;'">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-EN: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-EN: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*[tokenize(@qualifier,'\s')='LS'])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(*[tokenize(@qualifier,'\s')='LS'])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_PN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-PN: Person names SHALL NOT contain a name part qualified with 'LS' (Legal status for organizations)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3516-false-d36414e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode"
                 priority="1016"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@code or not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@displayName][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="matches(@displayName,'[\r\n\t]')">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@code=<xsl:text/>
                  <xsl:value-of select="$code"/>
                  <xsl:text/> @codeSystem=<xsl:text/>
                  <xsl:value-of select="$codeSystem"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="translations"
                    select=".//hl7:translation/concat(@code,@codeSystem)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count($translations)=count(distinct-values($translations))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($translations)=count(distinct-values($translations))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3518-false-d36425e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime"
                 priority="1015"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="value" select="@value"/>
      <xsl:variable name="unit" select="@unit"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@value=$value][@unit=$unit])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@value=<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/> @unit=<xsl:text/>
                  <xsl:value-of select="$unit"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> met datatype TS, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3522-false-d36450e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr"
                 priority="1014"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3527-false-d36480e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code"
                 priority="1013"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@code or not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@displayName][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="matches(@displayName,'[\r\n\t]')">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@code=<xsl:text/>
                  <xsl:value-of select="$code"/>
                  <xsl:text/> @codeSystem=<xsl:text/>
                  <xsl:value-of select="$codeSystem"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="translations"
                    select=".//hl7:translation/concat(@code,@codeSystem)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count($translations)=count(distinct-values($translations))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($translations)=count(distinct-values($translations))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3529-false-d36491e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom"
                 priority="1012"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @value"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @value">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-URL: elements of type URL SHALL have a @value attribute.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @value=iri-to-uri(@value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or @value=iri-to-uri(@value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-URL: @value must be a valid URI, e.g. '<xsl:text/>
                  <xsl:value-of select="iri-to-uri(@value)"/>
                  <xsl:text/>'.</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-URL: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@use=$use][@value=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@use=$use][@value=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-URL: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and hl7:useablePeriod)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and hl7:useablePeriod)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TEL</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-TEL: not null and useablePeriod</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3531-false-d36502e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime"
                 priority="1011"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="value" select="@value"/>
      <xsl:variable name="unit" select="@unit"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@value=$value][@unit=$unit])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@value=<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/> @unit=<xsl:text/>
                  <xsl:value-of select="$unit"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @operator) or @operator = 'I'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @operator) or @operator = 'I'">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_SXCM_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-SXCM_TS: not operator if null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(descendant-or-self::*[@nullFlavor and (@value|@unit|hl7:low|hl7:center|hl7:high|hl7:width)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(descendant-or-self::*[@nullFlavor and (@value|@unit|hl7:low|hl7:center|hl7:high|hl7:width)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-IVL_TS: null violation. Cannot have @nullFlavor and @value or other child elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value and hl7:*)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value and hl7:*)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-IVL_TS: co-occurence violation. Cannot have @value and other child elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@value and (hl7:low|hl7:center|hl7:high|hl7:width))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@value and (hl7:low|hl7:center|hl7:high|hl7:width))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-2-IVL_TS: co-occurence violation. Cannot have @value and child elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:center and (hl7:low|hl7:high|hl7:width))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:center and (hl7:low|hl7:high|hl7:width))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-3-IVL_TS: co-occurence violation. Cannot have center and other elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:width and hl7:low and hl7:high)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:width and hl7:low and hl7:high)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-4-IVL_TS: co-occurence violation. Cannot have width and have both low and high elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*[@updateMode])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:*[@updateMode])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-IVL_TS: no updateMode on IVL attributes</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:low/@value = hl7:high/@value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:low/@value = hl7:high/@value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-IVL_TS: low/@value must not be equal to high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:width[@unit][not(@value)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:width[@unit][not(@value)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-PQR: width element: no unit without value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:width/hl7:translation)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:width/hl7:translation)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-PQR: width element: no translation</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:low/@value and hl7:high/@value) or number(substring(concat(hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:low/@value and hl7:high/@value) or number(substring(concat(hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:high/@value,'00000000000000'),1,14))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-IVL_TS: low/@value must be before high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:low[@nullFlavor='PINF'])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:low[@nullFlavor='PINF'])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-1-IVL_TS: low must be lower than or equal to high. Found low boundary PINF (Positive Infinity)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:high[@nullFlavor='NINF'])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:high[@nullFlavor='NINF'])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-2-IVL_TS: low must be lower than or equal to high. Found high boundary NINF (Negative Infinity)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(hl7:width/@unit, $tum)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-8-IVL_TS: for width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-IVL_TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/>/low "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-IVL_TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/>/center "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-IVL_TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/>/high "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3535-false-d36514e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]"
                 priority="1010"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3537-false-d36544e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id"
                 priority="1009"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (not(@nullFlavor) and @root)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-II: @root is required if @nullFlavor is not present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (@nullFlavor and not(@root))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-II: @root may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @identifierName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-II: @identifierName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayable)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-II: @displayable may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @reliability)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-II: @reliability may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @assigningAuthorityName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(string-length(@root) &lt;= 128)">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
               <xsl:value-of select="string-length(@root)"/>
               <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(string-length(@extension) &lt;= 64)">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
               <xsl:value-of select="string-length(@extension)"/>
               <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations.</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-II: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-II: Lower case UUID "<xsl:text/>
                  <xsl:value-of select="@root"/>
                  <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3539-false-d36555e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:addr"
                 priority="1008"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3541-false-d36567e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]"
                 priority="1007"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@code or not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@displayName][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="matches(@displayName,'[\r\n\t]')">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@code=<xsl:text/>
                  <xsl:value-of select="$code"/>
                  <xsl:text/> @codeSystem=<xsl:text/>
                  <xsl:value-of select="$codeSystem"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="translations"
                    select=".//hl7:translation/concat(@code,@codeSystem)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count($translations)=count(distinct-values($translations))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($translations)=count(distinct-values($translations))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'NMTH' codeSystem '2.16.840.1.113883.5.111''.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3548-false-d36599e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name"
                 priority="1006"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.1-EN: entity name shall not be null and have elements or text</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.3-EN: entity name that is not null shall not be empty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-3-EN: empty name particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="substring(normalize-space(.),1,1)='&#34;'">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-EN: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-EN: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*[tokenize(@qualifier,'\s')='LS'])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(*[tokenize(@qualifier,'\s')='LS'])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_PN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-PN: Person names SHALL NOT contain a name part qualified with 'LS' (Legal status for organizations)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3550-false-d36610e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime"
                 priority="1005"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="value" select="@value"/>
      <xsl:variable name="unit" select="@unit"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@value=$value][@unit=$unit])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@value=<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/> @unit=<xsl:text/>
                  <xsl:value-of select="$unit"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-TS: <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="$theTS"/>
                  <xsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): <xsl:text/>
                  <xsl:value-of select="local-name()"/>
                  <xsl:text/> met datatype TS, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3555-false-d36624e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']"
                 priority="1004"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="string(@classCode)=('ORG')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string(@classCode)=('ORG')">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): de waarde van @classCode MOET 'ORG' zijn.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3559-false-d36651e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:id"
                 priority="1003"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (not(@nullFlavor) and @root)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-II: @root is required if @nullFlavor is not present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (@nullFlavor and not(@root))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-II: @root may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @identifierName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @identifierName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-II: @identifierName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayable)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayable)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-II: @displayable may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @reliability)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @reliability)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-II: @reliability may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @assigningAuthorityName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@root) &lt;= 128)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(string-length(@root) &lt;= 128)">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-II: @root should not be longer than 128 characters. Found <xsl:text/>
               <xsl:value-of select="string-length(@root)"/>
               <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="not(string-length(@extension) &lt;= 64)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(string-length(@extension) &lt;= 64)">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-9-II: @extension should not be longer than 64 characters. Found <xsl:text/>
               <xsl:value-of select="string-length(@extension)"/>
               <xsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <xsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <xsl:variable name="UUIDpattern"
                    select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations.</svrl:text>
            </svrl:failed-assert>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-II: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</xsl:attribute>
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-II: Lower case UUID "<xsl:text/>
                  <xsl:value-of select="@root"/>
                  <xsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3561-false-d36662e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:code"
                 priority="1002"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@codeSystem or not(@codeSystemVersion)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code or not(@displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@code or not(@displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @code)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and @displayName)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and @displayName)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:translation[@displayName][not(@code)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="matches(@displayName,'[\r\n\t]')">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
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
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (@code=<xsl:text/>
                  <xsl:value-of select="$code"/>
                  <xsl:text/> @codeSystem=<xsl:text/>
                  <xsl:value-of select="$codeSystem"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="translations"
                    select=".//hl7:translation/concat(@code,@codeSystem)"/>

		    <!--ASSERT -->
      <xsl:choose>
         <xsl:when test="count($translations)=count(distinct-values($translations))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($translations)=count(distinct-values($translations))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <xsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:qualifier)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3563-false-d36673e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:name"
                 priority="1001"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.1-EN: entity name shall not be null and have elements or text</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1.3-EN: entity name that is not null shall not be empty</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-3-EN: empty name particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>

		    <!--REPORT warning-->
      <xsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="substring(normalize-space(.),1,1)='&#34;'">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-EN: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-EN: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(hl7:family)=0 and count(hl7:given)=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(hl7:family)=0 and count(hl7:given)=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ON</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ON: no parts may be person name type particles</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ON</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-ON: organization names SHALL be element content</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

	  <!--RULE d19e3567-false-d36695e0-->
   <xsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:contact/hl7:addr"
                 priority="1000"
                 mode="M12">

		<!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="descendant-or-self::*[                 not(@nullFlavor) or                 (@nullFlavor                 and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or                 (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or                 (@nullFlavor = 'UNC'         and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension)              )]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="descendant-or-self::*[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA') and not(@* except (@xsi:type|@xsi:nil|@codeSystem|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@codeSystem | hl7:originalText | hl7:translation)) or (@nullFlavor = 'UNC' and not(@* except (@xsi:type|@xsi:nill|@extension|@nullFlavor|@integrityCheckAlgorithm[. = 'SHA-1']|@inclusive[. = 'true'])) and (@extension) )]">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension may have a value)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--REPORT warning-->
      <xsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="name" select="local-name()"/>
      <xsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <xsl:variable name="set_other"
                    select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> SHALL NOT have nullFlavor, if there are other <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <xsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <xsl:text/>
                  <xsl:value-of select="$name"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$value"/>
                  <xsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>

		    <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <xsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<xsl:text/>
                  <xsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>}:<xsl:text/>
                  <xsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <xsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>
   <xsl:template match="text()" priority="-1" mode="M12"/>
   <xsl:template match="@*|node()" priority="-2" mode="M12">
      <xsl:apply-templates select="*" mode="M12"/>
   </xsl:template>

   <!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000-closedAdministratief geboortebericht-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Administratief geboortebericht</svrl:text>
   <xsl:template match="text()" priority="-1" mode="M13"/>
   <xsl:template match="@*|node()" priority="-2" mode="M13">
      <xsl:apply-templates select="*" mode="M13"/>
   </xsl:template>
</xsl:stylesheet>
