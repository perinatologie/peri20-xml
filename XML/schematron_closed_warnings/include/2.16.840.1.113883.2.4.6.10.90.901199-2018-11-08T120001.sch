<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901199
Name: Ontslag overplaatsing procedure
Description: Template voor de weergave van Ontslag overplaatsing procedure
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001">
   <title>Ontslag overplaatsing procedure</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]
Item: (CDAKsNeoProcDischargeTransfer)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]"
         id="d15e68549-false-d687158e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]) &gt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]) &lt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]
Item: (CDAKsNeoProcDischargeTransfer)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]"
         id="d15e68577-false-d687211e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoProcDischargeTransfer): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcDischargeTransfer): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']) &gt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']) &lt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']) &gt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']) &lt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:code[(@code = '58781000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:code[(@code = '58781000146100' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:code[(@code = '58781000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:code[(@code = '58781000146100' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]) &lt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]) &lt;= 1">(CDAKsNeoProcDischargeTransfer): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']
Item: (CDAKsNeoProcDischargeTransfer)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']"
         id="d15e68591-false-d687314e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcDischargeTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901199')">(CDAKsNeoProcDischargeTransfer): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901199' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']
Item: (CDAKsNeoProcDischargeTransfer)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']"
         id="d15e68597-false-d687333e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcDischargeTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901199')">(CDAKsNeoProcDischargeTransfer): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901199' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:code[(@code = '58781000146100' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoProcDischargeTransfer)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:code[(@code = '58781000146100' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e68602-false-d687352e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcDischargeTransfer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="@nullFlavor or (@code='58781000146100' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoProcDischargeTransfer): de elementwaarde MOET een zijn van 'code '58781000146100' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="@displayName">(CDAKsNeoProcDischargeTransfer): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAKsNeoProcDischargeTransfer): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]
Item: (CDAKsNeoProcDischargeTransfer)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcDischargeTransfer): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]
Item: (CDAKsNeoProcDischargeTransfer)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcDischargeTransfer): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901203']]]
Item: (CDAKsNeoProcDischargeTransfer)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901199']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901203']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901199-2018-11-08T120001.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcDischargeTransfer): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
