<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901133
Name: Lichamelijk onderzoek procedure Kernset Neonatologie
Description: Physical examination Kernset Neonatologie CDA procedure
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700">
   <title>Lichamelijk onderzoek procedure Kernset Neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]
Item: (CDAKsNeoPhysExmProc)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]
Item: (CDAKsNeoPhysExmProc)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]"
         id="d15e62216-false-d505701e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@classCode) = ('ACT')">(CDAKsNeoPhysExmProc): de waarde van classCode MOET 'ACT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoPhysExmProc): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133']) &gt;= 1">(CDAKsNeoPhysExmProc): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133']) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.806']) &gt;= 1">(CDAKsNeoPhysExmProc): element hl7:templateId[@root = '2.16.840.1.113883.10.12.806'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.806']) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:templateId[@root = '2.16.840.1.113883.10.12.806'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901216']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901216']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.56']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.56']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900293']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900293']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901140']]]) &lt;= 1">(CDAKsNeoPhysExmProc): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901140']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133']
Item: (CDAKsNeoPhysExmProc)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133']"
         id="d15e62222-false-d505898e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoPhysExmProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901133')">(CDAKsNeoPhysExmProc): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901133' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.806']
Item: (CDAKsNeoPhysExmProc)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.806']"
         id="d15e62227-false-d505917e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoPhysExmProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.806')">(CDAKsNeoPhysExmProc): de waarde van root MOET '2.16.840.1.113883.10.12.806' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAKsNeoPhysExmProc)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e62232-false-d505936e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoPhysExmProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="@nullFlavor or (@code='5880005' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoPhysExmProc): de elementwaarde MOET een zijn van 'code '5880005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901216']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901216']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]">
      <extends rule="d505997e0-false-d506003e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]
Item: (lichaamslengte)
-->
   <rule id="d505997e0-false-d506003e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]) &lt;= 1">(lichaamslengte): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]
Item: (lichaamslengte)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="string(@classCode) = ('OBS')">(lichaamslengte): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="string(@moodCode) = ('EVN')">(lichaamslengte): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']) &gt;= 1">(lichaamslengte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']) &lt;= 1">(lichaamslengte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901134']) &lt;= 1">(lichaamslengte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901134'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:code[(@code = '8302-2' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &gt;= 1">(lichaamslengte): element hl7:code[(@code = '8302-2' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:code[(@code = '8302-2' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &lt;= 1">(lichaamslengte): element hl7:code[(@code = '8302-2' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:effectiveTime) &gt;= 1">(lichaamslengte): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:effectiveTime) &lt;= 1">(lichaamslengte): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:value) &gt;= 1">(lichaamslengte): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="count(hl7:value) &lt;= 1">(lichaamslengte): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']
Item: (lichaamslengte)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamslengte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.30')">(lichaamslengte): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.30' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901134']
Item: (lichaamslengte)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901134']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamslengte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901134')">(lichaamslengte): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901134' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:code[(@code = '8302-2' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]
Item: (lichaamslengte)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:code[(@code = '8302-2' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamslengte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="@nullFlavor or (@code='8302-2' and @codeSystem='2.16.840.1.113883.6.1')">(lichaamslengte): de elementwaarde MOET een zijn van 'code '8302-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:effectiveTime
Item: (lichaamslengte)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamslengte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="not(*)">(lichaamslengte): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901134
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:value
Item: (lichaamslengte)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.30']]/hl7:value">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamslengte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(lichaamslengte): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901134-2018-11-03T155553.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(lichaamslengte): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]">
      <extends rule="d506224e0-false-d506230e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]
Item: (lichaamsgewicht)
-->
   <rule id="d506224e0-false-d506230e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]) &lt;= 1">(lichaamsgewicht): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="string(@classCode) = ('OBS')">(lichaamsgewicht): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="string(@moodCode) = ('EVN')">(lichaamsgewicht): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']) &gt;= 1">(lichaamsgewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']) &lt;= 1">(lichaamsgewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901135']) &lt;= 1">(lichaamsgewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901135'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &gt;= 1">(lichaamsgewicht): element hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &lt;= 1">(lichaamsgewicht): element hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:effectiveTime) &gt;= 1">(lichaamsgewicht): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:effectiveTime) &lt;= 1">(lichaamsgewicht): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:value) &gt;= 1">(lichaamsgewicht): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:value) &lt;= 1">(lichaamsgewicht): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamsgewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.28')">(lichaamsgewicht): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.28' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901135']
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901135']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamsgewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901135')">(lichaamsgewicht): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901135' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamsgewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="@nullFlavor or (@code='29463-7' and @codeSystem='2.16.840.1.113883.6.1')">(lichaamsgewicht): de elementwaarde MOET een zijn van 'code '29463-7' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:effectiveTime
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamsgewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="not(*)">(lichaamsgewicht): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:value
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:value">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(lichaamsgewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(lichaamsgewicht): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(lichaamsgewicht): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.56']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.56']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900293']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900293']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (Apgarscorena5min)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@classCode) = ('OBS')">(Apgarscorena5min): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@moodCode) = ('EVN')">(Apgarscorena5min): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']) &gt;= 1">(Apgarscorena5min): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']) &lt;= 1">(Apgarscorena5min): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Apgarscorena5min): element hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Apgarscorena5min): element hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Apgarscorena5min): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Apgarscorena5min): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Apgarscorena5min): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900294')">(Apgarscorena5min): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900294' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Apgarscorena5min): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="@nullFlavor or (@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')">(Apgarscorena5min): de elementwaarde MOET een zijn van 'code '9274-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=10))">(Apgarscorena5min): value MOET in bereik [0..10] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Apgarscorena5min): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="@xsi:type">(Apgarscorena5min): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]">
      <extends rule="d506737e0-false-d506743e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901139
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]
Item: (UmbCordpH)
-->
   <rule id="d506737e0-false-d506743e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="count(hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]) &lt;= 1">(UmbCordpH): element hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901139
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]
Item: (UmbCordpH)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="string(@classCode) = ('OBS')">(UmbCordpH): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="string(@moodCode) = ('EVN')">(UmbCordpH): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901139']) &lt;= 1">(UmbCordpH): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901139'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="count(hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(UmbCordpH): element hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="count(hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(UmbCordpH): element hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="count(hl7:value) &gt;= 1">(UmbCordpH): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="count(hl7:value) &lt;= 1">(UmbCordpH): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901139
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901139']
Item: (UmbCordpH)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901139']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(UmbCordpH): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901139')">(UmbCordpH): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901139' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901139
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]/hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (UmbCordpH)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]/hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(UmbCordpH): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="@nullFlavor or (@code='56361000146105' and @codeSystem='2.16.840.1.113883.6.96')">(UmbCordpH): de elementwaarde MOET een zijn van 'code '56361000146105' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901139
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]/hl7:value
Item: (UmbCordpH)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = '56361000146105' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]]/hl7:value">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(UmbCordpH): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UmbCordpH): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(UmbCordpH): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901139-2018-11-03T173301.html"
              test="not(@unit) or empty($theAttValue[not(. = (('[pH]')))])">(UmbCordpH): de waarde van unit MOET 'code [pH]' zijn. Gevonden: "<value-of select="@unit"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901133
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901140']]]
Item: (CDAKsNeoPhysExmProc)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901140']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901133-2018-11-03T154700.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoPhysExmProc): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
