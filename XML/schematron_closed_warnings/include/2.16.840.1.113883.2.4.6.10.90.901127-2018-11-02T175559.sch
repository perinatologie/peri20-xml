<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901127
Name: Ondersteuning opvang kernset neonatologie
Description: Assisted therapy before admission kernset neonatology CDA section
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559">
   <title>Ondersteuning opvang kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]"
         id="d15e61634-false-d574194e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="string(@classCode) = ('DOCSECT') or not(@classCode)">(CDAKsNeoAssTherBefAdmSection): de waarde van classCode MOET 'DOCSECT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAKsNeoAssTherBefAdmSection): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.701']) &lt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:templateId[@root = '2.16.840.1.113883.10.12.701'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']) &gt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']) &lt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:code[(@code = '109121000146106' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:code[(@code = '109121000146106' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:code[(@code = '109121000146106' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:code[(@code = '109121000146106' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:title) &gt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:title) &lt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:text) &gt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="count(hl7:text) &lt;= 1">(CDAKsNeoAssTherBefAdmSection): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.701']"
         id="d15e61640-false-d574289e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAssTherBefAdmSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.701')">(CDAKsNeoAssTherBefAdmSection): de waarde van root MOET '2.16.840.1.113883.10.12.701' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']"
         id="d15e61645-false-d574308e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAssTherBefAdmSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901127')">(CDAKsNeoAssTherBefAdmSection): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901127' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:code[(@code = '109121000146106' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:code[(@code = '109121000146106' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e61650-false-d574327e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAssTherBefAdmSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="@nullFlavor or (@code='109121000146106' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKsNeoAssTherBefAdmSection): de elementwaarde MOET een zijn van 'code '109121000146106' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="@displayName">(CDAKsNeoAssTherBefAdmSection): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:title
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:title"
         id="d15e61662-false-d574352e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAssTherBefAdmSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:text
Item: (CDAKsNeoAssTherBefAdmSection)
-->

   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:text"
         id="d15e61664-false-d574365e0">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoAssTherBefAdmSection): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901127
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]
Item: (CDAKsNeoAssTherBefAdmSection)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]">
      <extends rule="d574400e0-false-d574406e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="string(@typeCode) = ('COMP') or not(@typeCode)">(CDAKsNeoAssTherBefAdmSection): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901127-2018-11-02T175559.html"
              test="string(@contextConductionInd) = ('true') or not(@contextConductionInd)">(CDAKsNeoAssTherBefAdmSection): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901126
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]
Item: (CDAKsNeoProcAssTherapyBefAdm)
-->
   <rule id="d574400e0-false-d574406e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &gt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]) &lt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901126
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]
Item: (CDAKsNeoProcAssTherapyBefAdm)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoProcAssTherapyBefAdm): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcAssTherapyBefAdm): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901126']) &lt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901126'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(CDAKsNeoProcAssTherapyBefAdm): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901126
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAKsNeoProcAssTherapyBefAdm)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAssTherapyBefAdm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAKsNeoProcAssTherapyBefAdm): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901126
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901126']
Item: (CDAKsNeoProcAssTherapyBefAdm)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901126']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAssTherapyBefAdm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901126')">(CDAKsNeoProcAssTherapyBefAdm): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901126' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901126
Context: *[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAKsNeoProcAssTherapyBefAdm)
-->
   <rule context="*[hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]]/hl7:section[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901127']]/hl7:entry[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcAssTherapyBefAdm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901126-2018-11-02T174407.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.243-2018-10-04T181347.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoProcAssTherapyBefAdm): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.243 VerrichtingType_OndersteuningOpvang (2018-10-04T18:13:47)'.</assert>
   </rule>
</pattern>
