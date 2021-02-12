<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901158
Name: Circulatoir probleem
Description: Template voor de weergave van Circulatoir probleem. Versie voor Kernset Neonatologie.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420">
   <title>Circulatoir probleem</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: /
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/" id="d15e64462-false-d513711e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]) &lt;= 1">(CDAKsNeoCircProblem): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901158
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]"
         id="d15e64526-false-d513732e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901158']
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901158']"
         id="d15e64541-false-d513835e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']"
         id="d15e64547-false-d513854e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '282291009' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e64560-false-d513873e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime"
         id="d15e64573-false-d513893e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:low
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:low"
         id="d15e64578-false-d513924e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:high
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/hl7:high"
         id="d15e64589-false-d513941e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAKsNeoCircProblem)
-->

   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.237-2018-10-17T164846.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e64596-false-d513960e0">
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
Context: /hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]
Item: (CDAKsNeoCircProblem)
-->
   <rule context="/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901158-2018-11-06T192420.html"
              test="string(@typeCode) = ('SPRT')">(CDAKsNeoCircProblem): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
