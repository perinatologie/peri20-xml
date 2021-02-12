<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901208
Name: Mortaliteit overleden in verloskamer
Description: Template voor Mortaliteit overleden in verloskamer
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000">
   <title>Mortaliteit overleden in verloskamer</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901208
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]
Item: (CDAObsDeathDeliveryroom)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]"
         id="d15e69255-false-d580720e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]) &lt;= 1">(CDAObsDeathDeliveryroom): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901208
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]
Item: (CDAObsDeathDeliveryroom)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]"
         id="d15e69289-false-d580737e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="string(@classCode) = ('OBS')">(CDAObsDeathDeliveryroom): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAObsDeathDeliveryroom): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAObsDeathDeliveryroom): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']) &gt;= 1">(CDAObsDeathDeliveryroom): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']) &lt;= 1">(CDAObsDeathDeliveryroom): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="count(hl7:code[(@code = '59001000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAObsDeathDeliveryroom): element hl7:code[(@code = '59001000146100' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="count(hl7:code[(@code = '59001000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAObsDeathDeliveryroom): element hl7:code[(@code = '59001000146100' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901208
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']
Item: (CDAObsDeathDeliveryroom)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']"
         id="d15e69301-false-d580794e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsDeathDeliveryroom): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901208')">(CDAObsDeathDeliveryroom): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901208' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901208
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]/hl7:code[(@code = '59001000146100' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAObsDeathDeliveryroom)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901208']]/hl7:code[(@code = '59001000146100' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e69306-false-d580813e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsDeathDeliveryroom): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="@nullFlavor or (@code='59001000146100' and @codeSystem='2.16.840.1.113883.6.96')">(CDAObsDeathDeliveryroom): de elementwaarde MOET een zijn van 'code '59001000146100' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901208-2018-11-08T000000.html"
              test="@displayName">(CDAObsDeathDeliveryroom): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
</pattern>
