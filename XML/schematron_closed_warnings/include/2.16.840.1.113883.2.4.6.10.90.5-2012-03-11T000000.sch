<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.5
Name: Geavanceerd Ultrageluid Onderzoek (GUO)
Description: Template voor CDA document Geavanceerd Ultrageluid Onderzoek (GUO)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000">
   <title>Geavanceerd Ultrageluid Onderzoek (GUO)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /
Item: (cda-guo)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]"
         id="d15e12345-false-d148773e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code = 'NL']) &gt;= 1">(cda-guo): element hl7:realmCode[@code = 'NL'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code = 'NL']) &lt;= 1">(cda-guo): element hl7:realmCode[@code = 'NL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &gt;= 1">(cda-guo): element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']) &lt;= 1">(cda-guo): element hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']) &gt;= 1">(cda-guo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']) &lt;= 1">(cda-guo): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(cda-guo): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(cda-guo): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(cda-guo): element hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(cda-guo): element hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:title) &lt;= 1">(cda-guo): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(cda-guo): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(cda-guo): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(cda-guo): element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(cda-guo): element hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &gt;= 1">(cda-guo): element hl7:languageCode[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)]) &lt;= 1">(cda-guo): element hl7:languageCode[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:setId) &lt;= 1">(cda-guo): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:versionNumber) &lt;= 1">(cda-guo): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]) &gt;= 1">(cda-guo): element hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]) &lt;= 1">(cda-guo): element hl7:recordTarget[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]) &gt;= 1">(cda-guo): element hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]) &gt;= 1">(cda-guo): element hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]) &lt;= 1">(cda-guo): element hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900800
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:realmCode[@code = 'NL']
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:realmCode[@code = 'NL']"
         id="d149132e7-false-d149140e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040']"
         id="d149154e18-false-d149162e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']"
         id="d15e12355-false-d149187e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-guo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.5')">(cda-guo): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.5' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900802
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:id[not(@nullFlavor)]
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:id[not(@nullFlavor)]"
         id="d149200e8-false-d149208e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900802-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:code[(@code = '11525-3' and @codeSystem = '2.16.840.1.113883.6.1')]"
         id="d15e12370-false-d149221e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-guo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="@nullFlavor or (@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')">(cda-guo): de elementwaarde MOET een zijn van 'code '11525-3' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900803
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:title"
         id="d149235e5-false-d149243e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900803-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900804
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d149250e5-false-d149258e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:confidentialityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d149269e2-false-d149279e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:languageCode[not(@nullFlavor)]"
         id="d149297e2-false-d149305e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900806-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:setId"
         id="d149312e14-false-d149320e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:versionNumber"
         id="d149312e16-false-d149333e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]"
         id="d149358e49-false-d149383e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]"
         id="d149358e128-false-d149453e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id"
         id="d149530e5-false-d149538e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:id"
         id="d149358e136-false-d149557e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr"
         id="d149358e142-false-d149581e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:streetName"
         id="d149697e101-false-d149705e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:houseNumber"
         id="d149697e116-false-d149718e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:buildingNumberSuffix"
         id="d149697e135-false-d149731e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:additionalLocator"
         id="d149697e228-false-d149744e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:postalCode"
         id="d149697e243-false-d149765e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:county"
         id="d149697e276-false-d149780e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:city"
         id="d149697e285-false-d149793e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:country"
         id="d149697e294-false-d149806e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:unitID"
         id="d149697e335-false-d149821e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:addr/hl7:useablePeriod"
         id="d149697e356-false-d149834e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'tel:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d149358e154-false-d149845e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d149358e159-false-d149887e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d149358e164-false-d149935e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d149358e168-false-d149995e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']"
         id="d150124e306-false-d150133e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']"
         id="d150124e325-false-d150155e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']"
         id="d150124e344-false-d150177e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]"
         id="d150124e364-false-d150199e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]"
         id="d150124e373-false-d150210e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]"
         id="d150124e382-false-d150221e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]"
         id="d150124e391-false-d150232e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']"
         id="d150124e417-false-d150254e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter[not(@nullFlavor)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter[not(@nullFlavor)]"
         id="d150124e436-false-d150278e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]"
         id="d150124e472-false-d150294e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']"
         id="d150124e498-false-d150316e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix[not(@nullFlavor)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix[not(@nullFlavor)]"
         id="d150124e517-false-d150340e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime"
         id="d150124e567-false-d150364e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d149358e176-false-d150379e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@contextControlCode = 'OP'][@typeCode = 'RCT'][hl7:patientRole[@classCode = 'PAT']]/hl7:patientRole[not(@nullFlavor)][@classCode = 'PAT'][hl7:patient[@classCode = 'PSN']]/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d149358e181-false-d150406e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]"
         id="d150417e2-false-d150427e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:time"
         id="d150417e115-false-d150474e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d150417e118-false-d150493e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d150417e124-false-d150580e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d150417e131-false-d150604e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']"
         id="d150417e138-false-d150628e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d150417e146-false-d150654e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d150417e153-false-d150678e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]"
         id="d150417e159-false-d150714e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d150417e162-false-d150729e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d150796e5-false-d150802e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d150417e172-false-d150815e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']"
         id="d150417e178-false-d150834e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d150417e183-false-d150853e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name[not(@nullFlavor)]"
         id="d150417e188-false-d150872e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[not(@nullFlavor)][@contextControlCode = 'OP'][@typeCode = 'AUT'][hl7:assignedAuthor[@classCode = 'ASSIGNED']]/hl7:assignedAuthor[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/peri:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d150417e190-false-d150887e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]"
         id="d150905e2-false-d150913e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]"
         id="d150905e52-false-d150943e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d150905e56-false-d150973e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]"
         id="d150905e62-false-d151027e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d150905e64-false-d151040e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[not(@nullFlavor)][@typeCode = 'CST'][hl7:assignedCustodian[@classCode = 'ASSIGNED']]/hl7:assignedCustodian[not(@nullFlavor)][@classCode = 'ASSIGNED'][hl7:representedCustodianOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']]/hl7:representedCustodianOrganization[not(@nullFlavor)][@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr"
         id="d150905e66-false-d151053e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]"
         id="d151060e2-false-d151068e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']"
         id="d151060e60-false-d151112e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:informationRecipient[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d151060e64-false-d151145e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode) = ('PSN')">(CDAinformationRecipient): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(CDAinformationRecipient): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d151060e71-false-d151166e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient[@typeCode = ('PRCP', 'TRC')][hl7:intendedRecipient[@classCode = 'ASSIGNED']]/hl7:intendedRecipient[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:receivedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d151060e77-false-d151196e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:authenticator[@typeCode = 'AUTHEN']
Item: (CDAauthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:authenticator[@typeCode = 'AUTHEN']"
         id="d151214e2-false-d151222e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900812-2012-03-11T000000.html"
              test="string(@typeCode) = ('AUTHEN')">(CDAauthenticator): de waarde van typeCode MOET 'AUTHEN' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900813
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:legalAuthenticator[@contextControlCode = 'OP'][@typeCode = 'LA']
Item: (CDlegalAuthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:legalAuthenticator[@contextControlCode = 'OP'][@typeCode = 'LA']"
         id="d151231e2-false-d151239e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@typeCode) = ('LA')">(CDlegalAuthenticator): de waarde van typeCode MOET 'LA' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@contextControlCode) = ('OP')">(CDlegalAuthenticator): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900814
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:relatedDocument[@typeCode = 'RPLC']
Item: (CDArelatedDocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:relatedDocument[@typeCode = 'RPLC']"
         id="d151254e2-false-d151262e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900814-2012-03-11T000000.html"
              test="string(@typeCode) = ('RPLC')">(CDArelatedDocument): de waarde van typeCode MOET 'RPLC' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]"
         id="d151271e2-false-d151281e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d151271e135-false-d151315e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id"
         id="d151271e141-false-d151394e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d151271e143-false-d151409e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d151271e150-false-d151433e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]"
         id="d151271e153-false-d151452e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]"
         id="d151271e157-false-d151486e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d151271e163-false-d151577e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d151271e170-false-d151601e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d151271e178-false-d151627e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:addr"
         id="d151271e185-false-d151651e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:telecom
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:telecom"
         id="d151271e187-false-d151664e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d151271e190-false-d151677e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d151271e196-false-d151708e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']"
         id="d151271e199-false-d151721e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:id[not(@nullFlavor)]"
         id="d151271e205-false-d151772e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:name"
         id="d151271e207-false-d151785e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:serviceEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:performer[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/hl7:addr"
         id="d151271e209-false-d151798e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]"
         id="d15e12443-false-d151837e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-guo): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-guo): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']) &gt;= 1">(cda-guo): element hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']) &lt;= 1">(cda-guo): element hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']"
         id="d15e12454-false-d151925e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@classCode) = ('DOCBODY')">(cda-guo): de waarde van classCode MOET 'DOCBODY' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@moodCode) = ('EVN')">(cda-guo): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(cda-guo): element hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(cda-guo): element hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(cda-guo): element hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 9">(cda-guo): element hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 9x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (cda-guo)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-guo): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-guo): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPregnancyInformationSection2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <extends rule="d152262e0-false-d152268e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@typeCode) = ('DRIV')">(CDAPregnancyInformationSection2): de waarde van typeCode MOET 'DRIV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationSection2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule id="d152262e0-false-d152268e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(CDAPregnancyInformationEntry2): element hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(CDAPregnancyInformationEntry2): element hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDDCDA): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDBasis): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDDCDA): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (ActualEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[@classCode='OBS'][hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@xsi:type">(ActualEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAPregnancyInformationEntry2): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAPregnancyInformationEntry2): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Chorioniciteit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '11449-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (cda-guo)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@typeCode) = ('COMP')">(cda-guo): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@contextConductionInd) = ('true')">(cda-guo): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionGUO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:title) &gt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:title) &lt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:text) &gt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationSectionGUO): element hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationSectionGUO): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:title">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="text()='Foetusspecifiek'">(CDAFetusSpecificInformationSectionGUO): de elementinhoud van hl7:title MOET ''Foetusspecifiek'' zijn. Gevonden: "<value-of select="."/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:text">
      <extends rule="SD.TEXT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SD.TEXT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationSectionGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SD.TEXT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <extends rule="d153872e0-false-d153878e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="string(@typeCode) = ('DRIV')">(CDAFetusSpecificInformationSectionGUO): de waarde van typeCode MOET 'DRIV' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationSectionGUO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule id="d153872e0-false-d153878e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]) &gt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]) &lt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@classCode) = ('CLUSTER')">(CDAFetusSpecificInformationEntryGUO): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@moodCode) = ('EVN')">(CDAFetusSpecificInformationEntryGUO): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:statusCode[@code = 'completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:statusCode[@code = 'completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)]) &gt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)]) &lt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationEntryGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationEntryGUO): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusSpecificInformationEntryGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAFetusSpecificInformationEntryGUO): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(CDAFetusParticipant): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryGUO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryGUO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryGUO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryGUO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Algehelebeoordeling)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GlobFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@typeCode) = ('COMP')">(CDAFetusSpecificInformationEntryGUO): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@contextConductionInd) = ('true')">(CDAFetusSpecificInformationEntryGUO): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (AfwijkendebevindingentypeGUO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (WaarschijnlijkheidafwbevindtypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@contextConductionInd = 'true'][@typeCode = 'COMP'][hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']]/hl7:structuredBody[@classCode = 'DOCBODY'][@moodCode = 'EVN']/hl7:component[hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:entry[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'GUOFind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
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
</pattern>
