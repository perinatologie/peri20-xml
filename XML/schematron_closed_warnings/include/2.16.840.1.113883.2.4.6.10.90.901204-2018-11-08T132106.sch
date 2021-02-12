<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901204
Name: Mortaliteit sectie kernset neonatologie
Description: Template for mortality kernset neonatology CDA section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106">
   <title>Mortaliteit sectie kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]
Item: (CDAKsNeoSectionMortality)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]
Item: (CDAKsNeoSectionMortality)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]"
         id="d15e68977-false-d688870e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(CDAKsNeoSectionMortality): de waarde van classCode MOET 'DOCSECT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAKsNeoSectionMortality): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &lt;= 1">(CDAKsNeoSectionMortality): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']) &gt;= 1">(CDAKsNeoSectionMortality): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']) &lt;= 1">(CDAKsNeoSectionMortality): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:code[(@code = '58921000146103' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoSectionMortality): element hl7:code[(@code = '58921000146103' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:code[(@code = '58921000146103' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoSectionMortality): element hl7:code[(@code = '58921000146103' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:title) &gt;= 1">(CDAKsNeoSectionMortality): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:title) &lt;= 1">(CDAKsNeoSectionMortality): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:text) &gt;= 1">(CDAKsNeoSectionMortality): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:text) &lt;= 1">(CDAKsNeoSectionMortality): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="count(hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901205']]]) &lt;= 1">(CDAKsNeoSectionMortality): element hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901205']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']
Item: (CDAKsNeoSectionMortality)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']"
         id="d15e68983-false-d688979e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionMortality): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.701')">(CDAKsNeoSectionMortality): de waarde van root MOET '2.16.840.1.113883.10.12.701' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']
Item: (CDAKsNeoSectionMortality)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']"
         id="d15e68988-false-d688998e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionMortality): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901204')">(CDAKsNeoSectionMortality): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901204' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:code[(@code = '58921000146103' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoSectionMortality)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:code[(@code = '58921000146103' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e68993-false-d689017e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionMortality): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="@nullFlavor or (@code='58921000146103' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoSectionMortality): de elementwaarde MOET een zijn van 'code '58921000146103' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="@displayName">(CDAKsNeoSectionMortality): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:title
Item: (CDAKsNeoSectionMortality)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:title"
         id="d15e69010-false-d689042e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionMortality): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:text
Item: (CDAKsNeoSectionMortality)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:text"
         id="d15e69012-false-d689055e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoSectionMortality): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901204
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901205']]]
Item: (CDAKsNeoSectionMortality)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901204']]/hl7:entry[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901205']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoSectionMortality): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901204-2018-11-08T132106.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoSectionMortality): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
