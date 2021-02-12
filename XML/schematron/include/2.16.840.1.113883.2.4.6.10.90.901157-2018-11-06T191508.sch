<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901157
Name: Circulatoir organizer
Description: Circulatoir CDA Organizer
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508">
   <title>Circulatoir organizer</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]
Item: (CDAKsNeoCircOrganizer)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]"
         id="d15e64390-false-d512095e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="string(@classCode) = ('CLUSTER')">(CDAKsNeoCircOrganizer): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoCircOrganizer): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']) &gt;= 1">(CDAKsNeoCircOrganizer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:code[(@code = '58761000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CDAKsNeoCircOrganizer): element hl7:code[(@code = '58761000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:code[(@code = '58761000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:code[(@code = '58761000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:statusCode[@code = 'completed' or @nullFlavor]) &gt;= 1">(CDAKsNeoCircOrganizer): element hl7:statusCode[@code = 'completed' or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:statusCode[@code = 'completed' or @nullFlavor]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:statusCode[@code = 'completed' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:component[hl7:observation[hl7:value/@code='49601007']]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:component[hl7:observation[hl7:value/@code='49601007']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:component[hl7:observation[hl7:value/@code='58871000146106']]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:component[hl7:observation[hl7:value/@code='58871000146106']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:component[hl7:procedure[hl7:code/@code='58801000146104']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:component[hl7:procedure[hl7:code/@code='233154000']]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:component[hl7:procedure[hl7:code/@code='233154000']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="count(hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]) &lt;= 1">(CDAKsNeoCircOrganizer): element hl7:component[hl7:procedure[hl7:code/@code='59011000146103']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']
Item: (CDAKsNeoCircOrganizer)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']"
         id="d15e64396-false-d512200e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircOrganizer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901157')">(CDAKsNeoCircOrganizer): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901157' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:code[(@code = '58761000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAKsNeoCircOrganizer)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:code[(@code = '58761000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e64401-false-d512219e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircOrganizer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="@nullFlavor or (@code='58761000146108' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoCircOrganizer): de elementwaarde MOET een zijn van 'code '58761000146108' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:statusCode[@code = 'completed' or @nullFlavor]
Item: (CDAKsNeoCircOrganizer)
-->

   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:statusCode[@code = 'completed' or @nullFlavor]"
         id="d15e64411-false-d512239e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901157-2018-11-06T191508.html"
              test="@nullFlavor or (@code='completed')">(CDAKsNeoCircOrganizer): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901220
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]
Item: (CircProblPresent)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]) &lt;= 1">(CircProblPresent): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901220
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]
Item: (CircProblPresent)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="string(@classCode) = ('OBS')">(CircProblPresent): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="string(@moodCode) = ('EVN')">(CircProblPresent): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CircProblPresent): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901220']) &lt;= 1">(CircProblPresent): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901220'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &gt;= 1">(CircProblPresent): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &lt;= 1">(CircProblPresent): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CircProblPresent): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CircProblPresent): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:value[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CircProblPresent): element hl7:value[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="count(hl7:value[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CircProblPresent): element hl7:value[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901220
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901220']
Item: (CircProblPresent)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901220']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CircProblPresent): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901220')">(CircProblPresent): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901220' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901220
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']
Item: (CircProblPresent)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CircProblPresent): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.3.19')">(CircProblPresent): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.3.19' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901220
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CircProblPresent)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CircProblPresent): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="@nullFlavor or (@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')">(CircProblPresent): de elementwaarde MOET een zijn van 'code '282291009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901220
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CircProblPresent)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='49601007']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[(@code = '49601007' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CircProblPresent): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="@nullFlavor or (@code='49601007' and @codeSystem='2.16.840.1.113883.6.96')">(CircProblPresent): de elementwaarde MOET een zijn van 'code '49601007' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901220-2019-06-01T130018.html"
              test="@displayName">(CircProblPresent): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]) &lt;= 1">(CDAKsNeoCircProblem): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAKsNeoCircProblem): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoCircProblem): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAKsNeoCircProblem): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901158']) &lt;= 1">(CDAKsNeoCircProblem): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901158'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &gt;= 1">(CDAKsNeoCircProblem): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &lt;= 1">(CDAKsNeoCircProblem): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CDAKsNeoCircProblem): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDAKsNeoCircProblem): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAKsNeoCircProblem): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(CDAKsNeoCircProblem): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAKsNeoCircProblem): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]) &lt;= 1">(CDAKsNeoCircProblem): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901158']
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901158']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901158')">(CDAKsNeoCircProblem): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901158' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.3.19')">(CDAKsNeoCircProblem): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.3.19' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="@nullFlavor or (@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoCircProblem): de elementwaarde MOET een zijn van 'code '282291009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:low) &lt;= 1">(CDAKsNeoCircProblem): element hl7:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:high) &lt;= 1">(CDAKsNeoCircProblem): element hl7:high komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:low
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:low">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="not(*)">(CDAKsNeoCircProblem): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:high
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:high">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="not(*)">(CDAKsNeoCircProblem): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProblem): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoCircProblem): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.237 ProbleemNaam_Circulatoir (2018-10-17T16:48:46)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]
Item: (CDAKsNeoCircProblem)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[not(hl7:value/@code=('49601007', '58871000146106'))]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="string(@typeCode) = ('SPRT')">(CDAKsNeoCircProblem): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &gt;= 1">(CDAKsNeoCircProc): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &lt;= 1">(CDAKsNeoCircProc): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoCircProc): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoCircProc): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAKsNeoCircProc): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901159']) &lt;= 1">(CDAKsNeoCircProc): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901159'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAKsNeoCircProc): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAKsNeoCircProc): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(CDAKsNeoCircProc): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(CDAKsNeoCircProc): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAKsNeoCircProc): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901159']
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901159']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901159')">(CDAKsNeoCircProc): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901159' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAKsNeoCircProc): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.240-2018-10-18T021414.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoCircProc): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.240 VerrichtingType_Circulatoir (2018-10-18T02:14:14)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:effectiveTime
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:low) &lt;= 1">(CDAKsNeoCircProc): element hl7:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="count(hl7:high) &lt;= 1">(CDAKsNeoCircProc): element hl7:high komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:effectiveTime/hl7:low
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:effectiveTime/hl7:low">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="not(*)">(CDAKsNeoCircProc): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901159
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:effectiveTime/hl7:high
Item: (CDAKsNeoCircProc)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[not(hl7:code/@code=('58801000146104', '233154000', '59011000146103'))]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:effectiveTime/hl7:high">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoCircProc): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901159-2018-11-06T192840.html"
              test="not(*)">(CDAKsNeoCircProc): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901160
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]
Item: (CDAKsNeoHypIntr)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]) &lt;= 1">(CDAKsNeoHypIntr): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901160
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]
Item: (CDAKsNeoHypIntr)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAKsNeoHypIntr): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoHypIntr): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAKsNeoHypIntr): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901160']) &lt;= 1">(CDAKsNeoHypIntr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901160'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &gt;= 1">(CDAKsNeoHypIntr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &lt;= 1">(CDAKsNeoHypIntr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CDAKsNeoHypIntr): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDAKsNeoHypIntr): element hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:value[(@code = '58871000146106' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoHypIntr): element hl7:value[(@code = '58871000146106' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="count(hl7:value[(@code = '58871000146106' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoHypIntr): element hl7:value[(@code = '58871000146106' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901160
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901160']
Item: (CDAKsNeoHypIntr)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901160']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoHypIntr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901160')">(CDAKsNeoHypIntr): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901160' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901160
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']
Item: (CDAKsNeoHypIntr)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoHypIntr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.3.19')">(CDAKsNeoHypIntr): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.3.19' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901160
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAKsNeoHypIntr)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoHypIntr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="@nullFlavor or (@code='282291009' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoHypIntr): de elementwaarde MOET een zijn van 'code '282291009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901160
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[(@code = '58871000146106' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoHypIntr)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:observation[hl7:value/@code='58871000146106']]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[(@code = '58871000146106' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoHypIntr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="@nullFlavor or (@code='58871000146106' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoHypIntr): de elementwaarde MOET een zijn van 'code '58871000146106' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901160-2018-11-06T193802.html"
              test="@displayName">(CDAKsNeoHypIntr): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901161
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]
Item: (CDAKsNeoProcMedPDA)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &gt;= 1">(CDAKsNeoProcMedPDA): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &lt;= 1">(CDAKsNeoProcMedPDA): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901161
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]
Item: (CDAKsNeoProcMedPDA)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoProcMedPDA): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcMedPDA): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAKsNeoProcMedPDA): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(CDAKsNeoProcMedPDA): attribuut @nullFlavor MOET datatype 'cs' hebben  - '<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901161']) &lt;= 1">(CDAKsNeoProcMedPDA): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901161'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAKsNeoProcMedPDA): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAKsNeoProcMedPDA): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:code[(@code = '58801000146104' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoProcMedPDA): element hl7:code[(@code = '58801000146104' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="count(hl7:code[(@code = '58801000146104' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoProcMedPDA): element hl7:code[(@code = '58801000146104' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901161
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901161']
Item: (CDAKsNeoProcMedPDA)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901161']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcMedPDA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901161')">(CDAKsNeoProcMedPDA): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901161' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901161
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAKsNeoProcMedPDA)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcMedPDA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAKsNeoProcMedPDA): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901161
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '58801000146104' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoProcMedPDA)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='58801000146104']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '58801000146104' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcMedPDA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="@nullFlavor or (@code='58801000146104' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoProcMedPDA): de elementwaarde MOET een zijn van 'code '58801000146104' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="@displayName">(CDAKsNeoProcMedPDA): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901161-2018-11-07T101527.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAKsNeoProcMedPDA): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901151
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]
Item: (CDAProcArrh)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &gt;= 1">(CDAProcArrh): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &lt;= 1">(CDAProcArrh): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901151
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]
Item: (CDAProcArrh)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="string(@classCode) = ('PROC')">(CDAProcArrh): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="string(@moodCode) = ('EVN')">(CDAProcArrh): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAProcArrh): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAProcArrh): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAProcArrh): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901151']) &lt;= 1">(CDAProcArrh): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901151'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:code[(@code = '233154000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAProcArrh): element hl7:code[(@code = '233154000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="count(hl7:code[(@code = '233154000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAProcArrh): element hl7:code[(@code = '233154000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901151
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAProcArrh)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcArrh): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAProcArrh): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901151
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901151']
Item: (CDAProcArrh)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901151']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcArrh): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901151')">(CDAProcArrh): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901151' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901151
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '233154000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAProcArrh)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='233154000']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '233154000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcArrh): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="@nullFlavor or (@code='233154000' and @codeSystem='2.16.840.1.113883.6.96')">(CDAProcArrh): de elementwaarde MOET een zijn van 'code '233154000' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901151-2018-11-06T180516.html"
              test="@displayName">(CDAProcArrh): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901157
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]
Item: (CDAKsNeoCircOrganizer)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901163
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]
Item: (CDAProcCorVitProst)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &gt;= 1">(CDAProcCorVitProst): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &lt;= 1">(CDAProcCorVitProst): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901163
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]
Item: (CDAProcCorVitProst)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="string(@classCode) = ('PROC')">(CDAProcCorVitProst): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAProcCorVitProst): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAProcCorVitProst): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAProcCorVitProst): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAProcCorVitProst): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901163']) &lt;= 1">(CDAProcCorVitProst): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901163'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:code[(@code = '59011000146103' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAProcCorVitProst): element hl7:code[(@code = '59011000146103' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="count(hl7:code[(@code = '59011000146103' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAProcCorVitProst): element hl7:code[(@code = '59011000146103' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901163
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAProcCorVitProst)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcCorVitProst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAProcCorVitProst): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901163
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901163']
Item: (CDAProcCorVitProst)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901163']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcCorVitProst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901163')">(CDAProcCorVitProst): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901163' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901163
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '59011000146103' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAProcCorVitProst)
-->
   <rule context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901157']]/hl7:component[hl7:procedure[hl7:code/@code='59011000146103']]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[(@code = '59011000146103' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcCorVitProst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="@nullFlavor or (@code='59011000146103' and @codeSystem='2.16.840.1.113883.6.96')">(CDAProcCorVitProst): de elementwaarde MOET een zijn van 'code '59011000146103' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901163-2018-11-07T000000.html"
              test="@displayName">(CDAProcCorVitProst): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
</pattern>
