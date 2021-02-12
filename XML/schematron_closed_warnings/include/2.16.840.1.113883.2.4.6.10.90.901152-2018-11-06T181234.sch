<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901152
Name: Dagen conventionele beademing
Description: Template voor de weergave van het aantal dagen conventionele beademing
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234">
   <title>Dagen conventionele beademing</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901152
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]
Item: (CDADaysConvVentilation)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]"
         id="d15e63927-false-d581917e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &gt;= 1">(CDADaysConvVentilation): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &lt;= 1">(CDADaysConvVentilation): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901152
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]
Item: (CDADaysConvVentilation)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]"
         id="d15e63965-false-d581944e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="string(@classCode) = ('PROC')">(CDADaysConvVentilation): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="string(@moodCode) = ('EVN')">(CDADaysConvVentilation): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152']) &gt;= 1">(CDADaysConvVentilation): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152']) &lt;= 1">(CDADaysConvVentilation): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDADaysConvVentilation): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDADaysConvVentilation): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:code[(@code = '182687005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDADaysConvVentilation): element hl7:code[(@code = '182687005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:code[(@code = '182687005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDADaysConvVentilation): element hl7:code[(@code = '182687005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901147']]]) &lt;= 1">(CDADaysConvVentilation): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901147']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901152
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152']
Item: (CDADaysConvVentilation)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152']"
         id="d15e63979-false-d582021e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADaysConvVentilation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901152')">(CDADaysConvVentilation): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901152' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901152
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDADaysConvVentilation)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']"
         id="d15e63985-false-d582040e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADaysConvVentilation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDADaysConvVentilation): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901152
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '182687005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDADaysConvVentilation)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '182687005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e63998-false-d582059e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADaysConvVentilation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="@nullFlavor or (@code='182687005' and @codeSystem='2.16.840.1.113883.6.96')">(CDADaysConvVentilation): de elementwaarde MOET een zijn van 'code '182687005' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="@displayName">(CDADaysConvVentilation): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDADaysConvVentilation): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901152
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901147']]]
Item: (CDADaysConvVentilation)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901152'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901147']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="string(@typeCode) = ('SUBJ')">(CDADaysConvVentilation): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901152-2018-11-06T181234.html"
              test="string(@inversionInd) = ('true')">(CDADaysConvVentilation): de waarde van inversionInd MOET 'true' zijn. Gevonden: "<value-of select="@inversionInd"/>"</assert>
   </rule>
</pattern>
