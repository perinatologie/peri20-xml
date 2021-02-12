<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901132
Name: Heropname
Description: Template voor de weergave van therapeutische verrichtingen die de fysieke toestand van patiënt kunnen veranderen. Template beschrijft ook het medisch hulpmiddel dat tijdens verrichting geplaatst is in of op het lichaam van patiënt
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009">
   <title>Heropname</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901132
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]
Item: (CDAReAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]"
         id="d15e62100-false-d575826e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]) &gt;= 1">(CDAReAdmission): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]) &lt;= 1">(CDAReAdmission): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901132
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]
Item: (CDAReAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]"
         id="d15e62128-false-d575849e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="string(@classCode) = ('PROC')">(CDAReAdmission): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="string(@moodCode) = ('EVN')">(CDAReAdmission): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="not(@negationInd) or (string-length(@negationInd) &gt; 0 and not(matches(@negationInd,'\s')))">(CDAReAdmission): attribuut @negationInd MOET datatype 'cs' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAReAdmission): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAReAdmission): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']) &gt;= 1">(CDAReAdmission): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']) &lt;= 1">(CDAReAdmission): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:code[(@code = '417005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAReAdmission): element hl7:code[(@code = '417005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="count(hl7:code[(@code = '417005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAReAdmission): element hl7:code[(@code = '417005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901132
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAReAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']"
         id="d15e62149-false-d575921e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAReAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAReAdmission): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901132
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']
Item: (CDAReAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']"
         id="d15e62162-false-d575940e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAReAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901132')">(CDAReAdmission): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901132' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901132
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]/hl7:code[(@code = '417005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAReAdmission)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901132']]/hl7:code[(@code = '417005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e62167-false-d575959e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAReAdmission): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901132-2018-11-03T153009.html"
              test="@nullFlavor or (@code='417005' and @codeSystem='2.16.840.1.113883.6.96')">(CDAReAdmission): de elementwaarde MOET een zijn van 'code '417005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
</pattern>
