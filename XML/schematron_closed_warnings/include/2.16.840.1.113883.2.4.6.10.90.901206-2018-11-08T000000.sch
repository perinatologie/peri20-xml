<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901206
Name: Mortaliteit binnen 12 uur na opname NICU
Description: Template voor Mortaliteit binnen 12 uur na opname NICU
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000">
   <title>Mortaliteit binnen 12 uur na opname NICU</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901206
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]
Item: (CDAObsDeath12HrsNicu)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]"
         id="d15e69122-false-d689404e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]) &lt;= 1">(CDAObsDeath12HrsNicu): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901206
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]
Item: (CDAObsDeath12HrsNicu)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]"
         id="d15e69156-false-d689421e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="string(@classCode) = ('OBS')">(CDAObsDeath12HrsNicu): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAObsDeath12HrsNicu): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAObsDeath12HrsNicu): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']) &gt;= 1">(CDAObsDeath12HrsNicu): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']) &lt;= 1">(CDAObsDeath12HrsNicu): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="count(hl7:code[(@code = '58991000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAObsDeath12HrsNicu): element hl7:code[(@code = '58991000146100' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="count(hl7:code[(@code = '58991000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAObsDeath12HrsNicu): element hl7:code[(@code = '58991000146100' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901206
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']
Item: (CDAObsDeath12HrsNicu)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']"
         id="d15e69168-false-d689478e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsDeath12HrsNicu): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901206')">(CDAObsDeath12HrsNicu): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901206' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901206
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]/hl7:code[(@code = '58991000146100' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAObsDeath12HrsNicu)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901206']]/hl7:code[(@code = '58991000146100' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e69173-false-d689497e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsDeath12HrsNicu): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="@nullFlavor or (@code='58991000146100' and @codeSystem='2.16.840.1.113883.6.96')">(CDAObsDeath12HrsNicu): de elementwaarde MOET een zijn van 'code '58991000146100' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901206-2018-11-08T000000.html"
              test="@displayName">(CDAObsDeath12HrsNicu): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
</pattern>
