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
         id="d15e11816-false-d138027e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]) &gt;= 1">(admgeboorte-1a): element hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]) &lt;= 1">(admgeboorte-1a): element hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]"
         id="d15e11823-false-d138050e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="string(@moodCode) = ('EVN')">(admgeboorte-1a): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]) &gt;= 1">(admgeboorte-1a): element hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]) &lt;= 1">(admgeboorte-1a): element hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &gt;= 1">(admgeboorte-1a): element hl7:statusCode[@code = 'active'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &lt;= 1">(admgeboorte-1a): element hl7:statusCode[@code = 'active'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(admgeboorte-1a): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]) &gt;= 1">(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]) &lt;= 1">(admgeboorte-1a): element hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]"
         id="d15e11957-false-d138119e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="@nullFlavor or (@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')">(admgeboorte-1a): de elementwaarde MOET een zijn van 'code '118118' codeSystem '2.16.840.1.113883.2.4.15.4''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code = 'active']
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:statusCode[@code = 'active']"
         id="d15e11962-false-d138139e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="@nullFlavor or (@code='active')">(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:effectiveTime"
         id="d15e11967-false-d138159e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(*)">(admgeboorte-1a): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]"
         id="d15e11970-false-d138176e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]) &gt;= 1">(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]) &lt;= 1">(admgeboorte-1a): element hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]"
         id="d15e11972-false-d138200e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:identifiedPerson[not(@nullFlavor)]) &gt;= 1">(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:identifiedPerson[not(@nullFlavor)]) &lt;= 1">(admgeboorte-1a): element hl7:identifiedPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:id
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:id"
         id="d15e11974-false-d138240e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:addr"
         id="d15e11976-false-d138253e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:statusCode
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:statusCode"
         id="d15e11978-false-d138266e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:name"
         id="d15e11982-false-d138312e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:administrativeGenderCode"
         id="d15e11984-false-d138325e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:birthTime"
         id="d15e11986-false-d138338e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(*)">(admgeboorte-1a): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/hl7:addr"
         id="d15e11990-false-d138368e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:code"
         id="d15e11995-false-d138402e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:telecom"
         id="d15e11997-false-d138415e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/hl7:effectiveTime"
         id="d15e11999-false-d138428e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d15e12003-false-d138441e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(admgeboorte-1a): element hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="count(hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(admgeboorte-1a): element hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id"
         id="d15e12005-false-d138477e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:addr"
         id="d15e12007-false-d138490e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d15e12009-false-d138503e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="@nullFlavor or (@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')">(admgeboorte-1a): de elementwaarde MOET een zijn van 'code 'NMTH' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:name"
         id="d15e12016-false-d138540e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/hl7:birthTime"
         id="d15e12018-false-d138553e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(*)">(admgeboorte-1a): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']"
         id="d15e12023-false-d138570e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="string(@classCode) = ('ORG')">(admgeboorte-1a): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:id
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:id"
         id="d15e12027-false-d138601e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:code
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:code"
         id="d15e12029-false-d138614e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:name
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:name"
         id="d15e12031-false-d138627e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:contact
Item: (admgeboorte-1a)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.45
Context: hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:contact/hl7:addr
Item: (admgeboorte-1a)
-->

   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:contact/hl7:addr"
         id="d15e12035-false-d138653e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(admgeboorte-1a): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
