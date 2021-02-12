<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901201
Name: Voeding kind
Description: Template: Voeding kind CDA versie
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942">
   <title>Voeding kind</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: **
Item: (CDASupplyFeedChild)
-->

   <rule context="**" id="d15e68733-false-d579036e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]) &gt;= 1">(CDASupplyFeedChild): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901201-2018-11-08T121942.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]) &lt;= 1">(CDASupplyFeedChild): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901201
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]"
         id="d15e68744-false-d579059e0">
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
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']"
         id="d15e68771-false-d579125e0">
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
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:id[@nullFlavor = 'NI']
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:id[@nullFlavor = 'NI']"
         id="d15e68776-false-d579144e0">
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
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]"
         id="d15e68787-false-d579163e0">
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
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d15e68791-false-d579197e0">
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
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d15e68795-false-d579231e0">
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
Context: **/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASupplyFeedChild)
-->

   <rule context="**/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901201']]/hl7:product[@typeCode = 'PRD'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:manufacturedMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.4.31.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e68801-false-d579271e0">
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
