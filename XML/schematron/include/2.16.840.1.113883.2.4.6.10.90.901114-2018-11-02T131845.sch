<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901114
Name: Estimated Delivery Date CDA
Description: Estimated Delivery Date CDA Observation 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845">
   <title>Estimated Delivery Date CDA</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901114
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]
Item: (CDAEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901114
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]
Item: (CDAEDD)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]"
         id="d15e60546-false-d501333e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="string(@classCode) = ('OBS')">(CDAEDD): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="string(@moodCode) = ('EVN')">(CDAEDD): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114']) &gt;= 1">(CDAEDD): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114']) &lt;= 1">(CDAEDD): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &gt;= 1">(CDAEDD): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &lt;= 1">(CDAEDD): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:code[(@code = '11778-8' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &gt;= 1">(CDAEDD): element hl7:code[(@code = '11778-8' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:code[(@code = '11778-8' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &lt;= 1">(CDAEDD): element hl7:code[(@code = '11778-8' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:value) &gt;= 1">(CDAEDD): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="count(hl7:value) &lt;= 1">(CDAEDD): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901114
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114']
Item: (CDAEDD)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114']"
         id="d15e60552-false-d501414e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901114')">(CDAEDD): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901114' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901114
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']
Item: (CDAEDD)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']"
         id="d15e60557-false-d501433e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.803')">(CDAEDD): de waarde van root MOET '2.16.840.1.113883.10.12.803' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901114
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '11778-8' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]
Item: (CDAEDD)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '11778-8' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]"
         id="d15e60562-false-d501452e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="@nullFlavor or (@code='11778-8' and @codeSystem='2.16.840.1.113883.6.1')">(CDAEDD): de elementwaarde MOET een zijn van 'code '11778-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901114
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value
Item: (CDAEDD)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901114'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value"
         id="d15e60573-false-d501472e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAEDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901114-2018-11-02T131845.html"
              test="not(*)">(CDAEDD): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
</pattern>
