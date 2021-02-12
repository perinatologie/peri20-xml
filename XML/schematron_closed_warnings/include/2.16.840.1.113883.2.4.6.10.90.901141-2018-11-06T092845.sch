<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901141
Name: Problematiek kind sectie kernset neonatologie
Description: Problems child kernset neonatology CDA section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845">
   <title>Problematiek kind sectie kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]
Item: (CDAKsNeoProblChild)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]
Item: (CDAKsNeoProblChild)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]"
         id="d15e62853-false-d578552e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(CDAKsNeoProblChild): de waarde van classCode MOET 'DOCSECT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAKsNeoProblChild): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141']) &gt;= 1">(CDAKsNeoProblChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141']) &lt;= 1">(CDAKsNeoProblChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &gt;= 1">(CDAKsNeoProblChild): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &lt;= 1">(CDAKsNeoProblChild): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:code[(@code = '58741000146107' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoProblChild): element hl7:code[(@code = '58741000146107' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:code[(@code = '58741000146107' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoProblChild): element hl7:code[(@code = '58741000146107' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:title) &gt;= 1">(CDAKsNeoProblChild): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:title) &lt;= 1">(CDAKsNeoProblChild): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:text) &gt;= 1">(CDAKsNeoProblChild): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:text) &lt;= 1">(CDAKsNeoProblChild): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901142']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901142']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901219']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901219']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901144']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901144']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901164']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901164']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901226']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901226']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901167']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901167']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901175']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901175']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901171']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901171']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901183']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901183']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="count(hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901194']]]) &lt;= 1">(CDAKsNeoProblChild): element hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901194']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141']
Item: (CDAKsNeoProblChild)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141']"
         id="d15e62859-false-d578904e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProblChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901141')">(CDAKsNeoProblChild): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901141' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']
Item: (CDAKsNeoProblChild)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']"
         id="d15e62864-false-d578923e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProblChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.701')">(CDAKsNeoProblChild): de waarde van root MOET '2.16.840.1.113883.10.12.701' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:code[(@code = '58741000146107' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoProblChild)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:code[(@code = '58741000146107' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e62869-false-d578942e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProblChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="@nullFlavor or (@code='58741000146107' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoProblChild): de elementwaarde MOET een zijn van 'code '58741000146107' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:title
Item: (CDAKsNeoProblChild)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:title"
         id="d15e62880-false-d578962e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProblChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:text
Item: (CDAKsNeoProblChild)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:text"
         id="d15e62882-false-d578975e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProblChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901142']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901142']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901219']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901219']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901144']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901144']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901164']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901164']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901226']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901226']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901167']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901167']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901175']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901175']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901171']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901171']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901183']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901183']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901186']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901141
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901194']]]
Item: (CDAKsNeoProblChild)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901141'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.701']]/hl7:entry[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901194']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoProblChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901141-2018-11-06T092845.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoProblChild): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>
</pattern>
