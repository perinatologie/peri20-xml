<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.45
Name: Administratief geboortebericht
Description: Template: Administratief geboortebericht fase 1a
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000">
   <title>Administratief geboortebericht</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]"
         id="d19e3348-false-d36170e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&gt;=1">(admgeboorte-1a): element hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])&lt;=1">(admgeboorte-1a): element hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]"
         id="d19e3355-false-d36188e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(admgeboorte-1a): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&gt;=1">(admgeboorte-1a): element hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')])&lt;=1">(admgeboorte-1a): element hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:statusCode[@code='active'])&gt;=1">(admgeboorte-1a): element hl7:statusCode[@code='active'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:statusCode[@code='active'])&lt;=1">(admgeboorte-1a): element hl7:statusCode[@code='active'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(admgeboorte-1a): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:subject1[not(@nullFlavor)])&gt;=1">(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:subject1[not(@nullFlavor)])&lt;=1">(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]"
         id="d19e3489-false-d36239e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')">(admgeboorte-1a): de elementwaarde MOET een zijn van 'code '118118' codeSystem '2.16.840.1.113883.2.4.15.4''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code='active']
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code='active']"
         id="d19e3494-false-d36257e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="@nullFlavor or (@code='active')">(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime"
         id="d19e3499-false-d36274e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(*)">(admgeboorte-1a): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]"
         id="d19e3502-false-d36288e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:IdentifiedPerson[not(@nullFlavor)])&gt;=1">(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:IdentifiedPerson[not(@nullFlavor)])&lt;=1">(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]"
         id="d19e3504-false-d36305e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:identifiedPerson[not(@nullFlavor)])&gt;=1">(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:identifiedPerson[not(@nullFlavor)])&lt;=1">(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:id
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:id"
         id="d19e3506-false-d36338e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:addr"
         id="d19e3508-false-d36349e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:statusCode
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:statusCode"
         id="d19e3510-false-d36360e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name"
         id="d19e3514-false-d36403e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode"
         id="d19e3516-false-d36414e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime"
         id="d19e3518-false-d36425e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(*)">(admgeboorte-1a): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr"
         id="d19e3522-false-d36450e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code"
         id="d19e3527-false-d36480e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom"
         id="d19e3529-false-d36491e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime"
         id="d19e3531-false-d36502e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]"
         id="d19e3535-false-d36514e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1">(admgeboorte-1a): element hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">(admgeboorte-1a): element hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id"
         id="d19e3537-false-d36544e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:addr"
         id="d19e3539-false-d36555e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]"
         id="d19e3541-false-d36567e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')">(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'NMTH' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name"
         id="d19e3548-false-d36599e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime"
         id="d19e3550-false-d36610e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(*)">(admgeboorte-1a): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']"
         id="d19e3555-false-d36624e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="string(@classCode)=('ORG')">(admgeboorte-1a): de waarde van @classCode MOET 'ORG' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:id
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:id"
         id="d19e3559-false-d36651e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:code
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:code"
         id="d19e3561-false-d36662e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:name
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:name"
         id="d19e3563-false-d36673e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:contact
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:contact/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:contact/hl7:addr"
         id="d19e3567-false-d36695e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
