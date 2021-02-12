<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901202
Name: Voedingspatroon zuigeling
Description: Template voor de weergave van Voedingspatroon zuigeling.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157">
   <title>Voedingspatroon zuigeling</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901202
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]
Item: (CDAObsFeedChild)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]"
         id="d15e68811-false-d579301e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]) &lt;= 1">(CDAObsFeedChild): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901202
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]
Item: (CDAObsFeedChild)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]"
         id="d15e68839-false-d579320e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAObsFeedChild): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="string(@moodCode) = ('EVN')">(CDAObsFeedChild): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']) &gt;= 1">(CDAObsFeedChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']) &lt;= 1">(CDAObsFeedChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="count(hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CDAObsFeedChild): element hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="count(hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CDAObsFeedChild): element hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAObsFeedChild): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901202
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']
Item: (CDAObsFeedChild)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']"
         id="d15e68848-false-d579385e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901202')">(CDAObsFeedChild): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901202' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901202
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CDAObsFeedChild)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d15e68853-false-d579404e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="@nullFlavor or (@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')">(CDAObsFeedChild): de elementwaarde MOET een zijn van 'code '230126006' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="@displayName">(CDAObsFeedChild): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(CDAObsFeedChild): attribuut @displayName MOET datatype 'st' hebben  - '<value-of select="@displayName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901202
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:effectiveTime
Item: (CDAObsFeedChild)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:effectiveTime"
         id="d15e68870-false-d579434e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAObsFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="not(*)">(CDAObsFeedChild): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901202
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]
Item: (CDAObsFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]">
      <extends rule="d579467e0-false-d579473e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901202-2018-11-08T123157.html"
              test="string(@typeCode) = ('COMP')">(CDAObsFeedChild): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]
Item: (CDASupplyFeedChild)
-->
   <rule id="d579467e0-false-d579473e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]) &gt;= 1">(CDASupplyFeedChild): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]) &lt;= 1">(CDASupplyFeedChild): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@classCode) = ('SPLY')">(CDASupplyFeedChild): de waarde van classCode MOET 'SPLY' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@moodCode) = ('EVN')">(CDASupplyFeedChild): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']) &gt;= 1">(CDASupplyFeedChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']) &lt;= 1">(CDASupplyFeedChild): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(CDASupplyFeedChild): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(CDASupplyFeedChild): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]) &gt;= 1">(CDASupplyFeedChild): element hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]) &lt;= 1">(CDASupplyFeedChild): element hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASupplyFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901201')">(CDASupplyFeedChild): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901201' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:id[@nullFlavor = 'NI']
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASupplyFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@nullFlavor) = ('NI')">(CDASupplyFeedChild): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@typeCode) = ('PRD')">(CDASupplyFeedChild): de waarde van typeCode MOET 'PRD' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(CDASupplyFeedChild): element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &lt;= 1">(CDASupplyFeedChild): element hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@classCode) = ('MANU')">(CDASupplyFeedChild): de waarde van classCode MOET 'MANU' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(CDASupplyFeedChild): element hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(CDASupplyFeedChild): element hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@classCode) = ('MMAT')">(CDASupplyFeedChild): de waarde van classCode MOET 'MMAT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="string(@determinerCode) = ('KIND')">(CDASupplyFeedChild): de waarde van determinerCode MOET 'KIND' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(CDASupplyFeedChild): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDASupplyFeedChild): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASupplyFeedChild)
-->
   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901202']]/hl7:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASupplyFeedChild): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASupplyFeedChild): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1 VoedingSoortCodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>
</pattern>
