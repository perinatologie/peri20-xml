<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901124
Name: Type Locatie Partus Kernset Neonatologie
Description: Type Location Partus Kernset Neonatologie CDA Participant (Body) 
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242">
   <title>Type Locatie Partus Kernset Neonatologie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901124
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]
Item: (CDAKsNeoTypeLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]"
         id="d15e61397-false-d503417e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']) &gt;= 1">(CDAKsNeoTypeLocPartus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']) &lt;= 1">(CDAKsNeoTypeLocPartus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="count(hl7:participantRole[@classCode = 'BIRTHPL']) &gt;= 1">(CDAKsNeoTypeLocPartus): element hl7:participantRole[@classCode = 'BIRTHPL'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="count(hl7:participantRole[@classCode = 'BIRTHPL']) &lt;= 1">(CDAKsNeoTypeLocPartus): element hl7:participantRole[@classCode = 'BIRTHPL'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901124
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']
Item: (CDAKsNeoTypeLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']"
         id="d15e61429-false-d503455e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoTypeLocPartus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901124')">(CDAKsNeoTypeLocPartus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901124' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901124
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]/hl7:participantRole[@classCode = 'BIRTHPL']
Item: (CDAKsNeoTypeLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]/hl7:participantRole[@classCode = 'BIRTHPL']"
         id="d15e61434-false-d503474e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="string(@classCode) = ('BIRTHPL')">(CDAKsNeoTypeLocPartus): de waarde van classCode MOET 'BIRTHPL' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.233-2018-10-17T004302.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAKsNeoTypeLocPartus): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.233-2018-10-17T004302.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901124
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]/hl7:participantRole[@classCode = 'BIRTHPL']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.233-2018-10-17T004302.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAKsNeoTypeLocPartus)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901124']]/hl7:participantRole[@classCode = 'BIRTHPL']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.233-2018-10-17T004302.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e61438-false-d503502e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoTypeLocPartus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901124-2018-11-02T163242.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.233-2018-10-17T004302.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoTypeLocPartus): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.233 Locatie partus_LNR (2018-10-17T00:43:02)'.</assert>
   </rule>
</pattern>
