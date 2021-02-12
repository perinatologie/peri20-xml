<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901200
Name: Lichamelijk onderzoek procedure ontslag overplaatsing Kernset Neonatologie
Description: Physical examination Kernset Neonatologie CDA procedure
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443">
   <title>Lichamelijk onderzoek procedure ontslag overplaatsing Kernset Neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]
Item: (CDAKsNeoProcPhysExmDischTransf)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]
Item: (CDAKsNeoProcPhysExmDischTransf)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]"
         id="d15e68688-false-d578590e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="string(@classCode) = ('ACT')">(CDAKsNeoProcPhysExmDischTransf): de waarde van classCode MOET 'ACT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcPhysExmDischTransf): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200']) &gt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200']) &lt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.806']) &gt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:templateId[@root = '2.16.840.1.113883.10.12.806'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.806']) &lt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:templateId[@root = '2.16.840.1.113883.10.12.806'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]) &lt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]]) &lt;= 1">(CDAKsNeoProcPhysExmDischTransf): element hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200']
Item: (CDAKsNeoProcPhysExmDischTransf)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200']"
         id="d15e68694-false-d578691e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcPhysExmDischTransf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901200')">(CDAKsNeoProcPhysExmDischTransf): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901200' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.806']
Item: (CDAKsNeoProcPhysExmDischTransf)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.806']"
         id="d15e68699-false-d578710e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcPhysExmDischTransf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.806')">(CDAKsNeoProcPhysExmDischTransf): de waarde van root MOET '2.16.840.1.113883.10.12.806' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoProcPhysExmDischTransf)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:code[(@code = '5880005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e68704-false-d578729e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcPhysExmDischTransf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="@nullFlavor or (@code='5880005' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoProcPhysExmDischTransf): de elementwaarde MOET een zijn van 'code '5880005' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="@displayName">(CDAKsNeoProcPhysExmDischTransf): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAKsNeoProcPhysExmDischTransf): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]
Item: (CDAKsNeoProcPhysExmDischTransf)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]">
      <extends rule="d578776e0-false-d578782e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcPhysExmDischTransf): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]
Item: (lichaamsgewicht)
-->
   <rule id="d578776e0-false-d578782e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901135-2018-11-03T160315.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]) &lt;= 1">(lichaamsgewicht): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901135
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901135']
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901135']">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:code[(@code = '29463-7' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor]">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:effectiveTime
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:effectiveTime">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:value
Item: (lichaamsgewicht)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.28']]/hl7:value">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901200
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]]
Item: (CDAKsNeoProcPhysExmDischTransf)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901200'] and hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.55']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901200-2018-11-08T120443.html"
              test="string(@typeCode) = ('COMP')">(CDAKsNeoProcPhysExmDischTransf): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
