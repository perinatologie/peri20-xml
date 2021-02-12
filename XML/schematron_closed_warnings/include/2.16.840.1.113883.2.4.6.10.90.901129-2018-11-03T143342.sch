<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901129
Name: Opname procedure
Description: Template voor de weergave van therapeutische verrichtingen die de fysieke toestand van patiënt kunnen veranderen. Template beschrijft ook het medisch hulpmiddel dat tijdens verrichting geplaatst is in of op het lichaam van patiënt
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342">
   <title>Opname procedure</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]"
         id="d15e61759-false-d574973e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]) &gt;= 1">(CDAKsNeoProcAdmission): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]"
         id="d15e61811-false-d575068e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoProcAdmission): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcAdmission): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']) &gt;= 1">(CDAKsNeoProcAdmission): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:code[(@code = '305056002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoProcAdmission): element hl7:code[(@code = '305056002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:code[(@code = '305056002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:code[(@code = '305056002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901131'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901131'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]) &lt;= 2">(CDAKsNeoProcAdmission): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']"
         id="d15e61825-false-d575209e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901129')">(CDAKsNeoProcAdmission): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901129' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:code[(@code = '305056002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:code[(@code = '305056002' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e61831-false-d575228e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="@nullFlavor or (@code='305056002' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoProcAdmission): de elementwaarde MOET een zijn van 'code '305056002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:effectiveTime
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:effectiveTime"
         id="d15e61841-false-d575248e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:low) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="count(hl7:high) &lt;= 1">(CDAKsNeoProcAdmission): element hl7:high komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:effectiveTime/hl7:low
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:effectiveTime/hl7:low"
         id="d15e61860-false-d575279e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="not(*)">(CDAKsNeoProcAdmission): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:effectiveTime/hl7:high
Item: (CDAKsNeoProcAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:effectiveTime/hl7:high"
         id="d15e61866-false-d575296e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="not(*)">(CDAKsNeoProcAdmission): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901131'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]
Item: (CDAKsNeoProcAdmission)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901131'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcAdmission): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]
Item: (CDAKsNeoProcAdmission)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcAdmission): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]
Item: (CDAKsNeoProcAdmission)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcAdmission): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]
Item: (CDAKsNeoProcAdmission)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@typeCode) = ('RSON')">(CDAKsNeoProcAdmission): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901129
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]
Item: (CDAKsNeoProcAdmission)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901129']]/hl7:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901133'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901129-2018-11-03T143342.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcAdmission): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
