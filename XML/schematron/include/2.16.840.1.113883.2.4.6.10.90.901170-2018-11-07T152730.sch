<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901170
Name: Metabool en Endocrien verrichting kernset neo
Description: Template voor de weergave van een verrichting 'Metabool en Endocrien'.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730">
   <title>Metabool en Endocrien verrichting kernset neo</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901170
Context: /
Item: (CDAKsNeoProcMetaEndo)
-->

   <rule context="/" id="d15e65759-false-d516132e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]) &gt;= 1">(CDAKsNeoProcMetaEndo): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]) &lt;= 1">(CDAKsNeoProcMetaEndo): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901170
Context: /hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]
Item: (CDAKsNeoProcMetaEndo)
-->

   <rule context="/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]"
         id="d15e65787-false-d516155e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="string(@classCode) = ('PROC')">(CDAKsNeoProcMetaEndo): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="string(@moodCode) = ('EVN')">(CDAKsNeoProcMetaEndo): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &gt;= 1">(CDAKsNeoProcMetaEndo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']) &lt;= 1">(CDAKsNeoProcMetaEndo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']) &gt;= 1">(CDAKsNeoProcMetaEndo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']) &lt;= 1">(CDAKsNeoProcMetaEndo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(CDAKsNeoProcMetaEndo): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(CDAKsNeoProcMetaEndo): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901170
Context: /hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']
Item: (CDAKsNeoProcMetaEndo)
-->

   <rule context="/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23']"
         id="d15e65801-false-d516223e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcMetaEndo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.7.10.3.23')">(CDAKsNeoProcMetaEndo): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.7.10.3.23' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901170
Context: /hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']
Item: (CDAKsNeoProcMetaEndo)
-->

   <rule context="/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']"
         id="d15e65815-false-d516242e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcMetaEndo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901170')">(CDAKsNeoProcMetaEndo): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901170' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901170
Context: /hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAKsNeoProcMetaEndo)
-->

   <rule context="/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.3.23'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901170']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d15e65820-false-d516263e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAKsNeoProcMetaEndo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901170-2018-11-07T152730.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.246-2018-10-15T010748.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAKsNeoProcMetaEndo): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.246 VerrichtingType_MetaboolEndocrien (2018-10-15T01:07:48)'.</assert>
   </rule>
</pattern>
