<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901136
Name: Herkomst patiënt kernset neonatologie
Description: Template voor de herkomst van de patiënt voor opname.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229">
   <title>Herkomst patiënt kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901136
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]
Item: (LocationBefAdm)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]"
         id="d15e62452-false-d577395e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]) &lt;= 1">(LocationBefAdm): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901136
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]
Item: (LocationBefAdm)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]"
         id="d15e62476-false-d577412e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(LocationBefAdm): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="string(@moodCode) = ('EVN')">(LocationBefAdm): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']) &gt;= 1">(LocationBefAdm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']) &lt;= 1">(LocationBefAdm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:code[(@code = '58881000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(LocationBefAdm): element hl7:code[(@code = '58881000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:code[(@code = '58881000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(LocationBefAdm): element hl7:code[(@code = '58881000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(LocationBefAdm): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(LocationBefAdm): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901136
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']
Item: (LocationBefAdm)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']"
         id="d15e62482-false-d577480e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LocationBefAdm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901136')">(LocationBefAdm): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901136' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901136
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]/hl7:code[(@code = '58881000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (LocationBefAdm)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]/hl7:code[(@code = '58881000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e62490-false-d577499e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LocationBefAdm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="@nullFlavor or (@code='58881000146108' and @codeSystem='2.16.840.1.113883.6.96')">(LocationBefAdm): de elementwaarde MOET een zijn van 'code '58881000146108' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901136
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (LocationBefAdm)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901136']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e62503-false-d577521e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(LocationBefAdm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901136-2018-11-03T164229.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.262-2019-05-21T113119.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(LocationBefAdm): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.262 Herkomst Kind Codelijst (2019-05-21T11:31:19)'.</assert>
   </rule>
</pattern>
