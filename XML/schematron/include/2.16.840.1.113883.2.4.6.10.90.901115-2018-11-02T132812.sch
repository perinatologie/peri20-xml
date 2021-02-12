<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901115
Name: Graviditeit
Description: Estimated Delivery Date CDA Observation 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812">
   <title>Graviditeit</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901115
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]
Item: (CDAGravidity)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901115
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]
Item: (CDAGravidity)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]"
         id="d15e60612-false-d501507e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="string(@classCode) = ('OBS')">(CDAGravidity): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="string(@moodCode) = ('EVN')">(CDAGravidity): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115']) &gt;= 1">(CDAGravidity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115']) &lt;= 1">(CDAGravidity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &gt;= 1">(CDAGravidity): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &lt;= 1">(CDAGravidity): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:code[(@code = '11996-6' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &gt;= 1">(CDAGravidity): element hl7:code[(@code = '11996-6' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:code[(@code = '11996-6' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]) &lt;= 1">(CDAGravidity): element hl7:code[(@code = '11996-6' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:value) &gt;= 1">(CDAGravidity): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="count(hl7:value) &lt;= 1">(CDAGravidity): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901115
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115']
Item: (CDAGravidity)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115']"
         id="d15e60618-false-d501588e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAGravidity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901115')">(CDAGravidity): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901115' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901115
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']
Item: (CDAGravidity)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']"
         id="d15e60623-false-d501607e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAGravidity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.803')">(CDAGravidity): de waarde van root MOET '2.16.840.1.113883.10.12.803' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901115
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '11996-6' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]
Item: (CDAGravidity)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '11996-6' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]"
         id="d15e60628-false-d501626e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAGravidity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="@nullFlavor or (@code='11996-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAGravidity): de elementwaarde MOET een zijn van 'code '11996-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901115
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value
Item: (CDAGravidity)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901115'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value"
         id="d15e60639-false-d501646e0">
      <extends rule="INT.POS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAGravidity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901115-2018-11-02T132812.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDAGravidity): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
   </rule>
</pattern>
