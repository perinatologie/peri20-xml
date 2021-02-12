<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901148
Name: O2 dag 28
Description: Template voor de weergave van O2 op dag 28
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851">
   <title>O2 dag 28</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901148
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]
Item: (CDAO2Day28)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]"
         id="d15e63561-false-d510911e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]) &lt;= 1">(CDAO2Day28): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901148
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]
Item: (CDAO2Day28)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]"
         id="d15e63595-false-d510928e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="string(@classCode) = ('OBS')">(CDAO2Day28): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="string(@moodCode) = ('EVN')">(CDAO2Day28): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAO2Day28): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']) &gt;= 1">(CDAO2Day28): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']) &lt;= 1">(CDAO2Day28): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="count(hl7:code[(@code = '59031000146105' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAO2Day28): element hl7:code[(@code = '59031000146105' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="count(hl7:code[(@code = '59031000146105' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAO2Day28): element hl7:code[(@code = '59031000146105' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901148
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']
Item: (CDAO2Day28)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']"
         id="d15e63607-false-d510985e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAO2Day28): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901148')">(CDAO2Day28): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901148' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901148
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]/hl7:code[(@code = '59031000146105' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAO2Day28)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901148']]/hl7:code[(@code = '59031000146105' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e63612-false-d511004e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAO2Day28): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="@nullFlavor or (@code='59031000146105' and @codeSystem='2.16.840.1.113883.6.96')">(CDAO2Day28): de elementwaarde MOET een zijn van 'code '59031000146105' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901148-2018-11-06T144851.html"
              test="@displayName">(CDAO2Day28): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
</pattern>
