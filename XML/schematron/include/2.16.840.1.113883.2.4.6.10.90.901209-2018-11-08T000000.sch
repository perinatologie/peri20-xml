<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901209
Name: Mortaliteit Staken IC behandeling
Description: Template voor Mortaliteit staken IC behandeling
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000">
   <title>Mortaliteit Staken IC behandeling</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901209
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]
Item: (CDAObsDeathICTreatmentStopped)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]"
         id="d15e69322-false-d580845e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]) &lt;= 1">(CDAObsDeathICTreatmentStopped): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901209
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]
Item: (CDAObsDeathICTreatmentStopped)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]"
         id="d15e69346-false-d580862e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="string(@classCode) = ('OBS')">(CDAObsDeathICTreatmentStopped): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAObsDeathICTreatmentStopped): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAObsDeathICTreatmentStopped): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']) &gt;= 1">(CDAObsDeathICTreatmentStopped): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']) &lt;= 1">(CDAObsDeathICTreatmentStopped): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="count(hl7:code[(@code = '56371000146104' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAObsDeathICTreatmentStopped): element hl7:code[(@code = '56371000146104' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="count(hl7:code[(@code = '56371000146104' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAObsDeathICTreatmentStopped): element hl7:code[(@code = '56371000146104' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901209
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']
Item: (CDAObsDeathICTreatmentStopped)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']"
         id="d15e69358-false-d580919e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsDeathICTreatmentStopped): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901209')">(CDAObsDeathICTreatmentStopped): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901209' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901209
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]/hl7:code[(@code = '56371000146104' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAObsDeathICTreatmentStopped)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901209']]/hl7:code[(@code = '56371000146104' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e69363-false-d580938e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsDeathICTreatmentStopped): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="@nullFlavor or (@code='56371000146104' and @codeSystem='2.16.840.1.113883.6.96')">(CDAObsDeathICTreatmentStopped): de elementwaarde MOET een zijn van 'code '56371000146104' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901209-2018-11-08T000000.html"
              test="@displayName">(CDAObsDeathICTreatmentStopped): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
</pattern>
