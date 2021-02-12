<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.4
Name: Structureel Echoscopisch Onderzoek (SEO)
Description: Template voor CDA document Structureel Echoscopisch Onderzoek (SEO)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000">
   <title>Structureel Echoscopisch Onderzoek (SEO)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /
Item: (cda-seo)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]
Item: (cda-seo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]"
         id="d15e11656-false-d129147e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code = 'NL']) &gt;= 1">(cda-seo): element hl7:realmCode[@code = 'NL'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code = 'NL']) &lt;= 1">(cda-seo): element hl7:realmCode[@code = 'NL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(cda-seo): element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(cda-seo): element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']) &gt;= 1">(cda-seo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']) &lt;= 1">(cda-seo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(cda-seo): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(cda-seo): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(cda-seo): element hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(cda-seo): element hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:title) &lt;= 1">(cda-seo): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(cda-seo): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(cda-seo): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(cda-seo): element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(cda-seo): element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &gt;= 1">(cda-seo): element hl7:languageCode[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &lt;= 1">(cda-seo): element hl7:languageCode[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:setId) &lt;= 1">(cda-seo): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:versionNumber) &lt;= 1">(cda-seo): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]) &gt;= 1">(cda-seo): element hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]) &lt;= 1">(cda-seo): element hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]) &gt;= 1">(cda-seo): element hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]) &gt;= 1">(cda-seo): element hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]) &lt;= 1">(cda-seo): element hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900800
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:realmCode[@code = 'NL']
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:realmCode[@code = 'NL']"
         id="d129518e7-false-d129526e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900800-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900800-2012-03-11T000000.html"
              test="@nullFlavor or (@code='NL')">(CDArealmCode): de elementwaarde MOET een zijn van 'code 'NL''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900801
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d129540e18-false-d129548e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900801-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900801-2012-03-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.1.3')">(CDAtypeId): de waarde van root MOET '2.16.840.1.113883.1.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900801-2012-03-11T000000.html"
              test="string(@extension) = ('POCD_HD000040')">(CDAtypeId): de waarde van extension MOET 'POCD_HD000040' zijn. Gevonden: "<value-of select="@extension"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']
Item: (cda-seo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']"
         id="d15e11666-false-d129573e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-seo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.4')">(cda-seo): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.4' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900802
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:id[not(@nullFlavor)]
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:id[not(@nullFlavor)]"
         id="d129586e8-false-d129594e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900802-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (cda-seo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e11681-false-d129607e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-seo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="@nullFlavor or (@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')">(cda-seo): de elementwaarde MOET een zijn van 'code '11525-3' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900803
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:title"
         id="d129621e5-false-d129629e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900803-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900804
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d129636e5-false-d129644e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900804-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900804-2012-03-11T000000.html"
              test="not(*)">(CDAeffectiveTime): <value-of select="local-name()"/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900805
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d129655e2-false-d129665e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900805-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900805-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAconfidentialityCode): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.140 Confidentiality (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900806
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:languageCode[not(@nullFlavor)]"
         id="d129683e2-false-d129691e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900806-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:setId"
         id="d129698e14-false-d129706e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:versionNumber"
         id="d129698e16-false-d129719e0">
      <extends rule="INT.NONNEG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(CDAsetIdversionNumber): value MOET in bereik [1..] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDAsetIdversionNumber): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(../hl7:setId and ../hl7:versionNumber) or not (../hl7:setId or ../hl7:versionNumber)">(CDAsetIdversionNumber): Clinical Document setId and versionNumber SHALL be both present or both absent</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]"
         id="d129744e49-false-d129769e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@typeCode) = ('RCT')">(CDArecordTarget): de waarde van typeCode MOET 'RCT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@contextControlCode) = ('OP')">(CDArecordTarget): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]) &gt;= 1">(CDArecordTarget): element hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]) &lt;= 1">(CDArecordTarget): element hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]"
         id="d129744e128-false-d129839e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@classCode) = ('PAT')">(CDArecordTarget): de waarde van classCode MOET 'PAT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(CDArecordTarget): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(CDArecordTarget): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:addr) &lt;= 2">(CDArecordTarget): element hl7:addr komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(CDArecordTarget): element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(CDArecordTarget): element hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900028
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id"
         id="d129916e5-false-d129924e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.3') or not(@root)">(Burgerservicenummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id"
         id="d129744e136-false-d129943e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr"
         id="d129744e142-false-d129967e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.2-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(CDArecordTarget): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.2' AdresSoortCodelijst (2015-04-01T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or string-length(normalize-space(replace (@use, 'HP|PHYS|TMP', '')))=0">(CDArecordTarget): Attribute @use of addr SHALL contain codes HP PHYS PST or TMP only</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="../hl7:addr[@use='HP' or @use='TMP PHYS']">(CDArecordTarget): Addr SHALL be present with @use HP or TMP PHYS or both</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:streetName) &lt;= 1">(CDArecordTarget): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(CDArecordTarget): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(CDArecordTarget): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(CDArecordTarget): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(CDArecordTarget): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:county) &lt;= 1">(CDArecordTarget): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:city) &lt;= 1">(CDArecordTarget): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:country) &lt;= 1">(CDArecordTarget): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:unitID) &lt;= 1">(CDArecordTarget): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(CDArecordTarget): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:streetName"
         id="d130083e101-false-d130091e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:houseNumber"
         id="d130083e116-false-d130104e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:buildingNumberSuffix"
         id="d130083e135-false-d130117e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:additionalLocator"
         id="d130083e228-false-d130130e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:postalCode"
         id="d130083e243-false-d130151e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:county"
         id="d130083e276-false-d130166e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:city"
         id="d130083e285-false-d130179e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:country"
         id="d130083e294-false-d130192e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:unitID"
         id="d130083e335-false-d130207e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:useablePeriod"
         id="d130083e356-false-d130220e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'tel:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d129744e154-false-d130231e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.3-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(CDArecordTarget): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.3' NummerSoortCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@value">(CDArecordTarget): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(CDArecordTarget): attribuut @value MOET datatype 'url' hebben  - '<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d129744e159-false-d130273e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.4-2015-04-01T000000.xml')/*/valueSet/conceptList/concept/@code))])">(CDArecordTarget): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.4' EmailSoortCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@value">(CDArecordTarget): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(CDArecordTarget): attribuut @value MOET datatype 'url' hebben  - '<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d129744e164-false-d130321e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@classCode) = ('PSN')">(CDArecordTarget): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:name) &gt;= 1">(CDArecordTarget): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:name) &lt;= 2">(CDArecordTarget): element hl7:name komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(CDArecordTarget): element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(CDArecordTarget): element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(CDArecordTarget): element hl7:birthTime komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d129744e168-false-d130381e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('L','A','OR')))])">(CDArecordTarget): de waarde van use MOET 'code L of code A of code OR' zijn. Gevonden: "<value-of select="@use"/>"</assert>
      <extends rule="PN.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[@qualifier='BR']) &lt;= 1">(CDArecordTarget): element hl7:given[@qualifier='BR'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[@qualifier='CL']) &lt;= 1">(CDArecordTarget): element hl7:given[@qualifier='CL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[@qualifier='IN']) &lt;= 1">(CDArecordTarget): element hl7:given[@qualifier='IN'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[not(@qualifier)]) &lt;= 1">(CDArecordTarget): element hl7:given[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:prefix[not(@qualifier)]) &lt;= 1">(CDArecordTarget): element hl7:prefix[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:family[not(@qualifier)]) &lt;= 1">(CDArecordTarget): element hl7:family[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]) &lt;= 1">(CDArecordTarget): element hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:family[@qualifier='BR']) &lt;= 1">(CDArecordTarget): element hl7:family[@qualifier='BR'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:delimiter[not(@nullFlavor)]) &lt;= 1">(CDArecordTarget): element hl7:delimiter[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]) &lt;= 1">(CDArecordTarget): element hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:family[@qualifier='SP']) &lt;= 1">(CDArecordTarget): element hl7:family[@qualifier='SP'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:suffix[not(@nullFlavor)]) &lt;= 1">(CDArecordTarget): element hl7:suffix[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:validTime) &lt;= 1">(CDArecordTarget): element hl7:validTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(*) or (hl7:given and hl7:family)">(CDArecordTarget): In een gestructureerde naam moet minimaal één voornaam, initiaal of roepnaam en minimaal één geslachtsnaam of geslachtsnaam partner van een persoon aanwezig zijn, inclusief voorvoegsel(s) indien van toepassing</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']"
         id="d130510e306-false-d130519e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('BR')">(PN.NL): de waarde van qualifier MOET 'BR' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']"
         id="d130510e325-false-d130541e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('CL')">(PN.NL): de waarde van qualifier MOET 'CL' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']"
         id="d130510e344-false-d130563e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('IN')">(PN.NL): de waarde van qualifier MOET 'IN' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]"
         id="d130510e364-false-d130585e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]"
         id="d130510e373-false-d130596e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]"
         id="d130510e382-false-d130607e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]"
         id="d130510e391-false-d130618e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('VV')">(PN.NL): de waarde van qualifier MOET 'VV' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']"
         id="d130510e417-false-d130640e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('BR')">(PN.NL): de waarde van qualifier MOET 'BR' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter[not(@nullFlavor)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter[not(@nullFlavor)]"
         id="d130510e436-false-d130664e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]"
         id="d130510e472-false-d130680e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('VV')">(PN.NL): de waarde van qualifier MOET 'VV' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']"
         id="d130510e498-false-d130702e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('SP')">(PN.NL): de waarde van qualifier MOET 'SP' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix[not(@nullFlavor)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix[not(@nullFlavor)]"
         id="d130510e517-false-d130726e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier) = ('AC') or not(@qualifier)">(PN.NL): de waarde van qualifier MOET 'AC' zijn. Gevonden: "<value-of select="@qualifier"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime"
         id="d130510e567-false-d130750e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d129744e176-false-d130765e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDArecordTarget): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1 GeslachtCodelijst (2015-04-01T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTarget): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1 GeslachtCodelijst (2015-04-01T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d129744e181-false-d130792e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(*)">(CDArecordTarget): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]"
         id="d130803e2-false-d130813e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@typeCode) = ('AUT')">(CDAauthor): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@contextControlCode) = ('OP')">(CDAauthor): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:time) &lt;= 1">(CDAauthor): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']) &gt;= 1">(CDAauthor): element hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']) &lt;= 1">(CDAauthor): element hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:time"
         id="d130803e115-false-d130860e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="not(*)">(CDAauthor): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d130803e118-false-d130879e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(CDAauthor): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="$elmcount &gt;= 1">(CDAauthor): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(CDAauthor): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(CDAauthor): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) &lt;= 1">(CDAauthor): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAauthor): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAauthor): element hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAauthor): element hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d130803e124-false-d130966e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(CDAauthor): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@extension">(CDAauthor): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d130803e131-false-d130990e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(CDAauthor): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@extension">(CDAauthor): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']"
         id="d130803e138-false-d131014e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.98.2')">(CDAauthor): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@extension">(CDAauthor): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d130803e146-false-d131040e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAauthor): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.58 ZorgverlenerType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d130803e153-false-d131064e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@classCode) = ('PSN')">(CDAauthor): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAauthor): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDAauthor): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDAauthor): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]"
         id="d130803e159-false-d131100e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d130803e162-false-d131115e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@classCode) = ('ORG')">(CDAauthor): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAauthor): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]) &gt;= 1">(CDAauthor): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(CDAauthor): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(CDAauthor): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAauthor): element peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d131182e5-false-d131188e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d130803e172-false-d131201e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(CDAauthor): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']"
         id="d130803e178-false-d131220e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.98.1')">(CDAauthor): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.98.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d130803e183-false-d131239e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(CDAauthor): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]"
         id="d130803e188-false-d131258e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d130803e190-false-d131273e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAauthor): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.59 ZorgaanbiederType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]"
         id="d131291e2-false-d131299e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@typeCode) = ('CST')">(CDAcustodian): de waarde van typeCode MOET 'CST' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]) &gt;= 1">(CDAcustodian): element hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]) &lt;= 1">(CDAcustodian): element hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]"
         id="d131291e52-false-d131329e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(CDAcustodian): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &gt;= 1">(CDAcustodian): element hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAcustodian): element hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d131291e56-false-d131359e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@classCode) = ('ORG')">(CDAcustodian): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAcustodian): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(CDAcustodian): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(CDAcustodian): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:name) &lt;= 1">(CDAcustodian): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(CDAcustodian): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]"
         id="d131291e62-false-d131413e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d131291e64-false-d131426e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr"
         id="d131291e66-false-d131439e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]"
         id="d131446e2-false-d131454e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="@typeCode">(CDAinformationRecipient): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (('PRCP','TRC')))])">(CDAinformationRecipient): de waarde van typeCode MOET 'code PRCP of code TRC' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']) &gt;= 1">(CDAinformationRecipient): element hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']) &lt;= 1">(CDAinformationRecipient): element hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d131446e60-false-d131498e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(CDAinformationRecipient): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAinformationRecipient): element hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAinformationRecipient): element hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d131446e64-false-d131531e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode) = ('PSN')">(CDAinformationRecipient): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAinformationRecipient): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d131446e71-false-d131552e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode) = ('ORG')">(CDAinformationRecipient): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAinformationRecipient): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(CDAinformationRecipient): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d131446e77-false-d131582e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAinformationRecipient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(CDAinformationRecipient): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="@extension">(CDAinformationRecipient): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900812
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:authenticator[@typeCode = 'AUTHEN']
Item: (CDAauthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:authenticator[@typeCode = 'AUTHEN']"
         id="d131600e2-false-d131608e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900812-2012-03-11T000000.html"
              test="string(@typeCode) = ('AUTHEN')">(CDAauthenticator): de waarde van typeCode MOET 'AUTHEN' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900813
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:legalAuthenticator[@contextControlCode = 'OP'][@typeCode = 'LA']
Item: (CDlegalAuthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:legalAuthenticator[@contextControlCode = 'OP'][@typeCode = 'LA']"
         id="d131617e2-false-d131625e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@typeCode) = ('LA')">(CDlegalAuthenticator): de waarde van typeCode MOET 'LA' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@contextControlCode) = ('OP')">(CDlegalAuthenticator): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900814
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:relatedDocument[@typeCode = 'RPLC']
Item: (CDArelatedDocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:relatedDocument[@typeCode = 'RPLC']"
         id="d131640e2-false-d131648e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900814-2012-03-11T000000.html"
              test="string(@typeCode) = ('RPLC')">(CDArelatedDocument): de waarde van typeCode MOET 'RPLC' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]"
         id="d131657e2-false-d131667e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@typeCode) = ('DOC')">(CDAdocumentationOf): de waarde van typeCode MOET 'DOC' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(CDAdocumentationOf): element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(CDAdocumentationOf): element hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d131657e135-false-d131701e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode) = ('OBS')">(CDAdocumentationOf): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAdocumentationOf): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:id) &lt;= 1">(CDAdocumentationOf): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(CDAdocumentationOf): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(CDAdocumentationOf): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(CDAdocumentationOf): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(CDAdocumentationOf): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &gt;= 1">(CDAdocumentationOf): element hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]) &lt;= 1">(CDAdocumentationOf): element hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id"
         id="d131657e141-false-d131780e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d131657e143-false-d131795e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAdocumentationOf): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.73 TypeExam (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d131657e150-false-d131819e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="not(*)">(CDAdocumentationOf): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d131657e153-false-d131838e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@typeCode) = ('PRF')">(CDAdocumentationOf): de waarde van typeCode MOET 'PRF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &gt;= 1">(CDAdocumentationOf): element hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]) &lt;= 1">(CDAdocumentationOf): element hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d131657e157-false-d131872e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(CDAdocumentationOf): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="$elmcount &gt;= 1">(CDAdocumentationOf): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(CDAdocumentationOf): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAdocumentationOf): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &gt;= 1">(CDAdocumentationOf): element hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAdocumentationOf): element hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &gt;= 1">(CDAdocumentationOf): element hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']) &lt;= 1">(CDAdocumentationOf): element hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d131657e163-false-d131963e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(CDAdocumentationOf): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@extension">(CDAdocumentationOf): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d131657e170-false-d131987e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(CDAdocumentationOf): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@extension">(CDAdocumentationOf): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d131657e178-false-d132013e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAdocumentationOf): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.58 ZorgverlenerType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:addr"
         id="d131657e185-false-d132037e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:telecom
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:telecom"
         id="d131657e187-false-d132050e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d131657e190-false-d132063e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode) = ('PSN')">(CDAdocumentationOf): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAdocumentationOf): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:name) &gt;= 1">(CDAdocumentationOf): element hl7:name is required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d131657e196-false-d132094e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d131657e199-false-d132107e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode) = ('ORG')">(CDAdocumentationOf): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAdocumentationOf): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(CDAdocumentationOf): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:name) &gt;= 1">(CDAdocumentationOf): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:addr) &gt;= 1">(CDAdocumentationOf): element hl7:addr is required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]"
         id="d131657e205-false-d132158e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d131657e207-false-d132171e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr"
         id="d131657e209-false-d132184e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]
Item: (cda-seo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]"
         id="d15e11754-false-d132235e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-seo): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-seo): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']) &gt;= 1">(cda-seo): element hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']) &lt;= 1">(cda-seo): element hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']
Item: (cda-seo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']"
         id="d15e11765-false-d132347e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@classCode) = ('DOCBODY')">(cda-seo): de waarde van classCode MOET 'DOCBODY' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@moodCode) = ('EVN')">(cda-seo): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(cda-seo): element hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(cda-seo): element hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(cda-seo): element hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 9">(cda-seo): element hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 9x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (cda-seo)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-seo): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-seo): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAPregnancyInformationSection2): element hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAPregnancyInformationSection2): element hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:title) &gt;= 1">(CDAPregnancyInformationSection2): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:title) &lt;= 1">(CDAPregnancyInformationSection2): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:text) &gt;= 1">(CDAPregnancyInformationSection2): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAPregnancyInformationSection2): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAPregnancyInformationSection2): element hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAPregnancyInformationSection2): element hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationSection2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationSection2): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationSection2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="text()='Zwangerschap'">(CDAPregnancyInformationSection2): de elementinhoud van hl7:title MOET ''Zwangerschap'' zijn. Gevonden: "<value-of select="."/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationSection2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <extends rule="d132696e0-false-d132702e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@typeCode) = ('DRIV')">(CDAPregnancyInformationSection2): de waarde van typeCode MOET 'DRIV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationSection2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule id="d132696e0-false-d132702e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@classCode) = ('CLUSTER')">(CDAPregnancyInformationEntry2): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAPregnancyInformationEntry2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:statusCode[@code = 'completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:statusCode[@code = 'completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationEntry2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationEntry2): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationEntry2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAPregnancyInformationEntry2): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Graviditeit): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Graviditeit): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Graviditeit): element hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Graviditeit): element hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Graviditeit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Graviditeit): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="string(@classCode) = ('OBS')">(HoeveellingMax): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="string(@moodCode) = ('EVN')">(HoeveellingMax): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(HoeveellingMax): element hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(HoeveellingMax): element hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(HoeveellingMax): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(HoeveellingMax): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HoeveellingMax): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(HoeveellingMax): de elementwaarde MOET een zijn van 'code 'NFetusMax' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HoeveellingMax): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="not(*)">(HoeveellingMax): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(HoeveellingMax): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(HoeveellingMax): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@xsi:type">(HoeveellingMax): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Actueleaantalfoetus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Actueleaantalfoetus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:id) &lt;= 1">(Actueleaantalfoetus): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Actueleaantalfoetus): element hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Actueleaantalfoetus): element hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Actueleaantalfoetus): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Actueleaantalfoetus): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="not(*)">(Actueleaantalfoetus): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))">(Actueleaantalfoetus): value MOET in bereik [0..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Actueleaantalfoetus): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@xsi:type">(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@classCode) = ('OBS')">(EDDCDA): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@moodCode) = ('EVN')">(EDDCDA): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <let name="V_ActualCount"
           value="count(../../*/hl7:observation[hl7:code[@code='EDD']]/*/hl7:observation[hl7:code[@code='ActualEDD'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]/hl7:value[@value='true'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="$V_ActualCount &lt;= 1">(EDDCDA): Er mag maar één A terme datum actueel zijn</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EDDCDA): element hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EDDCDA): element hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(EDDCDA): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(EDDCDA): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(EDDCDA): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(EDDCDA): element hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(EDDCDA): element hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(EDDCDA): element hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDCDA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDCDA): de elementwaarde MOET een zijn van 'code 'EDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDCDA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="not(*)">(EDDCDA): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="not(*)">(EDDCDA): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="@xsi:type">(EDDCDA): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDDCDA): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="string(@classCode) = ('OBS')">(EDDBasis): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="string(@moodCode) = ('EVN')">(EDDBasis): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:id) &lt;= 1">(EDDBasis): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EDDBasis): element hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EDDBasis): element hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(EDDBasis): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(EDDBasis): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDBasis): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDBasis): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDBasis): de elementwaarde MOET een zijn van 'code 'EDDBasedOn' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(EDDBasis): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(EDDBasis): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@xsi:type">(EDDBasis): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDDCDA): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (ActualEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(ActualEDD): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(ActualEDD): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(ActualEDD): element hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(ActualEDD): element hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(ActualEDD): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(ActualEDD): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ActualEDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@nullFlavor or (@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ActualEDD): de elementwaarde MOET een zijn van 'code 'ActualEDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@xsi:type">(ActualEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Chorioniciteit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="string(@classCode) = ('OBS')">(Chorioniciteit): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="string(@moodCode) = ('EVN')">(Chorioniciteit): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Chorioniciteit): element hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Chorioniciteit): element hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Chorioniciteit): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Chorioniciteit): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Chorioniciteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@nullFlavor or (@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Chorioniciteit): de elementwaarde MOET een zijn van 'code 'Chorionic' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Chorioniciteit): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.9 Chorioniciteit (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Chorioniciteit): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.9 Chorioniciteit (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@xsi:type">(Chorioniciteit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.4
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (cda-seo)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-seo): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.4-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-seo): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900830
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionSEO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900830
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationSectionSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:title) &gt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:title) &lt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:text) &gt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationSectionSEO): element hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900830
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationSectionSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionSEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationSectionSEO): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900830
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAFetusSpecificInformationSectionSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionSEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="text()='Foetusspecifiek'">(CDAFetusSpecificInformationSectionSEO): de elementinhoud van hl7:title MOET ''Foetusspecifiek'' zijn. Gevonden: "<value-of select="."/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900830
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAFetusSpecificInformationSectionSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionSEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900830
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <extends rule="d134374e0-false-d134380e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="string(@typeCode) = ('DRIV')">(CDAFetusSpecificInformationSectionSEO): de waarde van typeCode MOET 'DRIV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900830-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationSectionSEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule id="d134374e0-false-d134380e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@classCode) = ('CLUSTER')">(CDAFetusSpecificInformationEntrySEO): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAFetusSpecificInformationEntrySEO): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <let name="V__GlobalFindings"
           value="(hl7:component/hl7:observation[hl7:code[@code='GlobFind'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]/hl7:value/@code)[1]"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="($V__GlobalFindings != '1' and $V__GlobalFindings != '4') or                     count(hl7:component[hl7:observation[hl7:code[@code='GUOFind'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]])=0">(CDAFetusSpecificInformationEntrySEO): Als Algehele beoordeling (GlobFind) code = 1 of 4 (normaal/niet beoordeeld), dan mag Afwijkende bevindingen (GUOFind) niet aanwezig zijn</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="($V__GlobalFindings != '2' and $V__GlobalFindings != '3') or                     count(hl7:component[hl7:observation[hl7:code[@code='GUOFind'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]])&gt;=1">(CDAFetusSpecificInformationEntrySEO): Als Algehele beoordeling (GlobFind) code = 2 of 3 (afwijkend/niet conclusief), dan moet ten minste een Afwijkende bevindingen (GUOFind) aanwezig zijn</assert>
      <let name="V__GUOFind10"
           value="count(hl7:component/hl7:observation[hl7:code[@code='GUOFind'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]/hl7:value[@code='10'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="$V__GUOFind10 = 0 or count(hl7:component[hl7:observation[hl7:code[@code='SonoMarker'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]])&gt;=1">(CDAFetusSpecificInformationEntrySEO): Als Afwijkende bevindingen (GUOFind) code = 10 Sonomarkers, dan moet ten minste een Sonomarker (SonoMarker) ingevuld zijn</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="$V__GUOFind10 &gt; 0 or count(hl7:component[hl7:observation[hl7:code[@code='SonoMarker'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]])=0">(CDAFetusSpecificInformationEntrySEO): Sonomarker (SonoMarker) mag alleen aanwezig zijn als er een Afwijkende bevindingen (GUOFind) code = 10 Sonomarkers is aangegeven</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:statusCode[@code = 'completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:statusCode[@code = 'completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)]) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAFetusSpecificInformationEntrySEO): element hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationEntrySEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationEntrySEO): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationEntrySEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAFetusSpecificInformationEntrySEO): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="string(@typeCode) = ('SBJ')">(CDAFetusParticipant): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]) &gt;= 1">(CDAFetusParticipant): element hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]) &lt;= 1">(CDAFetusParticipant): element hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="string(@classCode) = ('PRS')">(CDAFetusParticipant): de waarde van classCode MOET 'PRS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:id) &lt;= 1">(CDAFetusParticipant): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(CDAFetusParticipant): element hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(CDAFetusParticipant): element hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(CDAFetusParticipant): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Foetusvolgletterzoalsantepartumgehanteerd): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Foetusvolgletterzoalsantepartumgehanteerd): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Foetusvolgletterzoalsantepartumgehanteerd): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')">(Foetusvolgletterzoalsantepartumgehanteerd): de elementwaarde MOET een zijn van 'code '11951-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Foetusvolgletterzoalsantepartumgehanteerd): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.72 FoetusVolgletter (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Foetusvolgletterzoalsantepartumgehanteerd): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.72 FoetusVolgletter (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@xsi:type">(Foetusvolgletterzoalsantepartumgehanteerd): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900835
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (TypeSEO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900835
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (TypeSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(TypeSEO): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(TypeSEO): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(TypeSEO): element hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(TypeSEO): element hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(TypeSEO): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(TypeSEO): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900835
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (TypeSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TypeSEO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="@nullFlavor or (@code='SEOType' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(TypeSEO): de elementwaarde MOET een zijn van 'code 'SEOType' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900835
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (TypeSEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SEOType' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.74-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(TypeSEO): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.74 ExamObjectiveType (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900835-2011-01-28T000000.html"
              test="@xsi:type">(TypeSEO): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900533
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (HeadCircumference)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900533
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (HeadCircumference)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(HeadCircumference): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(HeadCircumference): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(HeadCircumference): element hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(HeadCircumference): element hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(HeadCircumference): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(HeadCircumference): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900533
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (HeadCircumference)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HeadCircumference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11984-2' and @codeSystem='2.16.840.1.113883.6.1')">(HeadCircumference): de elementwaarde MOET een zijn van 'code '11984-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900533
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (HeadCircumference)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(HeadCircumference): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(HeadCircumference): value MOET minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(HeadCircumference): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(HeadCircumference): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900533-2011-01-28T000000.html"
              test="@xsi:type">(HeadCircumference): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900534
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (Cerebellum)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900534
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Cerebellum)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Cerebellum): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Cerebellum): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Cerebellum): element hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Cerebellum): element hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Cerebellum): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Cerebellum): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900534
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Cerebellum)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Cerebellum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11863-8' and @codeSystem='2.16.840.1.113883.6.1')">(Cerebellum): de elementwaarde MOET een zijn van 'code '11863-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900534
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Cerebellum)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11863-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(Cerebellum): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(Cerebellum): value MOET minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Cerebellum): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Cerebellum): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900534-2011-01-28T000000.html"
              test="@xsi:type">(Cerebellum): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900535
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (AbdominalCircumference)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900535
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (AbdominalCircumference)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(AbdominalCircumference): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(AbdominalCircumference): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(AbdominalCircumference): element hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(AbdominalCircumference): element hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(AbdominalCircumference): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(AbdominalCircumference): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900535
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (AbdominalCircumference)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AbdominalCircumference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11979-2' and @codeSystem='2.16.840.1.113883.6.1')">(AbdominalCircumference): de elementwaarde MOET een zijn van 'code '11979-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900535
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (AbdominalCircumference)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(AbdominalCircumference): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and (matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(AbdominalCircumference): value MOET in bereik [0..] liggen  en minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(AbdominalCircumference): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(AbdominalCircumference): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900535-2011-01-28T000000.html"
              test="@xsi:type">(AbdominalCircumference): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900536
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (FemurLength)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900536
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (FemurLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(FemurLength): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(FemurLength): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(FemurLength): element hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(FemurLength): element hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(FemurLength): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(FemurLength): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900536
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (FemurLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(FemurLength): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11963-6' and @codeSystem='2.16.840.1.113883.6.1')">(FemurLength): de elementwaarde MOET een zijn van 'code '11963-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900536
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (FemurLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(FemurLength): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(FemurLength): value MOET minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(FemurLength): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(FemurLength): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900536-2011-01-28T000000.html"
              test="@xsi:type">(FemurLength): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Algehelebeoordeling)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Algehelebeoordeling): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Algehelebeoordeling): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Algehelebeoordeling): element hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Algehelebeoordeling): element hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Algehelebeoordeling): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Algehelebeoordeling): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Algehelebeoordeling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="@nullFlavor or (@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Algehelebeoordeling): de elementwaarde MOET een zijn van 'code 'GlobFind' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Algehelebeoordeling): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.75 GlobalFindings (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="@xsi:type">(Algehelebeoordeling): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (AfwijkendebevindingentypeGUO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="string(@classCode) = ('OBS')">(AfwijkendebevindingentypeGUO): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="string(@moodCode) = ('EVN')">(AfwijkendebevindingentypeGUO): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(AfwijkendebevindingentypeGUO): element hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(AfwijkendebevindingentypeGUO): element hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(AfwijkendebevindingentypeGUO): element peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(AfwijkendebevindingentypeGUO): element peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(AfwijkendebevindingentypeGUO): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(AfwijkendebevindingentypeGUO): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AfwijkendebevindingentypeGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="@nullFlavor or (@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(AfwijkendebevindingentypeGUO): de elementwaarde MOET een zijn van 'code 'GUOFind' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900561
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (WaarschijnlijkheidafwbevindtypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900561-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WaarschijnlijkheidafwbevindtypeGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900561-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(WaarschijnlijkheidafwbevindtypeGUO): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.50 UncertaintyCode (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900561-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(WaarschijnlijkheidafwbevindtypeGUO): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.50 UncertaintyCode (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(AfwijkendebevindingentypeGUO): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.147 AUSFindings (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="@xsi:type">(AfwijkendebevindingentypeGUO): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900831
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntrySEO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntrySEO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900831-2012-08-01T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntrySEO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900564
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Sonomarker)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900564
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Sonomarker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="string(@classCode) = ('OBS')">(Sonomarker): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="string(@moodCode) = ('EVN')">(Sonomarker): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Sonomarker): element hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Sonomarker): element hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="count(peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Sonomarker): element peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="count(peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Sonomarker): element peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Sonomarker): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Sonomarker): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900564
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Sonomarker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sonomarker): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="@nullFlavor or (@code='SonoMarker' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Sonomarker): de elementwaarde MOET een zijn van 'code 'SonoMarker' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900573
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Waarschijnlijkheidsonomarker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900573-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Waarschijnlijkheidsonomarker): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900573-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Waarschijnlijkheidsonomarker): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.50 UncertaintyCode (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900573-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Waarschijnlijkheidsonomarker): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.50 UncertaintyCode (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900564
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Sonomarker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.4']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'SonoMarker' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.77-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Sonomarker): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.77 SonoMarkers (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900564-2012-08-01T000000.html"
              test="@xsi:type">(Sonomarker): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
