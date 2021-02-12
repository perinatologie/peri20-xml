<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901198
Name: Ontslag of overplaatsing sectie kernset neonatologie
Description: Template for discharge or transfer kernset neonatology CDA section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637">
   <title>Ontslag of overplaatsing sectie kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]
Item: (CDAKsNeoSectionDischTransfer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]
Item: (CDAKsNeoSectionDischTransfer)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]"
         id="d15e68471-false-d577602e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(CDAKsNeoSectionDischTransfer): de waarde van classCode MOET 'DOCSECT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAKsNeoSectionDischTransfer): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &gt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']) &gt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:code[not(@nullFlavor)]) &gt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:code[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:code[not(@nullFlavor)]) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:code[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:title) &gt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:title) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:text) &gt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:text) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="count(hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]) &lt;= 1">(CDAKsNeoSectionDischTransfer): element hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']
Item: (CDAKsNeoSectionDischTransfer)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']"
         id="d15e68477-false-d577733e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionDischTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.701')">(CDAKsNeoSectionDischTransfer): de waarde van root MOET '2.16.840.1.113883.10.12.701' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']
Item: (CDAKsNeoSectionDischTransfer)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']"
         id="d15e68482-false-d577752e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionDischTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901198')">(CDAKsNeoSectionDischTransfer): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901198' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:code[not(@nullFlavor)]
Item: (CDAKsNeoSectionDischTransfer)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:code[not(@nullFlavor)]"
         id="d15e68487-false-d577771e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionDischTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="@displayName">(CDAKsNeoSectionDischTransfer): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:title
Item: (CDAKsNeoSectionDischTransfer)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:title"
         id="d15e68504-false-d577789e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionDischTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:text
Item: (CDAKsNeoSectionDischTransfer)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:text"
         id="d15e68506-false-d577802e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionDischTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]
Item: (CDAKsNeoSectionDischTransfer)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoSectionDischTransfer): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoSectionDischTransfer): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]
Item: (CDAKsNeoSectionDischTransfer)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]">
      <extends rule="d577876e0-false-d577882e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoSectionDischTransfer): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoSectionDischTransfer): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]
Item: (CDASupplyFeedChild)
-->
   <rule id="d577876e0-false-d577882e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]) &gt;= 1">(CDASupplyFeedChild): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]) &lt;= 1">(CDASupplyFeedChild): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@classCode) = ('SPLY')">(CDASupplyFeedChild): de waarde van classCode MOET 'SPLY' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@moodCode) = ('EVN')">(CDASupplyFeedChild): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']) &gt;= 1">(CDASupplyFeedChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']) &lt;= 1">(CDASupplyFeedChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(CDASupplyFeedChild): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(CDASupplyFeedChild): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]) &gt;= 1">(CDASupplyFeedChild): element hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]) &lt;= 1">(CDASupplyFeedChild): element hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASupplyFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901201')">(CDASupplyFeedChild): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901201' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:id[@nullFlavor = 'NI']
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASupplyFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@nullFlavor) = ('NI')">(CDASupplyFeedChild): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@typeCode) = ('PRD')">(CDASupplyFeedChild): de waarde van typeCode MOET 'PRD' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(CDASupplyFeedChild): element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &lt;= 1">(CDASupplyFeedChild): element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@classCode) = ('MANU')">(CDASupplyFeedChild): de waarde van classCode MOET 'MANU' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(CDASupplyFeedChild): element hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(CDASupplyFeedChild): element hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@classCode) = ('MMAT')">(CDASupplyFeedChild): de waarde van classCode MOET 'MMAT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@determinerCode) = ('KIND')">(CDASupplyFeedChild): de waarde van determinerCode MOET 'KIND' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(CDASupplyFeedChild): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDASupplyFeedChild): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASupplyFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASupplyFeedChild): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1 VoedingSoortCodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901198
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901203']]]
Item: (CDAKsNeoSectionDischTransfer)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901198']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901203']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoSectionDischTransfer): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901198-2018-11-08T114637.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoSectionDischTransfer): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
