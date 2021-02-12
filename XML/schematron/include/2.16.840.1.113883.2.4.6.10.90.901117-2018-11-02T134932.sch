<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901117
Name: Hoeveelling
Description: Parity CDA Observation
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932">
   <title>Hoeveelling</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901117
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]
Item: (CDANumberFetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901117
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]
Item: (CDANumberFetus)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]"
         id="d15e60744-false-d501855e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="string(@classCode) = ('OBS')">(CDANumberFetus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="string(@moodCode) = ('EVN')">(CDANumberFetus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117']) &gt;= 1">(CDANumberFetus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117']) &lt;= 1">(CDANumberFetus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &gt;= 1">(CDANumberFetus): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.803']) &lt;= 1">(CDANumberFetus): element hl7:templateId[@root = '2.16.840.1.113883.10.12.803'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:code[(@code = '246435002' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CDANumberFetus): element hl7:code[(@code = '246435002' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:code[(@code = '246435002' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDANumberFetus): element hl7:code[(@code = '246435002' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:value) &gt;= 1">(CDANumberFetus): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="count(hl7:value) &lt;= 1">(CDANumberFetus): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901117
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117']
Item: (CDANumberFetus)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117']"
         id="d15e60750-false-d501936e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDANumberFetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901117')">(CDANumberFetus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901117' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901117
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']
Item: (CDANumberFetus)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.803']"
         id="d15e60755-false-d501955e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDANumberFetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.803')">(CDANumberFetus): de waarde van root MOET '2.16.840.1.113883.10.12.803' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901117
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '246435002' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDANumberFetus)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:code[(@code = '246435002' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e60760-false-d501974e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDANumberFetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="@nullFlavor or (@code='246435002' and @codeSystem='2.16.840.1.113883.6.96')">(CDANumberFetus): de elementwaarde MOET een zijn van 'code '246435002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901117
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value
Item: (CDANumberFetus)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901117'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]/hl7:value"
         id="d15e60771-false-d501994e0">
      <extends rule="INT.NONNEG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDANumberFetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901117-2018-11-02T134932.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDANumberFetus): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
   </rule>
</pattern>
