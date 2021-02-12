<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901130
Name: Opname indicatie kernset neonatologie
Description: Template voor de weergave van opname indicaties. Versie voor Kernset Neonatologie.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631">
   <title>Opname indicatie kernset neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901130
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]
Item: (CDAKernsNeoAdmissionRson)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]"
         id="d15e61921-false-d575466e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]) &lt;= 1">(CDAKernsNeoAdmissionRson): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901130
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]
Item: (CDAKernsNeoAdmissionRson)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]"
         id="d15e61951-false-d575483e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAKernsNeoAdmissionRson): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="string(@moodCode) = ('EVN')">(CDAKernsNeoAdmissionRson): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAKernsNeoAdmissionRson): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130']) &gt;= 1">(CDAKernsNeoAdmissionRson): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130']) &lt;= 1">(CDAKernsNeoAdmissionRson): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &gt;= 1">(CDAKernsNeoAdmissionRson): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']) &lt;= 1">(CDAKernsNeoAdmissionRson): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:code[(@code = '59021000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(CDAKernsNeoAdmissionRson): element hl7:code[(@code = '59021000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:code[(@code = '59021000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(CDAKernsNeoAdmissionRson): element hl7:code[(@code = '59021000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(CDAKernsNeoAdmissionRson): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(CDAKernsNeoAdmissionRson): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901130
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130']
Item: (CDAKernsNeoAdmissionRson)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130']"
         id="d15e61966-false-d575572e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKernsNeoAdmissionRson): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901130')">(CDAKernsNeoAdmissionRson): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901130' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901130
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']
Item: (CDAKernsNeoAdmissionRson)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']"
         id="d15e61977-false-d575591e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKernsNeoAdmissionRson): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.3.19')">(CDAKernsNeoAdmissionRson): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.3.19' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901130
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '59021000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (CDAKernsNeoAdmissionRson)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:code[(@code = '59021000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d15e61990-false-d575610e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKernsNeoAdmissionRson): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="@nullFlavor or (@code='59021000146108' and @codeSystem='2.16.840.1.113883.6.96')">(CDAKernsNeoAdmissionRson): de elementwaarde MOET een zijn van 'code '59021000146108' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901130
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDAKernsNeoAdmissionRson)
-->

   <rule context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901130'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d15e62003-false-d575632e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKernsNeoAdmissionRson): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKernsNeoAdmissionRson): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.232 Opname indicatie (2018-10-16T23:56:06)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.232-2018-10-16T235606.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901130-2018-11-03T145631.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDAKernsNeoAdmissionRson): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.232 Opname indicatie (2018-10-16T23:56:06).</assert>
   </rule>
</pattern>
