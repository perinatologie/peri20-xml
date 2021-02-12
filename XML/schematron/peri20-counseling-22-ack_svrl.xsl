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
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" title="Schematron file for transaction Acknowledgement Counseling bericht 22 (2.16.840.1.113883.2.4.3.11.60.90.77.4.2405 2014-01-08T15:19:23)" schemaVersion="">
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
            <axsl:attribute name="name">mcci2-ack</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M14"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="id">template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000</axsl:attribute>
            <axsl:attribute name="name">Acknowledgement</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M15"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="id">template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000-closed</axsl:attribute>
            <axsl:attribute name="name">Acknowledgement</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/" mode="M16"/>
      </svrl:schematron-output>
   </axsl:template>

<!--SCHEMATRON PATTERNS-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Schematron file for transaction Acknowledgement Counseling bericht 22 (2.16.840.1.113883.2.4.3.11.60.90.77.4.2405 2014-01-08T15:19:23)</svrl:text>

<!--PATTERN -->

   <axsl:template match="text()" priority="-1" mode="M13"/>
   <axsl:template match="@*|node()" priority="-2" mode="M13">
      <axsl:apply-templates select="*" mode="M13"/>
   </axsl:template>

<!--PATTERN mcci2-ack-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">mcci2-ack</svrl:text>

	<!--RULE -->

   <axsl:template match="/" priority="1000" mode="M14">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="/"/>

		<!--ASSERT warning-->

      <axsl:choose>
         <axsl:when test="descendant-or-self::hl7:id[not(@nullFlavor)] | descendant-or-self::hl7:creationTime[not(@nullFlavor)] | descendant-or-self::hl7:versionCode[@code = 'NICTIZEd2005-Okt'] | descendant-or-self::hl7:interactionId[@root = '2.16.840.1.113883.1.6'] | descendant-or-self::hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] | descendant-or-self::hl7:processingCode[@code = 'P'] | descendant-or-self::hl7:processingModeCode[@code = 'T'] | descendant-or-self::hl7:acceptAckCode[@code = 'NE'] | descendant-or-self::hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="descendant-or-self::hl7:id[not(@nullFlavor)] | descendant-or-self::hl7:creationTime[not(@nullFlavor)] | descendant-or-self::hl7:versionCode[@code = 'NICTIZEd2005-Okt'] | descendant-or-self::hl7:interactionId[@root = '2.16.840.1.113883.1.6'] | descendant-or-self::hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] | descendant-or-self::hl7:processingCode[@code = 'P'] | descendant-or-self::hl7:processingModeCode[@code = 'T'] | descendant-or-self::hl7:acceptAckCode[@code = 'NE'] | descendant-or-self::hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): In de instance werd tenminste één van de volgende elementen verwacht: descendant-or-self::hl7:id[not(@nullFlavor)] | descendant-or-self::hl7:creationTime[not(@nullFlavor)] | descendant-or-self::hl7:versionCode[@code = 'NICTIZEd2005-Okt'] | descendant-or-self::hl7:interactionId[@root = '2.16.840.1.113883.1.6'] | descendant-or-self::hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] | descendant-or-self::hl7:processingCode[@code = 'P'] | descendant-or-self::hl7:processingModeCode[@code = 'T'] | descendant-or-self::hl7:acceptAckCode[@code = 'NE'] | descendant-or-self::hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M14"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M14"/>
   <axsl:template match="@*|node()" priority="-2" mode="M14">
      <axsl:apply-templates select="*" mode="M14"/>
   </axsl:template>

<!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000Acknowledgement-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Acknowledgement</svrl:text>

	<!--RULE d15e12043-false-d138869e0-->

   <axsl:template match="hl7:MCCI_IN000002" priority="1023" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002" id="d15e12043-false-d138869e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:creationTime[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:creationTime[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:creationTime[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:creationTime[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:creationTime[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:creationTime[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:versionCode[@code = 'NICTIZEd2005-Okt'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:versionCode[@code = 'NICTIZEd2005-Okt']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:versionCode[@code = 'NICTIZEd2005-Okt'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:interactionId[@root = '2.16.840.1.113883.1.6'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:interactionId[@root = '2.16.840.1.113883.1.6']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:interactionId[@root = '2.16.840.1.113883.1.6'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:processingCode[@code = 'P']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:processingCode[@code = 'P']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:processingCode[@code = 'P'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:processingCode[@code = 'P']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:processingCode[@code = 'P']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:processingCode[@code = 'P'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:processingModeCode[@code = 'T']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:processingModeCode[@code = 'T']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:processingModeCode[@code = 'T'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:processingModeCode[@code = 'T']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:processingModeCode[@code = 'T']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:processingModeCode[@code = 'T'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:acceptAckCode[@code = 'NE']) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:acceptAckCode[@code = 'NE']) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:acceptAckCode[@code = 'NE'] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:acceptAckCode[@code = 'NE']) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:acceptAckCode[@code = 'NE']) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:acceptAckCode[@code = 'NE'] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12100-false-d139012e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:id[not(@nullFlavor)]" priority="1022" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:id[not(@nullFlavor)]" id="d15e12100-false-d139012e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@root and @extension"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@root and @extension">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): Transmission: id element mist root of extension</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12110-false-d139025e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:creationTime[not(@nullFlavor)]" priority="1021" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:creationTime[not(@nullFlavor)]" id="d15e12110-false-d139025e0"/>

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
         <axsl:when test="@nullFlavor or matches(@value, '^[0-9]{14,14}')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or matches(@value, '^[0-9]{14,14}')">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_TS.DATETIME.MIN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-TS.DATETIME.MIN: null or date precision of time stamp shall be at least YYYYMMDDhhmmss.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<axsl:text/>
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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): <axsl:text/>
                  <axsl:value-of select="local-name()"/>
                  <axsl:text/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12119-false-d139042e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:versionCode[@code = 'NICTIZEd2005-Okt']" priority="1020" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:versionCode[@code = 'NICTIZEd2005-Okt']" id="d15e12119-false-d139042e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='NICTIZEd2005-Okt')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='NICTIZEd2005-Okt')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'NICTIZEd2005-Okt''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12127-false-d139062e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:interactionId[@root = '2.16.840.1.113883.1.6']" priority="1019" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:interactionId[@root = '2.16.840.1.113883.1.6']" id="d15e12127-false-d139062e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@root) = ('2.16.840.1.113883.1.6')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@root) = ('2.16.840.1.113883.1.6')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van root MOET '2.16.840.1.113883.1.6' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@root"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="interactionId" select="self::node()[@root='2.16.840.1.113883.1.6']/@extension"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@root='2.16.840.1.113883.1.6') or local-name(..)=@extension">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): Transmission: @extension moet overeenkomen met het startelement van het bericht</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12140-false-d139081e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']" priority="1018" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.9'][@extension = 'F1']" id="d15e12140-false-d139081e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@root) = ('2.16.840.1.113883.2.4.3.11.9')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@root) = ('2.16.840.1.113883.2.4.3.11.9')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.9' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@root"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@extension) = ('F1')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@extension) = ('F1')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van extension MOET 'F1' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@extension"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12150-false-d139106e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:processingCode[@code = 'P']" priority="1017" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:processingCode[@code = 'P']" id="d15e12150-false-d139106e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='P')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='P')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'P''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12158-false-d139126e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:processingModeCode[@code = 'T']" priority="1016" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:processingModeCode[@code = 'T']" id="d15e12158-false-d139126e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='T')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='T')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'T''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12167-false-d139146e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acceptAckCode[@code = 'NE']" priority="1015" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acceptAckCode[@code = 'NE']" id="d15e12167-false-d139146e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@nullFlavor or (@code='NE')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor or (@code='NE')">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de elementwaarde MOET een zijn van 'code 'NE''.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12175-false-d139166e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]" priority="1014" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]" id="d15e12175-false-d139166e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="@typeCode"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@typeCode">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): attribute @typeCode MOET aanwezig zijn.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="theAttValue" select="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@typeCode) or empty($theAttValue[not(. = (('CA','CE','CR','AA','AE','AR')))])"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@typeCode) or empty($theAttValue[not(. = (('CA','CE','CR','AA','AE','AR')))])">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van typeCode MOET 'code CA of code CE of code CR of code AA of code AE of code AR' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@typeCode"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT warning-->

      <axsl:choose>
         <axsl:when test="@typeCode='CA' or @typeCode='CE' or @typeCode='CR'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@typeCode='CA' or @typeCode='CE' or @typeCode='CR'">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): Transmission: ontvangstbevestigingen moeten acknowledgement/@typeCode CA, CE of CR hebben. In slechts sommige gevallen worden toch inhoudelijke antwoorden toegestaan (@typeCode is 'AA', 'AE' or 'AR').</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT warning-->

      <axsl:choose>
         <axsl:when test="@typeCode='AA' or @typeCode='CA' or hl7:acknowledgementDetail"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@typeCode='AA' or @typeCode='CA' or hl7:acknowledgementDetail">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): Transmission: negatieve antwoordberichten moeten ook een reden hebben waarom</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:targetMessage[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:targetMessage[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:targetMessage[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:targetMessage[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:targetMessage[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:targetMessage[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12214-false-d139242e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail" priority="1013" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail" id="d15e12214-false-d139242e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@typeCode) = ('E') or not(@typeCode)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@typeCode) = ('E') or not(@typeCode)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van typeCode MOET 'E' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@typeCode"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="hl7:code[@code and @displayName] or hl7:text"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="hl7:code[@code and @displayName] or hl7:text">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): Transmission: er moet een toelichting op de fout/waarschuwing zijn in hl7:code/@displayName of text</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:code[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:code[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:code[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:code[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:code[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:code[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:text) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:text) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:text komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12227-false-d139285e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:code[not(@nullFlavor)]" priority="1012" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:code[not(@nullFlavor)]" id="d15e12227-false-d139285e0"/>

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
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CV' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT warning-->

      <axsl:choose>
         <axsl:when test="@displayName or @codeSystem='2.16.840.1.113883.5.1100' or @codeSystem='2.16.840.1.113883.2.4.6.6.1.1000' or @codeSystem='2.16.840.1.113883.5.4'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@displayName or @codeSystem='2.16.840.1.113883.5.1100' or @codeSystem='2.16.840.1.113883.2.4.6.6.1.1000' or @codeSystem='2.16.840.1.113883.5.4'">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">warning</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): Transmission: als de code niet uit een van de standaardcodesystemen '2.16.840.1.113883.5.1100', '2.16.840.1.113883.2.4.6.6.1.1000', of '2.16.840.1.113883.5.4' komt is het @displayName attribuut verplicht</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12237-false-d139298e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:text" priority="1011" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:text" id="d15e12237-false-d139298e0"/>

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
         <axsl:when test="@nullFlavor | * | text()[string-length(normalize-space()) gt 0]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor | * | text()[string-length(normalize-space()) gt 0]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_BIN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-BIN: there must be a nullFlavor, or content must be non-empty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@integrityCheck) or @integrityCheckAlgorithm"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@integrityCheck) or @integrityCheckAlgorithm">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-ED: integrityCheckAlgorithm required if integrityCheck</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-ED: thumbnails not null and reference</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-ED: thumbnails do not have thumbnails</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-ED: compression only on binary</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain'))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain'))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-ED: value implies mediaType is text/plain</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-ED: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@value or xml) or not(@charset)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value or xml) or not(@charset)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-ED: no charset for value or xml</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:translation) or hl7:thumbnail[not(hl7:translation)]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:translation) or hl7:thumbnail[not(hl7:translation)]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-ED: no nested translations</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @mediaType) or @mediaType = 'text/plain'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @mediaType) or @mediaType = 'text/plain'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-ED: no mediaType if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @charset)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @charset)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-ED: no charset if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @language)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @language)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-ED: no language if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @compression)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @compression)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-ED: no compression if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @integrityCheck)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @integrityCheck)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-ED: no integrityCheck if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-15-ED: no integrityCheckAlgorithm if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-16-ED: no thumbnail if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and hl7:translation)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and hl7:translation)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-17-ED: no translation if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@language) or matches(@language,$RFC3066,'i')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@language) or matches(@language,$RFC3066,'i')">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-ED: @language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:reference)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:reference)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-ST: no reference</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:thumbnail)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:thumbnail)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-ST: no thumbnail</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@representation) or @representation='TXT'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@representation) or @representation='TXT'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-ST: @representation SHALL be 'TXT' if present.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@mediaType) or @mediaType='text/plain'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@mediaType) or @mediaType='text/plain'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-ST: @mediaType SHALL be 'text/plain' if present.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@compression)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@compression)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-ST: @compression SHALL NOT be used on ST.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@integrityCheck)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@integrityCheck)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-ST: @integrityCheck SHALL NOT be used on ST.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-ST: @integrityCheckAlgorithm SHALL NOT be used on ST.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12243-false-d139311e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:location" priority="1010" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:acknowledgementDetail/hl7:location" id="d15e12243-false-d139311e0"/>

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
         <axsl:when test="@nullFlavor | * | text()[string-length(normalize-space()) gt 0]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@nullFlavor | * | text()[string-length(normalize-space()) gt 0]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_BIN</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-1-BIN: there must be a nullFlavor, or content must be non-empty</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@integrityCheck) or @integrityCheckAlgorithm"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@integrityCheck) or @integrityCheckAlgorithm">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-2-ED: integrityCheckAlgorithm required if integrityCheck</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:thumbnail) or hl7:thumbnail[not(@nullFlavor and hl7:reference)]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-ED: thumbnails not null and reference</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:thumbnail) or hl7:thumbnail[not(hl7:thumbnail)]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-ED: thumbnails do not have thumbnails</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(@compression and (hl7:reference/@value or (@representation='B64' and text()))) or not(@compression)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-ED: compression only on binary</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain'))"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value) or (@value and (not(@mediaType) or @mediaType='text/plain'))">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-ED: value implies mediaType is text/plain</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(*[self::hl7:reference or self::hl7:thumbnail][@validTimeLow or @validTimeHigh or @updateMode])=0">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-ED: no history or updateMode</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@value or xml) or not(@charset)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@value or xml) or not(@charset)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-ED: no charset for value or xml</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:translation) or hl7:thumbnail[not(hl7:translation)]"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:translation) or hl7:thumbnail[not(hl7:translation)]">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-ED: no nested translations</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @mediaType) or @mediaType = 'text/plain'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @mediaType) or @mediaType = 'text/plain'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-10-ED: no mediaType if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @charset)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @charset)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-11-ED: no charset if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @language)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @language)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-12-ED: no language if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @compression)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @compression)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-13-ED: no compression if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @integrityCheck)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @integrityCheck)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-14-ED: no integrityCheck if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and @integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-15-ED: no integrityCheckAlgorithm if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor) or (not(hl7:thumbnail) or hl7:thumbnail/@nullFlavor)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-16-ED: no thumbnail if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@nullFlavor and hl7:translation)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@nullFlavor and hl7:translation)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-17-ED: no translation if null</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="RFC3066" select="'^[a-z]{2,3}(-[a-z]{2})?|[ix](-[a-z\d]{2,8})+$'"/>
      <axsl:variable name="RFC3066restricted" select="'^[a-z]{2,3}(-[a-z]{2})?$'"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@language) or matches(@language,$RFC3066,'i')"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@language) or matches(@language,$RFC3066,'i')">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ED</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-18-ED: @language SHALL conform to RFC 3066. This usually has format sss?-CC with sss? for language code (ISO-639-1 / ISO-639-2) and optional CC for country code (conform ISO-3166 alpha-2)</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:reference)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:reference)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-3-ST: no reference</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(hl7:thumbnail)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(hl7:thumbnail)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-4-ST: no thumbnail</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@representation) or @representation='TXT'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@representation) or @representation='TXT'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-5-ST: @representation SHALL be 'TXT' if present.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@mediaType) or @mediaType='text/plain'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@mediaType) or @mediaType='text/plain'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-6-ST: @mediaType SHALL be 'text/plain' if present.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@compression)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@compression)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-7-ST: @compression SHALL NOT be used on ST.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@integrityCheck)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@integrityCheck)">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-8-ST: @integrityCheck SHALL NOT be used on ST.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@integrityCheckAlgorithm) or @integrityCheckAlgorithm = 'SHA-1'">
               <axsl:attribute name="see">https://art-decor.org/mediawiki/index.php?title=DTr1_ST</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dtr1-9-ST: @integrityCheckAlgorithm SHALL NOT be used on ST.</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12250-false-d139324e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]" priority="1009" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]" id="d15e12250-false-d139324e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12255-false-d139348e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" priority="1008" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:targetMessage[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d15e12255-false-d139348e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12262-false-d139361e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]" priority="1007" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]" id="d15e12262-false-d139361e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@typeCode) = ('RCV') or not(@typeCode)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@typeCode) = ('RCV') or not(@typeCode)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van typeCode MOET 'RCV' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@typeCode"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:device[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:device[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:device[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:device[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12280-false-d139391e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]" priority="1006" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]" id="d15e12280-false-d139391e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:name) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:name) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:name komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12285-false-d139424e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" priority="1005" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d15e12285-false-d139424e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12291-false-d139437e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name" priority="1004" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name" id="d15e12291-false-d139437e0"/>

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
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12299-false-d139450e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]" priority="1003" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]" id="d15e12299-false-d139450e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="string(@typeCode) = ('SND') or not(@typeCode)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="string(@typeCode) = ('SND') or not(@typeCode)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): de waarde van typeCode MOET 'SND' zijn. Gevonden: "<axsl:text/>
                  <axsl:value-of select="@typeCode"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:device[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:device[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:device[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:device[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:device[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:device[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12317-false-d139480e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]" priority="1002" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]" id="d15e12317-false-d139480e0"/>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &gt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:id[not(@nullFlavor)]) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>

		<!--ASSERT error-->

      <axsl:choose>
         <axsl:when test="count(hl7:name) &lt;= 1"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="count(hl7:name) &lt;= 1">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): element hl7:name komt te vaak voor [max 1x].</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12322-false-d139513e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" priority="1001" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:id[not(@nullFlavor)]" id="d15e12322-false-d139513e0"/>

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
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<axsl:text/>
                  <axsl:value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>}:<axsl:text/>
                  <axsl:value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>
                  <axsl:text/>"</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*" mode="M15"/>
   </axsl:template>

	<!--RULE d15e12328-false-d139526e0-->

   <axsl:template match="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name" priority="1000" mode="M15">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)][@typeCode = ('CA', 'CE', 'CR', 'AA', 'AE', 'AR')][hl7:targetMessage]/hl7:sender[hl7:device]/hl7:device[not(@nullFlavor)]/hl7:name" id="d15e12328-false-d139526e0"/>

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
         <axsl:when test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)"/>
         <axsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="(local-name-from-QName(resolve-QName(@xsi:type,.))='EN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">
               <axsl:attribute name="see">http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html</axsl:attribute>
               <axsl:attribute name="role">error</axsl:attribute>
               <axsl:attribute name="location">
                  <axsl:apply-templates select="." mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>(mcci2-ack): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{<axsl:text/>
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

<!--PATTERN template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000-closedAcknowledgement-->

   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Acknowledgement</svrl:text>
   <axsl:template match="text()" priority="-1" mode="M16"/>
   <axsl:template match="@*|node()" priority="-2" mode="M16">
      <axsl:apply-templates select="*" mode="M16"/>
   </axsl:template>
</axsl:stylesheet>