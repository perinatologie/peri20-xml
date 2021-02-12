<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.2
Name: NT-meting
Description: Template voor CDA document NT-meting
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000">
   <title>NT-meting</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /
Item: (cda-ntm)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]
Item: (cda-ntm)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]"
         id="d15e11324-false-d106132e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code = 'NL']) &gt;= 1">(cda-ntm): element hl7:realmCode[@code = 'NL'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code = 'NL']) &lt;= 1">(cda-ntm): element hl7:realmCode[@code = 'NL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(cda-ntm): element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(cda-ntm): element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']) &gt;= 1">(cda-ntm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']) &lt;= 1">(cda-ntm): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(cda-ntm): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(cda-ntm): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(cda-ntm): element hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(cda-ntm): element hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:title) &lt;= 1">(cda-ntm): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(cda-ntm): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(cda-ntm): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(cda-ntm): element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(cda-ntm): element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &gt;= 1">(cda-ntm): element hl7:languageCode[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &lt;= 1">(cda-ntm): element hl7:languageCode[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:setId) &lt;= 1">(cda-ntm): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:versionNumber) &lt;= 1">(cda-ntm): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]) &gt;= 1">(cda-ntm): element hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]) &lt;= 1">(cda-ntm): element hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]) &gt;= 1">(cda-ntm): element hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]) &gt;= 1">(cda-ntm): element hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]) &lt;= 1">(cda-ntm): element hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900800
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:realmCode[@code = 'NL']
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:realmCode[@code = 'NL']"
         id="d106495e7-false-d106503e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d106517e18-false-d106525e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']
Item: (cda-ntm)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']"
         id="d15e11334-false-d106550e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-ntm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.2')">(cda-ntm): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.2' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900802
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:id[not(@nullFlavor)]
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:id[not(@nullFlavor)]"
         id="d106563e8-false-d106571e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900802-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (cda-ntm)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e11349-false-d106584e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-ntm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="@nullFlavor or (@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')">(cda-ntm): de elementwaarde MOET een zijn van 'code '11525-3' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900803
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:title"
         id="d106598e5-false-d106606e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900803-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900804
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d106613e5-false-d106621e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d106632e2-false-d106642e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:languageCode[not(@nullFlavor)]"
         id="d106660e2-false-d106668e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900806-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:setId"
         id="d106675e14-false-d106683e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:versionNumber"
         id="d106675e16-false-d106696e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]"
         id="d106721e49-false-d106746e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]"
         id="d106721e128-false-d106816e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id"
         id="d106893e5-false-d106901e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id"
         id="d106721e136-false-d106920e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr"
         id="d106721e142-false-d106944e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:streetName"
         id="d107060e101-false-d107068e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:houseNumber"
         id="d107060e116-false-d107081e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:buildingNumberSuffix"
         id="d107060e135-false-d107094e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:additionalLocator"
         id="d107060e228-false-d107107e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:postalCode"
         id="d107060e243-false-d107128e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:county"
         id="d107060e276-false-d107143e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:city"
         id="d107060e285-false-d107156e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:country"
         id="d107060e294-false-d107169e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:unitID"
         id="d107060e335-false-d107184e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:useablePeriod"
         id="d107060e356-false-d107197e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'tel:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d106721e154-false-d107208e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d106721e159-false-d107250e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d106721e164-false-d107298e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d106721e168-false-d107358e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']"
         id="d107487e306-false-d107496e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']"
         id="d107487e325-false-d107518e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']"
         id="d107487e344-false-d107540e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]"
         id="d107487e364-false-d107562e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]"
         id="d107487e373-false-d107573e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]"
         id="d107487e382-false-d107584e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]"
         id="d107487e391-false-d107595e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']"
         id="d107487e417-false-d107617e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter[not(@nullFlavor)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter[not(@nullFlavor)]"
         id="d107487e436-false-d107641e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]"
         id="d107487e472-false-d107657e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']"
         id="d107487e498-false-d107679e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix[not(@nullFlavor)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix[not(@nullFlavor)]"
         id="d107487e517-false-d107703e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime"
         id="d107487e567-false-d107727e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d106721e176-false-d107742e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d106721e181-false-d107769e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]"
         id="d107780e2-false-d107790e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:time"
         id="d107780e115-false-d107837e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d107780e118-false-d107856e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d107780e124-false-d107943e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d107780e131-false-d107967e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']"
         id="d107780e138-false-d107991e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d107780e146-false-d108017e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d107780e153-false-d108041e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]"
         id="d107780e159-false-d108077e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d107780e162-false-d108092e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d108159e5-false-d108165e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d107780e172-false-d108178e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']"
         id="d107780e178-false-d108197e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d107780e183-false-d108216e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]"
         id="d107780e188-false-d108235e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d107780e190-false-d108250e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]"
         id="d108268e2-false-d108276e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]"
         id="d108268e52-false-d108306e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d108268e56-false-d108336e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]"
         id="d108268e62-false-d108390e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d108268e64-false-d108403e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr"
         id="d108268e66-false-d108416e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]"
         id="d108423e2-false-d108431e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d108423e60-false-d108475e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d108423e64-false-d108508e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode) = ('PSN')">(CDAinformationRecipient): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAinformationRecipient): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d108423e71-false-d108529e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d108423e77-false-d108559e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:authenticator[@typeCode = 'AUTHEN']
Item: (CDAauthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:authenticator[@typeCode = 'AUTHEN']"
         id="d108577e2-false-d108585e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900812-2012-03-11T000000.html"
              test="string(@typeCode) = ('AUTHEN')">(CDAauthenticator): de waarde van typeCode MOET 'AUTHEN' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900813
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:legalAuthenticator[@contextControlCode = 'OP'][@typeCode = 'LA']
Item: (CDlegalAuthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:legalAuthenticator[@contextControlCode = 'OP'][@typeCode = 'LA']"
         id="d108594e2-false-d108602e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@typeCode) = ('LA')">(CDlegalAuthenticator): de waarde van typeCode MOET 'LA' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@contextControlCode) = ('OP')">(CDlegalAuthenticator): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900814
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:relatedDocument[@typeCode = 'RPLC']
Item: (CDArelatedDocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:relatedDocument[@typeCode = 'RPLC']"
         id="d108617e2-false-d108625e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900814-2012-03-11T000000.html"
              test="string(@typeCode) = ('RPLC')">(CDArelatedDocument): de waarde van typeCode MOET 'RPLC' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]"
         id="d108634e2-false-d108644e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d108634e135-false-d108678e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id"
         id="d108634e141-false-d108757e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d108634e143-false-d108772e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d108634e150-false-d108796e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d108634e153-false-d108815e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d108634e157-false-d108849e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d108634e163-false-d108940e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d108634e170-false-d108964e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d108634e178-false-d108990e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:addr"
         id="d108634e185-false-d109014e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:telecom
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:telecom"
         id="d108634e187-false-d109027e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d108634e190-false-d109040e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d108634e196-false-d109071e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d108634e199-false-d109084e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]"
         id="d108634e205-false-d109135e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d108634e207-false-d109148e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr"
         id="d108634e209-false-d109161e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]
Item: (cda-ntm)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]"
         id="d15e11422-false-d109204e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-ntm): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-ntm): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']) &gt;= 1">(cda-ntm): element hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']) &lt;= 1">(cda-ntm): element hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']
Item: (cda-ntm)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']"
         id="d15e11433-false-d109300e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@classCode) = ('DOCBODY')">(cda-ntm): de waarde van classCode MOET 'DOCBODY' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@moodCode) = ('EVN')">(cda-ntm): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(cda-ntm): element hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(cda-ntm): element hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(cda-ntm): element hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 9">(cda-ntm): element hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 9x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (cda-ntm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-ntm): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-ntm): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationSection2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <extends rule="d109641e0-false-d109647e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@typeCode) = ('DRIV')">(CDAPregnancyInformationSection2): de waarde van typeCode MOET 'DRIV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationSection2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule id="d109641e0-false-d109647e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDDCDA): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDBasis): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDDCDA): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (ActualEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@xsi:type">(ActualEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Chorioniciteit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.2
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (cda-ntm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-ntm): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.2-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-ntm): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900828
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionNT)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900828
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationSectionNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:title) &gt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:title) &lt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:text) &gt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationSectionNT): element hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900828
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationSectionNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionNT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationSectionNT): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900828
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAFetusSpecificInformationSectionNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionNT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="text()='Foetusspecifiek'">(CDAFetusSpecificInformationSectionNT): de elementinhoud van hl7:title MOET ''Foetusspecifiek'' zijn. Gevonden: "<value-of select="."/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900828
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAFetusSpecificInformationSectionNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionNT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900828
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <extends rule="d111263e0-false-d111269e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="string(@typeCode) = ('DRIV')">(CDAFetusSpecificInformationSectionNT): de waarde van typeCode MOET 'DRIV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900828-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationSectionNT): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule id="d111263e0-false-d111269e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@classCode) = ('CLUSTER')">(CDAFetusSpecificInformationEntryNT): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAFetusSpecificInformationEntryNT): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:statusCode[@code = 'completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:statusCode[@code = 'completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)]) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryNT): element hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationEntryNT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationEntryNT): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationEntryNT): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAFetusSpecificInformationEntryNT): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(CDAFetusParticipant): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryNT): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryNT): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryNT): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryNT): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CrownBodyLength)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(CrownBodyLength): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(CrownBodyLength): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CrownBodyLength): element hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CrownBodyLength): element hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(CrownBodyLength): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(CrownBodyLength): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CrownBodyLength): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')">(CrownBodyLength): de elementwaarde MOET een zijn van 'code '11957-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11957-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(CrownBodyLength): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(CrownBodyLength): value MOET minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(CrownBodyLength): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(CrownBodyLength): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="@xsi:type">(CrownBodyLength): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryNT): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryNT): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (BiparitalDiameter)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(BiparitalDiameter): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(BiparitalDiameter): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(BiparitalDiameter): element hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(BiparitalDiameter): element hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(BiparitalDiameter): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(BiparitalDiameter): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BiparitalDiameter): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')">(BiparitalDiameter): de elementwaarde MOET een zijn van 'code '11820-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(BiparitalDiameter): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(BiparitalDiameter): value MOET minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BiparitalDiameter): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(BiparitalDiameter): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="@xsi:type">(BiparitalDiameter): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryNT): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryNT): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (NuchalTranslucencyinmm)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(NuchalTranslucencyinmm): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(NuchalTranslucencyinmm): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(NuchalTranslucencyinmm): element hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(NuchalTranslucencyinmm): element hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(NuchalTranslucencyinmm): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(NuchalTranslucencyinmm): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(NuchalTranslucencyinmm): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NuchalTranslucencyinmm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="@nullFlavor or (@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')">(NuchalTranslucencyinmm): de elementwaarde MOET een zijn van 'code '12146-7' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:effectiveTime
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NuchalTranslucencyinmm): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="not(*)">(NuchalTranslucencyinmm): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '12146-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(NuchalTranslucencyinmm): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{1,999})$'))))">(NuchalTranslucencyinmm): value MOET minimaal 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(NuchalTranslucencyinmm): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(NuchalTranslucencyinmm): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="@xsi:type">(NuchalTranslucencyinmm): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900829
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryNT)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryNT): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900829-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryNT): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (NuchalTranslucencyinMoM)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (NuchalTranslucencyinMoM)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(NuchalTranslucencyinMoM): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(NuchalTranslucencyinMoM): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(NuchalTranslucencyinMoM): element hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(NuchalTranslucencyinMoM): element hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(NuchalTranslucencyinMoM): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(NuchalTranslucencyinMoM): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (NuchalTranslucencyinMoM)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(NuchalTranslucencyinMoM): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="@nullFlavor or (@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')">(NuchalTranslucencyinMoM): de elementwaarde MOET een zijn van 'code '49035-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (NuchalTranslucencyinMoM)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.2']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '49035-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='{MoM}'))">(NuchalTranslucencyinMoM): value MOET eenheid '{MoM}' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?\d*(\.\d{2,999})$'))))">(NuchalTranslucencyinMoM): value MOET minimaal 2 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(NuchalTranslucencyinMoM): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(NuchalTranslucencyinMoM): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="@xsi:type">(NuchalTranslucencyinMoM): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
