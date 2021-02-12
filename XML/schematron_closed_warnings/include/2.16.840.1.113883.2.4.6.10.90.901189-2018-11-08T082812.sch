<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901189
Name: Zintuigen ROP screening afgesloten
Description: Template voor de weergave van O2 op dag 28
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812">
   <title>Zintuigen ROP screening afgesloten</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901189
Context: **
Item: (CDAObsROPDone)
-->

   <rule context="**" id="d15e67486-false-d683988e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]) &lt;= 1">(CDAObsROPDone): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901189
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]
Item: (CDAObsROPDone)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]"
         id="d15e67512-false-d684005e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="string(@classCode) = ('OBS')">(CDAObsROPDone): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="string(@moodCode) = ('EVN')">(CDAObsROPDone): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']) &gt;= 1">(CDAObsROPDone): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']) &lt;= 1">(CDAObsROPDone): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:code[(@code = '59051000146104' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAObsROPDone): element hl7:code[(@code = '59051000146104' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:code[(@code = '59051000146104' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAObsROPDone): element hl7:code[(@code = '59051000146104' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:value) &gt;= 1">(CDAObsROPDone): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="count(hl7:value) &lt;= 1">(CDAObsROPDone): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901189
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']
Item: (CDAObsROPDone)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']"
         id="d15e67518-false-d684071e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsROPDone): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901189')">(CDAObsROPDone): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901189' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901189
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]/hl7:code[(@code = '59051000146104' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAObsROPDone)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]/hl7:code[(@code = '59051000146104' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e67523-false-d684090e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsROPDone): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="@nullFlavor or (@code='59051000146104' and @codeSystem='2.16.840.1.113883.6.96')">(CDAObsROPDone): de elementwaarde MOET een zijn van 'code '59051000146104' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="@displayName">(CDAObsROPDone): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAObsROPDone): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901189
Context: **/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]/hl7:value
Item: (CDAObsROPDone)
-->

   <rule context="**/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901189']]/hl7:value"
         id="d15e67545-false-d684120e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901189-2018-11-08T082812.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsROPDone): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
