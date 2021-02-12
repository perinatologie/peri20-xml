<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901125
Name: Locatie Partus Kernset Neonatologie
Description: Location Partus Kernset Neonatologie CDA Participant (Body) 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304">
   <title>Locatie Partus Kernset Neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]
Item: (CDAKsNeoLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]"
         id="d15e61445-false-d574004e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']) &gt;= 1">(CDAKsNeoLocPartus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']) &lt;= 1">(CDAKsNeoLocPartus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:participantRole[@classCode = 'DSDLOC']) &gt;= 1">(CDAKsNeoLocPartus): element hl7:participantRole[@classCode = 'DSDLOC'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:participantRole[@classCode = 'DSDLOC']) &lt;= 1">(CDAKsNeoLocPartus): element hl7:participantRole[@classCode = 'DSDLOC'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']
Item: (CDAKsNeoLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']"
         id="d15e61487-false-d574042e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoLocPartus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901125')">(CDAKsNeoLocPartus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901125' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']
Item: (CDAKsNeoLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']"
         id="d15e61492-false-d574061e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="string(@classCode) = ('DSDLOC')">(CDAKsNeoLocPartus): de waarde van classCode MOET 'DSDLOC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAKsNeoLocPartus): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:playingEntity[hl7:name]) &lt;= 1">(CDAKsNeoLocPartus): element hl7:playingEntity[hl7:name] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:id
Item: (CDAKsNeoLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:id"
         id="d15e61496-false-d574100e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoLocPartus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAKsNeoLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e61498-false-d574115e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoLocPartus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoLocPartus): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:playingEntity[hl7:name]
Item: (CDAKsNeoLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:playingEntity[hl7:name]"
         id="d15e61503-false-d574137e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:name) &gt;= 1">(CDAKsNeoLocPartus): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901125-2018-11-02T172304.html"
              test="count(hl7:name) &lt;= 1">(CDAKsNeoLocPartus): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901125
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901125']]/hl7:participantRole[@classCode = 'DSDLOC']/hl7:playingEntity[hl7:name]/hl7:name
Item: (CDAKsNeoLocPartus)
-->
</pattern>
