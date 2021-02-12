<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:saxon="http://saxon.sf.net/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:schold="http://www.ascc.net/xml/schematron" xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:hl7="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:peri="urn:nictiz-nl:v3/peri" xmlns:decor="http://art-decor.org/ns/decor" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:hl7nl="urn:hl7-nl:v3" xmlns:pharm="urn:ihe:pharm:medication" xmlns:lab="urn:oid:1.3.6.1.4.1.19376.1.3.2" xmlns:nfu="urn:urn:nictiz-nl:v3/nfu" version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->

   <axsl:param name="archiveDirParameter"/>
   <axsl:param name="archiveNameParameter"/>
   <axsl:param name="fileNameParameter"/>
   <axsl:param name="fileDirParameter"/>
   <axsl:variable name="document-uri">
      <axsl:value-of select="document-uri(/)"/>
   </axsl:variable>

<!--PHASES-->


<!--PROLOG-->

   <axsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" method="xml" omit-xml-declaration="no" standalone="yes" indent="yes"/>

<!--XSD TYPES FOR XSLT2-->


<!--KEYS AND FUNCTIONS-->


<!--DEFAULT RULES-->


<!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->

   <axsl:template match="*" mode="schematron-select-full-path">
      <axsl:apply-templates select="." mode="schematron-get-full-path"/>
   </axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-->
<!--This mode can be used to generate an ugly though full XPath for locators-->

   <axsl:template match="*" mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">
            <axsl:value-of select="name()"/>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>*:</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>[namespace-uri()='</axsl:text>
            <axsl:value-of select="namespace-uri()"/>
            <axsl:text>']</axsl:text>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="preceding" select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <axsl:text>[</axsl:text>
      <axsl:value-of select="1+ $preceding"/>
      <axsl:text>]</axsl:text>
   </axsl:template>
   <axsl:template match="@*" mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">@<axsl:value-of select="name()"/>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>@*[local-name()='</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>' and namespace-uri()='</axsl:text>
            <axsl:value-of select="namespace-uri()"/>
            <axsl:text>']</axsl:text>
         </axsl:otherwise>
      </axsl:choose>
   </axsl:template>

<!--MODE: SCHEMATRON-FULL-PATH-2-->
<!--This mode can be used to generate prefixed XPath for humans-->

   <axsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template><!--MODE: SCHEMATRON-FULL-PATH-3-->
<!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->

   <axsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="parent::*">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template>

<!--MODE: GENERATE-ID-FROM-PATH -->

   <axsl:template match="/" mode="generate-id-from-path"/>
   <axsl:template match="text()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </axsl:template>
   <axsl:template match="comment()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </axsl:template>
   <axsl:template match="processing-instruction()" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </axsl:template>
   <axsl:template match="@*" mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.@', name())"/>
   </axsl:template>
   <axsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <axsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <axsl:text>.</axsl:text>
      <axsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </axsl:template>

<!--MODE: GENERATE-ID-2 -->

   <axsl:template match="/" mode="generate-id-2">U</axsl:template>
   <axsl:template match="*" mode="generate-id-2" priority="2">
      <axsl:text>U</axsl:text>
      <axsl:number level="multiple" count="*"/>
   </axsl:template>
   <axsl:template match="node()" mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple" count="*"/>
      <axsl:text>n</axsl:text>
      <axsl:number count="node()"/>
   </axsl:template>
   <axsl:template match="@*" mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple" count="*"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="string-length(local-name(.))"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="translate(name(),':','.')"/>
   </axsl:template><!--Strip characters-->
   <axsl:template match="text()" priority="-1"/>

<!--SCHEMA SETUP-->

   <axsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" title="Schematron file for transaction Administratief geboortebericht fase 1a (2.16.840.1.113883.2.4.3.11.60.90.77.4.901 2011-01-28T00:00:00)" schemaVersion="">
         <axsl:comment>
            <axsl:value-of select="$archiveDirParameter"/>   
		 <axsl:value-of select="$archiveNameParameter"/>  
		 <axsl:value-of select="$fileNameParameter"/>  
		 <axsl:value-of select="$fileDirParameter"/>
         </axsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:v3" prefix="hl7"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:v3" prefix="cda"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:nictiz-nl:v3/peri" prefix="peri"/>
         <svrl:ns-prefix-in-attribute-values uri="http://art-decor.org/ns/decor" prefix="decor"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-org:sdtc" prefix="sdtc"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/XML/1998/namespace" prefix="xml"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:hl7-nl:v3" prefix="hl7nl"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:ihe:pharm:medication" prefix="pharm"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:oid:1.3.6.1.4.1.19376.1.3.2" prefix="lab"/>
         <svrl:ns-prefix-in-attribute-values uri="urn:urn:nictiz-nl:v3/nfu" prefix="nfu"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M13"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="name">admgeboorte-1a</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M14"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="id">template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000</axsl:attribute>
            <axsl:attribute name="name">Administratief geboortebericht</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M15"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="id">template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000-closed</axsl:attribute>
            <axsl:attribute name="name">Administratief geboortebericht</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M16"/>
      </svrl:schematron-output>
   </axsl:template>

<!--SCHEMATRON PATTERNS-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Schematron file for transaction Administratief geboortebericht fase 1a (2.16.840.1.113883.2.4.3.11.60.90.77.4.901 2011-01-28T00:00:00)</svrl:text>

<!--PATTERN -->

   <axsl:template match="text()" priority="-1" mode="M13"/>
   <axsl:template match="@*|node()" priority="-2" mode="M13">
      <axsl:apply-templates select="*" mode="M13"/>
   </axsl:template>

<!--PATTERN admgeboorte-1a-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">admgeboorte-1a</svrl:text>

	<!--RULE -->

   <axsl:template match="/" priority="1000" mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="/"/>

		<!--ASSERT warning-->

      <axsl:choose>
         <axsl:when test="descendant-or-self::hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="descendant-or-self::hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): In de instance werd het volgende element verwacht: descendant-or-self::hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M14"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M14"/>
   <axsl:template match="@*|node()" priority="-2" mode="M14">
      <axsl:apply-templates select="*" mode="M14"/>
   </axsl:template>

<!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000Administratief geboortebericht-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Administratief geboortebericht</svrl:text>

	<!--RULE d15e11816-false-d138027e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]" priority="1027" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]" id="d15e11816-false-d138027e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11823-false-d138050e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]" priority="1026" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]" id="d15e11823-false-d138050e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@moodCode) = ('EVN')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@moodCode) = ('EVN')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@moodCode"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:statusCode[@code = 'active']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:statusCode[@code = 'active']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:statusCode[@code = 'active'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:statusCode[@code = 'active']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:statusCode[@code = 'active']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:statusCode[@code = 'active'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:effectiveTime) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:effectiveTime) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:effectiveTime komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11957-false-d138119e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]" priority="1025" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]" id="d15e11957-false-d138119e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@code or not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@code or not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@displayName][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(@displayName,'[\r\n\t]')">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="code" select="@code"/>
      <axsl:variable name="codeSystem" select="@codeSystem"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@code=$code][@codeSystem=$codeSystem])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@code=<axsl:text/>
                  <axsl:value-of select="$code"/>
                  <axsl:text/> @codeSystem=<axsl:text/>
                  <axsl:value-of select="$codeSystem"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="translations" select=".//hl7:translation/concat(@code,@codeSystem)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count($translations)=count(distinct-values($translations))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count($translations)=count(distinct-values($translations))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): de elementwaarde MOET een zijn van 'code '118118' codeSystem '2.16.840.1.113883.2.4.15.4''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11962-false-d138139e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code = 'active']" priority="1024" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code = 'active']" id="d15e11962-false-d138139e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@codeSystem) or @codeSystem = '2.16.840.1.113883.5.139'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystem) or @codeSystem = '2.16.840.1.113883.5.139'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CS: cannot have codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@codeSystemName) or @codeSystemName = 'TimingEvent'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemName) or @codeSystemName = 'TimingEvent'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CS: cannot have codeSystemName</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CS: cannot have codeSystemVersion</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CS: cannot have displayName</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:originalText)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:originalText)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CS: cannot have originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CS: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:translation)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:translation)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-CS: cannot have translation</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='active')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='active')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'active''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11967-false-d138159e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime" priority="1023" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime" id="d15e11967-false-d138159e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="value" select="@value"/>
      <axsl:variable name="unit" select="@unit"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@value=$value][@unit=$unit])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@value=<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/> @unit=<axsl:text/>
                  <axsl:value-of select="$unit"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTS" select="@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTS,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTS,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTS,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> "<axsl:text/>
                  <axsl:value-of select="$theTS"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(*)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> met datatype TS, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11970-false-d138176e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]" priority="1022" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]" id="d15e11970-false-d138176e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11972-false-d138200e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]" priority="1021" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]" id="d15e11972-false-d138200e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:identifiedPerson[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:identifiedPerson[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:identifiedPerson[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11974-false-d138240e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:id" priority="1020" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:id" id="d15e11974-false-d138240e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (not(@nullFlavor) and @root)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-II: @root is required if @nullFlavor is not present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (@nullFlavor and not(@root))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-II: @root may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @identifierName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @identifierName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-II: @identifierName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayable)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayable)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-II: @displayable may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @reliability)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @reliability)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-II: @reliability may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @assigningAuthorityName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="not(string-length(@root) &lt;= 128)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(string-length(@root) &lt;= 128)">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-II: @root should not be longer than 128 characters. Found <axsl:text/>
               <axsl:value-of select="string-length(@root)"/>
               <axsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT warning-->

      <axsl:if test="not(string-length(@extension) &lt;= 64)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(string-length(@extension) &lt;= 64)">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-9-II: @extension should not be longer than 64 characters. Found <axsl:text/>
               <axsl:value-of select="string-length(@extension)"/>
               <axsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <axsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <axsl:variable name="UUIDpattern" select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="root" select="@root"/>
      <axsl:variable name="extension" select="@extension"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-II: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT info-->

      <axsl:choose>
         <axsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">info</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-II: Lower case UUID "<axsl:text/>
                  <axsl:value-of select="@root"/>
                  <axsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11976-false-d138253e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:addr" priority="1019" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:addr" id="d15e11976-false-d138253e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11978-false-d138266e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:statusCode" priority="1018" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:statusCode" id="d15e11978-false-d138266e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@nullFlavor and not(@code or @typeCode)) or (not(@nullFlavor) and (@code or @typeCode))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CS: @code/@typeCode and @nullFlavor are mutually exclusive</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@codeSystem) or @codeSystem = '2.16.840.1.113883.5.139'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystem) or @codeSystem = '2.16.840.1.113883.5.139'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CS: cannot have codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@codeSystemName) or @codeSystemName = 'TimingEvent'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemName) or @codeSystemName = 'TimingEvent'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CS: cannot have codeSystemName</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CS: cannot have codeSystemVersion</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CS: cannot have displayName</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:originalText)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:originalText)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CS: cannot have originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CS: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:translation)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:translation)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-CS: cannot have translation</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11982-false-d138312e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name" priority="1017" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name" id="d15e11982-false-d138312e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.1-EN: entity name shall not be null and have elements or text</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.3-EN: entity name that is not null shall not be empty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-3-EN: empty name particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT warning-->

      <axsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="substring(normalize-space(.),1,1)='&#34;'">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-EN: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-EN: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(*[tokenize(@qualifier,'\s')='LS'])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*[tokenize(@qualifier,'\s')='LS'])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_PN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-PN: Person names SHALL NOT contain a name part qualified with 'LS' (Legal status for organizations)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11984-false-d138325e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode" priority="1016" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode" id="d15e11984-false-d138325e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@code or not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@code or not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@displayName][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(@displayName,'[\r\n\t]')">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="code" select="@code"/>
      <axsl:variable name="codeSystem" select="@codeSystem"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@code=$code][@codeSystem=$codeSystem])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@code=<axsl:text/>
                  <axsl:value-of select="$code"/>
                  <axsl:text/> @codeSystem=<axsl:text/>
                  <axsl:value-of select="$codeSystem"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="translations" select=".//hl7:translation/concat(@code,@codeSystem)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count($translations)=count(distinct-values($translations))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count($translations)=count(distinct-values($translations))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11986-false-d138338e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime" priority="1015" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime" id="d15e11986-false-d138338e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="value" select="@value"/>
      <axsl:variable name="unit" select="@unit"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@value=$value][@unit=$unit])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@value=<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/> @unit=<axsl:text/>
                  <axsl:value-of select="$unit"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTS" select="@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTS,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTS,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTS,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> "<axsl:text/>
                  <axsl:value-of select="$theTS"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(*)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> met datatype TS, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11990-false-d138368e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr" priority="1014" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr" id="d15e11990-false-d138368e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11995-false-d138402e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code" priority="1013" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code" id="d15e11995-false-d138402e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@code or not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@code or not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@displayName][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(@displayName,'[\r\n\t]')">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="code" select="@code"/>
      <axsl:variable name="codeSystem" select="@codeSystem"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@code=$code][@codeSystem=$codeSystem])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@code=<axsl:text/>
                  <axsl:value-of select="$code"/>
                  <axsl:text/> @codeSystem=<axsl:text/>
                  <axsl:value-of select="$codeSystem"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="translations" select=".//hl7:translation/concat(@code,@codeSystem)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count($translations)=count(distinct-values($translations))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count($translations)=count(distinct-values($translations))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11997-false-d138415e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom" priority="1012" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom" id="d15e11997-false-d138415e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @value"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @value">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-URL: elements of type URL SHALL have a @value attribute.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @value=iri-to-uri(@value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @value=iri-to-uri(@value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-URL: @value must be a valid URI, e.g. '<axsl:text/>
                  <axsl:value-of select="iri-to-uri(@value)"/>
                  <axsl:text/>'.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="use" select="@use"/>
      <axsl:variable name="value" select="@value"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-URL: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@use=$use][@value=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@use=$use][@value=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_URL</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-URL: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and hl7:useablePeriod)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and hl7:useablePeriod)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TEL</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-TEL: not null and useablePeriod</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e11999-false-d138428e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime" priority="1011" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime" id="d15e11999-false-d138428e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="value" select="@value"/>
      <axsl:variable name="unit" select="@unit"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@value=$value][@unit=$unit])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@value=<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/> @unit=<axsl:text/>
                  <axsl:value-of select="$unit"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTS" select="@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTS,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTS,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTS,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> "<axsl:text/>
                  <axsl:value-of select="$theTS"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @operator) or @operator = 'I'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @operator) or @operator = 'I'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_SXCM_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-SXCM_TS: not operator if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(descendant-or-self::*[@nullFlavor and (@value|@unit|hl7:low|hl7:center|hl7:high|hl7:width)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(descendant-or-self::*[@nullFlavor and (@value|@unit|hl7:low|hl7:center|hl7:high|hl7:width)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-IVL_TS: null violation. Cannot have @nullFlavor and @value or other child elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@value and hl7:*)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value and hl7:*)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-IVL_TS: co-occurence violation. Cannot have @value and other child elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@value and (hl7:low|hl7:center|hl7:high|hl7:width))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value and (hl7:low|hl7:center|hl7:high|hl7:width))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-2-IVL_TS: co-occurence violation. Cannot have @value and child elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:center and (hl7:low|hl7:high|hl7:width))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:center and (hl7:low|hl7:high|hl7:width))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-3-IVL_TS: co-occurence violation. Cannot have center and other elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:width and hl7:low and hl7:high)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:width and hl7:low and hl7:high)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-4-IVL_TS: co-occurence violation. Cannot have width and have both low and high elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:*[@updateMode])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:*[@updateMode])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-IVL_TS: no updateMode on IVL attributes</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:low/@value = hl7:high/@value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:low/@value = hl7:high/@value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-IVL_TS: low/@value must not be equal to high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:width[@unit][not(@value)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:width[@unit][not(@value)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-PQR: width element: no unit without value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:width/hl7:translation)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:width/hl7:translation)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-PQR: width element: no translation</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:low[@nullFlavor='PINF'])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:low[@nullFlavor='PINF'])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-1-IVL_TS: low must be lower than or equal to high. Found low boundary PINF (Positive Infinity)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:high[@nullFlavor='NINF'])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:high[@nullFlavor='NINF'])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-2-IVL_TS: low must be lower than or equal to high. Found high boundary NINF (Negative Infinity)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="matches(hl7:width/@unit, $tum)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(hl7:width/@unit, $tum)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-IVL_TS: for width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTSLow" select="hl7:low/@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTSLow,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTSLow,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTSLow,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theLowDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTSLow) or ($theTSLow=$theTSString and $theLowDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTSLow) or ($theTSLow=$theTSString and $theLowDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-IVL_TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/>/low "<axsl:text/>
                  <axsl:value-of select="$theTSLow"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTS" select="hl7:center/@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTS,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTS,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTS,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-IVL_TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/>/center "<axsl:text/>
                  <axsl:value-of select="$theTS"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTSHigh" select="hl7:high/@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTSHigh,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTSHigh,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTSHigh,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theHighDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTSHigh) or ($theTSHigh=$theTSString and $theHighDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTSHigh) or ($theTSHigh=$theTSString and $theHighDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-IVL_TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/>/high "<axsl:text/>
                  <axsl:value-of select="$theTSHigh"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="empty($theTSLow) or empty($theTSHigh) or not($theLowDateTime castable as xs:dateTime) or not($theHighDateTime castable as xs:dateTime) or xs:dateTime($theLowDateTime) le xs:dateTime($theHighDateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTSLow) or empty($theTSHigh) or not($theLowDateTime castable as xs:dateTime) or not($theHighDateTime castable as xs:dateTime) or xs:dateTime($theLowDateTime) le xs:dateTime($theHighDateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_IVL_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-IVL_TS: low/@value (<axsl:text/>
                  <axsl:value-of select="$theTSLow"/>
                  <axsl:text/>) must be before high/@value (<axsl:text/>
                  <axsl:value-of select="$theTSHigh"/>
                  <axsl:text/>)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12003-false-d138441e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]" priority="1010" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]" id="d15e12003-false-d138441e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): element hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12005-false-d138477e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id" priority="1009" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id" id="d15e12005-false-d138477e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (not(@nullFlavor) and @root)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-II: @root is required if @nullFlavor is not present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (@nullFlavor and not(@root))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-II: @root may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @identifierName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @identifierName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-II: @identifierName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayable)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayable)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-II: @displayable may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @reliability)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @reliability)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-II: @reliability may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @assigningAuthorityName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="not(string-length(@root) &lt;= 128)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(string-length(@root) &lt;= 128)">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-II: @root should not be longer than 128 characters. Found <axsl:text/>
               <axsl:value-of select="string-length(@root)"/>
               <axsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT warning-->

      <axsl:if test="not(string-length(@extension) &lt;= 64)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(string-length(@extension) &lt;= 64)">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-9-II: @extension should not be longer than 64 characters. Found <axsl:text/>
               <axsl:value-of select="string-length(@extension)"/>
               <axsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <axsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <axsl:variable name="UUIDpattern" select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="root" select="@root"/>
      <axsl:variable name="extension" select="@extension"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-II: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT info-->

      <axsl:choose>
         <axsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">info</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-II: Lower case UUID "<axsl:text/>
                  <axsl:value-of select="@root"/>
                  <axsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12007-false-d138490e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:addr" priority="1008" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:addr" id="d15e12007-false-d138490e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12009-false-d138503e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]" priority="1007" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]" id="d15e12009-false-d138503e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@code or not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@code or not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@displayName][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(@displayName,'[\r\n\t]')">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="code" select="@code"/>
      <axsl:variable name="codeSystem" select="@codeSystem"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@code=$code][@codeSystem=$codeSystem])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@code=<axsl:text/>
                  <axsl:value-of select="$code"/>
                  <axsl:text/> @codeSystem=<axsl:text/>
                  <axsl:value-of select="$codeSystem"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="translations" select=".//hl7:translation/concat(@code,@codeSystem)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count($translations)=count(distinct-values($translations))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count($translations)=count(distinct-values($translations))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'NMTH' codeSystem '2.16.840.1.113883.5.111''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12016-false-d138540e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name" priority="1006" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name" id="d15e12016-false-d138540e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.1-EN: entity name shall not be null and have elements or text</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.3-EN: entity name that is not null shall not be empty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-3-EN: empty name particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT warning-->

      <axsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="substring(normalize-space(.),1,1)='&#34;'">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-EN: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-EN: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(*[tokenize(@qualifier,'\s')='LS'])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*[tokenize(@qualifier,'\s')='LS'])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_PN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-PN: Person names SHALL NOT contain a name part qualified with 'LS' (Legal status for organizations)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12018-false-d138553e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime" priority="1005" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime" id="d15e12018-false-d138553e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:uncertainty/@expression) and not(hl7:uncertainty/@uncertainty) and not(hl7:uncertainty/@originalText)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-QTY: no uncertainty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:originalText or self::hl7:uncertainty or self::hl7:expression][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-QTY: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-QTY: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="value" select="@value"/>
      <axsl:variable name="unit" select="@unit"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@value=$value][@unit=$unit])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@value=$value][@unit=$unit])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_QTY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-QTY: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@value=<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/> @unit=<axsl:text/>
                  <axsl:value-of select="$unit"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@nullFlavor or @value or *) and not(@nullFlavor and @value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-TS: null or value or child element in case of extension</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theTS" select="@value"/>
      <axsl:variable name="theBC" select="if (starts-with($theTS,'-')) then '-' else ()"/>
      <axsl:variable name="theTZ" select="replace($theTS,'-?[^+-]+([+-].*)?$','$1')"/>
      <axsl:variable name="theTZh" select="if (string-length($theTZ)&gt;0) then substring($theTZ,1,3) else ()"/>
      <axsl:variable name="theTZm" select="if (string-length($theTZ)&gt;3) then substring($theTZ,4) else ()"/>
      <axsl:variable name="theBaseTS" select="replace($theTS,'^-?([^+-]+)([+-].*)?','$1')"/>
      <axsl:variable name="theCentury" select="if (substring($theBaseTS,1,2) castable as xs:integer) then substring($theBaseTS,1,2) else ()"/>
      <axsl:variable name="theYear" select="if (substring($theBaseTS,3,2) castable as xs:integer) then substring($theBaseTS,3,2) else ()"/>
      <axsl:variable name="theMonth" select="if (substring($theBaseTS,5,2) castable as xs:integer) then substring($theBaseTS,5,2) else ()"/>
      <axsl:variable name="theDay" select="if (substring($theBaseTS,7,2) castable as xs:integer) then substring($theBaseTS,7,2) else ()"/>
      <axsl:variable name="theHour" select="if (substring($theBaseTS,9,2) castable as xs:integer) then substring($theBaseTS,9,2) else ()"/>
      <axsl:variable name="theMinute" select="if (substring($theBaseTS,11,2) castable as xs:integer) then substring($theBaseTS,11,2) else ()"/>
      <axsl:variable name="theSecond" select="if (substring($theBaseTS,13,2) castable as xs:integer) then substring($theBaseTS,13,2) else ()"/>
      <axsl:variable name="theSubSecond" select="if (substring($theBaseTS,16) castable as xs:integer) then substring($theBaseTS,15) else ()"/>
      <axsl:variable name="cCentury" select="if (empty($theCentury)) then '00' else $theCentury"/>
      <axsl:variable name="cYear" select="if (empty($theYear)) then '00' else $theYear"/>
      <axsl:variable name="cMonth" select="if (empty($theMonth)) then '01' else $theMonth"/>
      <axsl:variable name="cDay" select="if (empty($theDay)) then '01' else $theDay"/>
      <axsl:variable name="cHour" select="if (empty($theHour)) then '00' else $theHour"/>
      <axsl:variable name="cMinute" select="if (empty($theMinute)) then '00' else $theMinute"/>
      <axsl:variable name="cSecond" select="if (empty($theSecond)) then '00' else $theSecond"/>
      <axsl:variable name="cTZ" select="string-join(($theTZh,$theTZm),':')"/>
      <axsl:variable name="theTSString" select="string-join(($theBC,$theCentury,$theYear,$theMonth,$theDay,$theHour,$theMinute,$theSecond,$theSubSecond,$theTZ),'')"/>
      <axsl:variable name="theDateTime" select="concat($theBC,$cCentury,$cYear,'-',$cMonth,'-',$cDay,'T',$cHour,':',$cMinute,':',$cSecond,$theSubSecond,$cTZ)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($theTS) or ($theTS=$theTSString and $theDateTime castable as xs:dateTime)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-TS: <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> "<axsl:text/>
                  <axsl:value-of select="$theTS"/>
                  <axsl:text/>" is not a valid timestamp.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(*)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> met datatype TS, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12023-false-d138570e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']" priority="1004" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']" id="d15e12023-false-d138570e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@classCode) = ('ORG')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@classCode) = ('ORG')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@classCode"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12027-false-d138601e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:id" priority="1003" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:id" id="d15e12027-false-d138601e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (not(@nullFlavor) and @root)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (not(@nullFlavor) and @root)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-II: @root is required if @nullFlavor is not present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (@nullFlavor and not(@root))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (@nullFlavor and not(@root))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-II: @root may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @identifierName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @identifierName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-II: @identifierName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayable)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayable)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-II: @displayable may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @reliability)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @reliability)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-II: @reliability may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @assigningAuthorityName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @assigningAuthorityName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-II: @assigningAuthorityName may not be used if @nullFlavor is present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="not(string-length(@root) &lt;= 128)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(string-length(@root) &lt;= 128)">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-II: @root should not be longer than 128 characters. Found <axsl:text/>
               <axsl:value-of select="string-length(@root)"/>
               <axsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT warning-->

      <axsl:if test="not(string-length(@extension) &lt;= 64)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(string-length(@extension) &lt;= 64)">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-9-II: @extension should not be longer than 64 characters. Found <axsl:text/>
               <axsl:value-of select="string-length(@extension)"/>
               <axsl:text/> characters. Please write a note to the authors of this rule if this is found to be not sufficient</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
      <axsl:variable name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
      <axsl:variable name="UUIDpattern" select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-II: @root SHALL be a syntactically correct OID or UUID.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(matches(@root, $RUIDpattern) and not(matches(@root, $UUIDpattern)))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10a-II: @root SHALL NOT be a RUID. Identifiers in this scheme are only defined by balloted HL7 specifications. Local communities or systems must never use such reserved identifiers based on bilateral negotiations.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="root" select="@root"/>
      <axsl:variable name="extension" select="@extension"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@root=$root][empty($extension)] or $set_other[@root=$root][@extension=$extension])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-II: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT info-->

      <axsl:choose>
         <axsl:when test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(matches(@root, $UUIDpattern) and matches(@root, '[a-z]'))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_II</axsl:attribute>
               <axsl:attribute name="role">info</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-II: Lower case UUID "<axsl:text/>
                  <axsl:value-of select="@root"/>
                  <axsl:text/>" found in @root. UUIDs SHALL, under official HL7 V3 Datatypes Release 1 (and 2) rules, have upper case hexadecimal digits A-F. RFC 4122 and HL7 FHIR state lower case UUID display.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12029-false-d138614e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:code" priority="1002" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:code" id="d15e12029-false-d138614e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or @code or (hl7:originalText and not(hl7:originalText/@nullFlavor))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CD: null or code and/or originalText</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-CD: code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-CD: codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@codeSystem or not(@codeSystemVersion)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@codeSystem or not(@codeSystemVersion)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-CD: codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@code or not(@displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@code or not(@displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-CD: displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @code)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @code)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-CD: co-occurence violation. Cannot have code and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @displayName)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @displayName)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-CD: co-occurence violation. Cannot have displayName and null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-CD: no null on translations (Exceptional values (NULL-values) can not be elements of a set.)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystem][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystem][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-CD: translation code requires codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemName][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-CD: translation codeSystemName only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@codeSystemVersion][not(@codeSystem)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-CD: translation codeSystemVersion only if codeSystem</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:translation[@displayName][not(@code)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:translation[@displayName][not(@code)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-CD: translation displayName only if code</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="matches(@displayName,'[\r\n\t]')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(@displayName,'[\r\n\t]')">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-15-CD: it looks like there are formatting instructions in attribute @displayName. Please note that this may lead to interoperability problems.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>
      <axsl:variable name="code" select="@code"/>
      <axsl:variable name="codeSystem" select="@codeSystem"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[@code=$code][@codeSystem=$codeSystem])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[@code=$code][@codeSystem=$codeSystem])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-CD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (@code=<axsl:text/>
                  <axsl:value-of select="$code"/>
                  <axsl:text/> @codeSystem=<axsl:text/>
                  <axsl:value-of select="$codeSystem"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="translations" select=".//hl7:translation/concat(@code,@codeSystem)"/>

		<!--ASSERT -->

      <axsl:choose>
         <axsl:when test="count($translations)=count(distinct-values($translations))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count($translations)=count(distinct-values($translations))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-19-CD: [RIM-002] translations SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(.//hl7:originalText[@language and not(matches(@language,$RFC3066,'i'))])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-20-CD: originalText/@language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:qualifier)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:qualifier)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_CE</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-CE: cannot have qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12031-false-d138627e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:name" priority="1001" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:name" id="d15e12031-false-d138627e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and (* or string-length(normalize-space(string-join(text(),'')))&gt;0))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.1-EN: entity name shall not be null and have elements or text</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(* and string-length(normalize-space(string-join(text(),'')))&gt;0)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.2-EN: entity name shall not have both elements and text (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or * or string-length(normalize-space(string-join(text(),'')))&gt;0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1.3-EN: entity name that is not null shall not be empty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-3-EN: empty name particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>

		<!--REPORT warning-->

      <axsl:if test="substring(normalize-space(.),1,1)='&#34;'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="substring(normalize-space(.),1,1)='&#34;'">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-4-EN: Use of quotes at the beginning of a name are probably not correct.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-EN: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-EN: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:*) or hl7:*[count(tokenize(@qualifier,'\s'))=count(distinct-values(tokenize(@qualifier,'\s')))]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_EN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-EN: enxp elements SHALL have distinct values in @qualifier</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:family)=0 and count(hl7:given)=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:family)=0 and count(hl7:given)=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ON</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ON: no parts may be person name type particles</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(*)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ON</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-ON: organization names SHALL be element content</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12035-false-d138653e0-->

   <axsl:template match="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:contact/hl7:addr" priority="1000" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:contact/hl7:addr" id="d15e12035-false-d138653e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="every $elm in descendant-or-self::* satisfies $elm[             not(@nullFlavor) or             (@nullFlavor                        and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. =  '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or             (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation']))         ]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="every $elm in descendant-or-self::* satisfies $elm[ not(@nullFlavor) or (@nullFlavor and not(@* except (@xsi:type|@xsi:nil|@classCode|@typeCode|@determinerCode|@moodCode|@nullFlavor|@partType|@codeSystem[. = '2.16.840.1.113883.5.139']|@codeSystemName[. = 'TimingEvent']|@integrityCheckAlgorithm[. = 'SHA-1']|@inverted[. = 'false']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1']) | * | text()[string-length(normalize-space()) gt 0])) or (@nullFlavor = ('OTH', 'NA', 'UNC') and not(@* except (@xsi:type|@xsi:nil|@*:valueSet|@*:valueSetVersion|@codeSystem|@codeSystemName|@codeSystemVersion|@extension|@nullFlavor|@partType|@integrityCheckAlgorithm[. = 'SHA-1']|@mediaType[. = 'text/plain']|@operator[. = 'I']|@representation[. = 'TXT']|@inclusive[. = 'true']|@unit[. = '1'])) and (@extension | @codeSystem | *[local-name()='originalText'] | *[local-name()='translation'])) ]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ANY</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-ANY: if there is a nullFlavor, there shall be no text or other attribute or element, unless it's nullFlavor='OTH' or 'NA' 
        (@codeSystem, &lt;originalText&gt; or &lt;translation&gt; may have a value), or nullFlavor 'UNC' (@extension or &lt;originalText&gt; may have a value). Found: &lt;<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>
      
                  <axsl:text/>
                  <axsl:value-of select="for $att in (@* except @nullFlavor) return concat(' ', name($att), '=&#34;', $att, '&#34;')"/>
                  <axsl:text/>&gt;<axsl:text/>
                  <axsl:value-of select="for $elm in * return concat('&lt;', name($elm), '... /&gt;')"/>
                  <axsl:text/>&lt;/<axsl:text/>
                  <axsl:value-of select="name()"/>
                  <axsl:text/>&gt;</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (count(*)&gt;0 and not(text()[string-length(normalize-space())&gt;0])) or (count(*)=0 and text()[string-length(normalize-space())&gt;0])">
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-AD: address shall be null or text only or element only (no mixed content)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:useablePeriod/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-AD: no useablePeriod if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:useablePeriod][@updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:useablePeriod][@updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-AD: updateMode shall not be used on address elements</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or          string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or string-length(hl7:useablePeriod/hl7:low/@value) = string-length(hl7:useablePeriod/hl7:high/@value)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-AD: useablePeriod/low/@value must have the same precision as useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or         number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:useablePeriod/hl7:low/@value and hl7:useablePeriod/hl7:high/@value) or number(substring(concat(hl7:useablePeriod/hl7:low/@value,'00000000000000'),1,14)) &lt; number(substring(concat(hl7:useablePeriod/hl7:high/@value,'00000000000000'),1,14))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-AD: useablePeriod/low/@value must be before useablePeriod/high/@value</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="tum" select="'^(us|ms|s|min|h|d|wk|mo|a|)$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="matches(hl7:useablePeriod/hl7:width/@unit, $tum)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-AD: for useablePeriod/width only us (microseconds), ms (milliseconds), s (seconds), min (minute), h (hours), d (day), wk (week), mo (month) or a (year) are allowed</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--REPORT warning-->

      <axsl:if test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="*[not(@nullFlavor or self::hl7:useablePeriod)][normalize-space(.)='']">
            <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
            <axsl:attribute name="role">warning</axsl:attribute>
            <axsl:attribute name="location">
               <axsl:apply-templates select="." mode="schematron-select-full-path"/>
            </axsl:attribute>
            <svrl:text>dtr1-8-AD: empty address particles should not be present.</svrl:text>
         </svrl:successful-report>
      </axsl:if>
      <axsl:variable name="name" select="local-name()"/>
      <axsl:variable name="value" select="string-join((.//@use|.//text()),'')"/>
      <axsl:variable name="set_other" select="preceding-sibling::*[local-name()=$name] | following-sibling::*[local-name()=$name]"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and $set_other[not(@nullFlavor)])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and $set_other[not(@nullFlavor)])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-AD: [RIM-001] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> SHALL NOT have nullFlavor, if there are other <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> elements which are not null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not($set_other[string-join((.//@use|.//text()),'')=$value])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($set_other[string-join((.//@use|.//text()),'')=$value])">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_AD</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-AD: [RIM-002] <axsl:text/>
                  <axsl:value-of select="$name"/>
                  <axsl:text/> (<axsl:text/>
                  <axsl:value-of select="$value"/>
                  <axsl:text/>) SHALL be distinct</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M15"/>
   <axsl:template match="@*|node()" priority="-2" mode="M15">
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

<!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000-closedAdministratief geboortebericht-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Administratief geboortebericht</svrl:text>
   <axsl:template match="text()" priority="-1" mode="M16"/>
   <axsl:template match="@*|node()" priority="-2" mode="M16">
      <axsl:apply-templates select="*" mode="M16"/>
   </axsl:template>
</axsl:stylesheet>