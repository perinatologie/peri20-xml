<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.1
Name: Jonge zwangerschapsecho (JZE)
Description: Template voor CDA document Jonge zwangerschapsecho (JZE)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000">
   <title>Jonge zwangerschapsecho (JZE)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /
Item: (cda-jze)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]
Item: (cda-jze)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]"
         id="d19e2691-false-d3038e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code='NL'])&gt;=1">(cda-jze): element hl7:realmCode[@code='NL'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code='NL'])&lt;=1">(cda-jze): element hl7:realmCode[@code='NL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'])&gt;=1">(cda-jze): element hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'])&lt;=1">(cda-jze): element hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1'])&gt;=1">(cda-jze): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1'])&lt;=1">(cda-jze): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(cda-jze): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(cda-jze): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(cda-jze): element hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(cda-jze): element hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:title)&lt;=1">(cda-jze): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1">(cda-jze): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1">(cda-jze): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(cda-jze): element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(cda-jze): element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)])&gt;=1">(cda-jze): element hl7:languageCode[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)])&lt;=1">(cda-jze): element hl7:languageCode[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:setId)&lt;=1">(cda-jze): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(cda-jze): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)])&gt;=1">(cda-jze): element hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)])&lt;=1">(cda-jze): element hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:author[@typeCode='AUT'][not(@nullFlavor)])&gt;=1">(cda-jze): element hl7:author[@typeCode='AUT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:custodian[@typeCode='CST'][not(@nullFlavor)])&gt;=1">(cda-jze): element hl7:custodian[@typeCode='CST'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:custodian[@typeCode='CST'][not(@nullFlavor)])&lt;=1">(cda-jze): element hl7:custodian[@typeCode='CST'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900800
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:realmCode[@code='NL']
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:realmCode[@code='NL']"
         id="d3034e91-false-d3368e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900800-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArealmCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900800-2012-03-11T000000.html"
              test="@nullFlavor or (@code='NL')">(CDArealmCode): de elementwaarde MOET een zijn van 'code 'NL''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900801
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040']"
         id="d3371e31-false-d3389e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900801-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtypeId): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900801-2012-03-11T000000.html"
              test="string(@root)=('2.16.840.1.113883.1.3')">(CDAtypeId): de waarde van @root MOET '2.16.840.1.113883.1.3' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900801-2012-03-11T000000.html"
              test="string(@extension)=('POCD_HD000040')">(CDAtypeId): de waarde van @extension MOET 'POCD_HD000040' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']
Item: (cda-jze)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']"
         id="d19e2701-false-d3409e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-jze): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.1')">(cda-jze): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.1' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900802
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:id[not(@nullFlavor)]
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:id[not(@nullFlavor)]"
         id="d3410e21-false-d3425e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900802-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (cda-jze)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="d19e2716-false-d3437e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-jze): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="@nullFlavor or (@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')">(cda-jze): de elementwaarde MOET een zijn van 'code '11525-3' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900803
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:title"
         id="d3438e18-false-d3455e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900803-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900804
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d3456e16-false-d3467e0">
      <extends rule="TS.DATETIME.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900804-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAeffectiveTime): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900804-2012-03-11T000000.html"
              test="not(*)">(CDAeffectiveTime): <value-of select="local-name()"/> met datatype TS.DATETIME.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900805
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d3468e17-false-d3485e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900805-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAconfidentialityCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900805-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAconfidentialityCode): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.140 Confidentiality (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900806
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:languageCode[not(@nullFlavor)]"
         id="d3486e18-false-d3508e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900806-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:setId"
         id="d3509e25-false-d3520e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:versionNumber"
         id="d3509e27-false-d3531e0">
      <extends rule="INT.NONNEG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(CDAsetIdversionNumber): value MOET in bereik [1..] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDAsetIdversionNumber): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(../hl7:setId and ../hl7:versionNumber) or not (../hl7:setId or ../hl7:versionNumber)">(CDAsetIdversionNumber): Clinical Document setId and versionNumber SHALL be both present or both absent</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']"
         id="d3532e67-false-d3566e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@typeCode)=('RCT')">(CDArecordTarget): de waarde van @typeCode MOET 'RCT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@contextControlCode)=('OP')">(CDArecordTarget): de waarde van @contextControlCode MOET 'OP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patientRole[@classCode='PAT'][not(@nullFlavor)])&gt;=1">(CDArecordTarget): element hl7:patientRole[@classCode='PAT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patientRole[@classCode='PAT'][not(@nullFlavor)])&lt;=1">(CDArecordTarget): element hl7:patientRole[@classCode='PAT'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]"
         id="d3532e146-false-d3616e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@classCode)=('PAT')">(CDArecordTarget): de waarde van @classCode MOET 'PAT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(CDArecordTarget): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(CDArecordTarget): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:addr)&lt;=2">(CDArecordTarget): element hl7:addr komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1">(CDArecordTarget): element hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1">(CDArecordTarget): element hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900028
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id"
         id="d3612e61-false-d3679e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.3') or not(@root)">(Burgerservicenummer): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id"
         id="d3532e154-false-d3694e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr"
         id="d3532e160-false-d3708e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@use">(CDArecordTarget): attribute @use MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.2-DYNAMIC.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or count($theAttValue) = count($theAttCheck)">(CDArecordTarget): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.2' AdresSoortCodelijst (DYNAMISCH).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or string-length(normalize-space(replace (@use, 'HP|PHYS|TMP', '')))=0">(CDArecordTarget): Attribute @use of addr SHALL contain codes HP PHYS PST or TMP only</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="../hl7:addr[@use='HP' or @use='TMP PHYS']">(CDArecordTarget): Addr SHALL be present with @use HP or TMP PHYS or both</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:streetName)&lt;=1">(CDArecordTarget): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:houseNumber)&lt;=1">(CDArecordTarget): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:buildingNumberSuffix)&lt;=1">(CDArecordTarget): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:additionalLocator)&lt;=1">(CDArecordTarget): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:postalCode)&lt;=1">(CDArecordTarget): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:county)&lt;=1">(CDArecordTarget): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:city)&lt;=1">(CDArecordTarget): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:country)&lt;=1">(CDArecordTarget): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:unitID)&lt;=1">(CDArecordTarget): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:useablePeriod)&lt;=1">(CDArecordTarget): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:streetName"
         id="d3705e333-false-d3804e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:houseNumber"
         id="d3705e345-false-d3815e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:buildingNumberSuffix"
         id="d3705e358-false-d3826e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:additionalLocator"
         id="d3705e400-false-d3837e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de element content van hl7:additionalLocator MOET ''to' of 'by'' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:postalCode"
         id="d3705e412-false-d3855e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:county"
         id="d3705e433-false-d3868e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:city"
         id="d3705e439-false-d3879e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:country"
         id="d3705e445-false-d3890e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:unitID"
         id="d3705e479-false-d3903e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:useablePeriod"
         id="d3705e491-false-d3914e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'tel:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d3532e172-false-d3923e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.3-2015-04-01T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or count($theAttValue) = count($theAttCheck)">(CDArecordTarget): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.3' NummerSoortCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@value">(CDArecordTarget): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(CDArecordTarget): attribuut @value MOET datatype 'url' hebben<value-of select="@value"/>
      </assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d3532e177-false-d3959e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.4-2015-04-01T000000.xml')/*/valueSet/conceptList/concept[@code = $theAttValue]/@code)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or count($theAttValue) = count($theAttCheck)">(CDArecordTarget): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.4' EmailSoortCodelijst (2015-04-01T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@value">(CDArecordTarget): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(CDArecordTarget): attribuut @value MOET datatype 'url' hebben<value-of select="@value"/>
      </assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d3532e182-false-d4005e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="string(@classCode)=('PSN')">(CDArecordTarget): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:name)&gt;=1">(CDArecordTarget): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:name)&lt;=2">(CDArecordTarget): element hl7:name komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(CDArecordTarget): element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(CDArecordTarget): element hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:birthTime)&lt;=1">(CDArecordTarget): element hl7:birthTime komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d3532e186-false-d4055e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@use,' ') return if ($code=('L','A','OR')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@use) or count($theAttValue) = count($theAttCheck)">(CDArecordTarget): de waarde van use MOET 'code L of code A of code OR' zijn.</assert>
      <extends rule="PN.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="elmcount"
           value="count(hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[not(@qualifier)] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[@qualifier='BR'])&lt;=1">(CDArecordTarget): element hl7:given[@qualifier='BR'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[@qualifier='CL'])&lt;=1">(CDArecordTarget): element hl7:given[@qualifier='CL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[@qualifier='IN'])&lt;=1">(CDArecordTarget): element hl7:given[@qualifier='IN'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:given[not(@qualifier)])&lt;=1">(CDArecordTarget): element hl7:given[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:prefix[not(@qualifier)])&lt;=1">(CDArecordTarget): element hl7:prefix[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:family[not(@qualifier)])&lt;=1">(CDArecordTarget): element hl7:family[not(@qualifier)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']])&lt;=1">(CDArecordTarget): element hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:family[@qualifier='BR'])&lt;=1">(CDArecordTarget): element hl7:family[@qualifier='BR'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:delimiter)&lt;=1">(CDArecordTarget): element hl7:delimiter komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']])&lt;=1">(CDArecordTarget): element hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:family[@qualifier='SP'])&lt;=1">(CDArecordTarget): element hl7:family[@qualifier='SP'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:suffix)&lt;=1">(CDArecordTarget): element hl7:suffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="count(hl7:validTime)&lt;=1">(CDArecordTarget): element hl7:validTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(*) or (hl7:given and hl7:family)">(CDArecordTarget): In een gestructureerde naam moet minimaal één voornaam, initiaal of roepnaam en minimaal één geslachtsnaam of geslachtsnaam partner van een persoon aanwezig zijn, inclusief voorvoegsel(s) indien van toepassing</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']"
         id="d4051e307-false-d4165e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('BR')">(PN.NL): de waarde van @qualifier MOET 'BR' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']"
         id="d4051e323-false-d4182e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('CL')">(PN.NL): de waarde van @qualifier MOET 'CL' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']"
         id="d4051e339-false-d4199e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('IN')">(PN.NL): de waarde van @qualifier MOET 'IN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]"
         id="d4051e355-false-d4216e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]"
         id="d4051e362-false-d4225e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]"
         id="d4051e368-false-d4234e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]"
         id="d4051e374-false-d4243e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('VV')">(PN.NL): de waarde van @qualifier MOET 'VV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']"
         id="d4051e394-false-d4260e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('BR')">(PN.NL): de waarde van @qualifier MOET 'BR' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter"
         id="d4051e410-false-d4279e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]"
         id="d4051e430-false-d4292e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('VV')">(PN.NL): de waarde van @qualifier MOET 'VV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']"
         id="d4051e451-false-d4309e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('SP')">(PN.NL): de waarde van @qualifier MOET 'SP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix"
         id="d4051e467-false-d4328e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="string(@qualifier)=('AC') or not(@qualifier)">(PN.NL): de waarde van @qualifier MOET 'AC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="not(@nullFlavor)">(PN.NL): attribute @nullFlavor MAG NIET voorkomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime"
         id="d4051e496-false-d4347e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d3532e194-false-d4361e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDArecordTarget): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1 GeslachtCodelijst (2015-04-01T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CDArecordTarget): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1 GeslachtCodelijst (2015-04-01T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d3532e199-false-d4383e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="not(*)">(CDArecordTarget): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]"
         id="d4384e17-false-d4401e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@typeCode)=('AUT')">(CDAauthor): de waarde van @typeCode MOET 'AUT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@contextControlCode)=('OP')">(CDAauthor): de waarde van @contextControlCode MOET 'OP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:time)&lt;=1">(CDAauthor): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)])&gt;=1">(CDAauthor): element hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)])&lt;=1">(CDAauthor): element hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:time"
         id="d4384e130-false-d4435e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="not(*)">(CDAauthor): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d4384e133-false-d4452e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDAauthor): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="$elmcount&gt;=1">(CDAauthor): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[@root='2.16.528.1.1007.3.1'])&lt;=1">(CDAauthor): element hl7:id[@root='2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.1'])&lt;=1">(CDAauthor): element hl7:id[@root='2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'])&lt;=1">(CDAauthor): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(CDAauthor): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:assignedPerson[@classCode='PSN'])&lt;=1">(CDAauthor): element hl7:assignedPerson[@classCode='PSN'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:representedOrganization[@classCode='ORG'])&lt;=1">(CDAauthor): element hl7:representedOrganization[@classCode='ORG'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d4384e139-false-d4530e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.1')">(CDAauthor): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@extension">(CDAauthor): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d4384e146-false-d4550e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(CDAauthor): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@extension">(CDAauthor): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
         id="d4384e153-false-d4570e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.2')">(CDAauthor): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@extension">(CDAauthor): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d4384e161-false-d4592e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAauthor): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.58 ZorgverlenerType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']"
         id="d4384e168-false-d4614e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@classCode)=('PSN')">(CDAauthor): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAauthor): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(CDAauthor): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(CDAauthor): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']/hl7:name[not(@nullFlavor)]"
         id="d4384e174-false-d4639e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']"
         id="d4384e177-false-d4653e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@classCode)=('ORG')">(CDAauthor): de waarde van @classCode MOET 'ORG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAauthor): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)])&gt;=1">(CDAauthor): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)])&gt;=1">(CDAauthor): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(hl7:name[not(@nullFlavor)])&lt;=1">(CDAauthor): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="count(peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(CDAauthor): element peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d4650e24-false-d4713e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d4384e187-false-d4725e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(CDAauthor): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']"
         id="d4384e193-false-d4741e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.98.1')">(CDAauthor): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.98.1' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d4384e198-false-d4757e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(CDAauthor): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:name[not(@nullFlavor)]"
         id="d4384e203-false-d4772e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d4384e205-false-d4786e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAauthor): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.59 ZorgaanbiederType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]"
         id="d4787e18-false-d4809e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@typeCode)=('CST')">(CDAcustodian): de waarde van @typeCode MOET 'CST' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)])&gt;=1">(CDAcustodian): element hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)])&lt;=1">(CDAcustodian): element hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d4787e68-false-d4830e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDAcustodian): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)])&gt;=1">(CDAcustodian): element hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)])&lt;=1">(CDAcustodian): element hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]"
         id="d4787e72-false-d4851e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@classCode)=('ORG')">(CDAcustodian): de waarde van @classCode MOET 'ORG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAcustodian): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(CDAcustodian): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(CDAcustodian): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:name)&lt;=1">(CDAcustodian): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="count(hl7:addr)&lt;=1">(CDAcustodian): element hl7:addr komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d4787e78-false-d4890e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:name
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:name"
         id="d4787e80-false-d4901e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:addr
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:addr"
         id="d4787e82-false-d4912e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient"
         id="d4913e13-false-d4924e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="@typeCode">(CDAinformationRecipient): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@typeCode,' ') return if ($code=('PRCP','TRC')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="not(@typeCode) or count($theAttValue) = count($theAttCheck)">(CDAinformationRecipient): de waarde van typeCode MOET 'code PRCP of code TRC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)])&gt;=1">(CDAinformationRecipient): element hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)])&lt;=1">(CDAinformationRecipient): element hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d4913e71-false-d4961e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDAinformationRecipient): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:informationRecipient[@classCode='PSN'])&lt;=1">(CDAinformationRecipient): element hl7:informationRecipient[@classCode='PSN'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:receivedOrganization[@classCode='ORG'])&lt;=1">(CDAinformationRecipient): element hl7:receivedOrganization[@classCode='ORG'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:informationRecipient[@classCode='PSN']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:informationRecipient[@classCode='PSN']"
         id="d4913e75-false-d4986e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode)=('PSN')">(CDAinformationRecipient): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAinformationRecipient): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']"
         id="d4913e82-false-d5001e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode)=('ORG')">(CDAinformationRecipient): de waarde van @classCode MOET 'ORG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAinformationRecipient): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="count(hl7:id[@root='2.16.528.1.1007.3.3'])&lt;=1">(CDAinformationRecipient): element hl7:id[@root='2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d4913e88-false-d5025e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAinformationRecipient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.3')">(CDAinformationRecipient): de waarde van @root MOET '2.16.528.1.1007.3.3' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="@extension">(CDAinformationRecipient): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900812
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:authenticator[@typeCode='AUTHEN']
Item: (CDAauthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:authenticator[@typeCode='AUTHEN']"
         id="d5026e17-false-d5045e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900812-2012-03-11T000000.html"
              test="string(@typeCode)=('AUTHEN')">(CDAauthenticator): de waarde van @typeCode MOET 'AUTHEN' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900813
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:legalAuthenticator[@typeCode='LA']
Item: (CDlegalAuthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:legalAuthenticator[@typeCode='LA']"
         id="d5050e8-false-d5057e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@typeCode)=('LA')">(CDlegalAuthenticator): de waarde van @typeCode MOET 'LA' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@contextControlCode)=('OP')">(CDlegalAuthenticator): de waarde van @contextControlCode MOET 'OP' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900814
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:relatedDocument[@typeCode='RPLC']
Item: (CDArelatedDocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:relatedDocument[@typeCode='RPLC']"
         id="d5066e10-false-d5073e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900814-2012-03-11T000000.html"
              test="string(@typeCode)=('RPLC')">(CDArelatedDocument): de waarde van @typeCode MOET 'RPLC' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]"
         id="d5078e8-false-d5088e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@typeCode)=('DOC')">(CDAdocumentationOf): de waarde van @typeCode MOET 'DOC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&gt;=1">(CDAdocumentationOf): element hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&lt;=1">(CDAdocumentationOf): element hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]"
         id="d5078e141-false-d5115e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode)=('OBS')">(CDAdocumentationOf): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@moodCode)=('EVN')">(CDAdocumentationOf): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:id)&lt;=1">(CDAdocumentationOf): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(CDAdocumentationOf): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(CDAdocumentationOf): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1">(CDAdocumentationOf): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1">(CDAdocumentationOf): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]])&gt;=1">(CDAdocumentationOf): element hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]])&lt;=1">(CDAdocumentationOf): element hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id"
         id="d5078e147-false-d5173e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d5078e149-false-d5187e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAdocumentationOf): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.73 TypeExam (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d5078e156-false-d5209e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="not(*)">(CDAdocumentationOf): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]"
         id="d5078e159-false-d5226e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@typeCode)=('PRF')">(CDAdocumentationOf): de waarde van @typeCode MOET 'PRF' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]])&gt;=1">(CDAdocumentationOf): element hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]])&lt;=1">(CDAdocumentationOf): element hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]"
         id="d5078e163-false-d5253e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode)=('ASSIGNED')">(CDAdocumentationOf): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="$elmcount&gt;=1">(CDAdocumentationOf): keuze (hl7:id[@root='2.16.528.1.1007.3.1']  of  hl7:id[@root='2.16.840.1.113883.2.4.6.1']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&gt;=1">(CDAdocumentationOf): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(CDAdocumentationOf): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedPerson[@classCode='PSN'])&gt;=1">(CDAdocumentationOf): element hl7:assignedPerson[@classCode='PSN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:assignedPerson[@classCode='PSN'])&lt;=1">(CDAdocumentationOf): element hl7:assignedPerson[@classCode='PSN'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:representedOrganization[@classCode='ORG'])&gt;=1">(CDAdocumentationOf): element hl7:representedOrganization[@classCode='ORG'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:representedOrganization[@classCode='ORG'])&lt;=1">(CDAdocumentationOf): element hl7:representedOrganization[@classCode='ORG'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d5078e169-false-d5330e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@root)=('2.16.528.1.1007.3.1')">(CDAdocumentationOf): de waarde van @root MOET '2.16.528.1.1007.3.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@extension">(CDAdocumentationOf): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d5078e176-false-d5350e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.1')">(CDAdocumentationOf): de waarde van @root MOET '2.16.840.1.113883.2.4.6.1' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@extension">(CDAdocumentationOf): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d5078e184-false-d5372e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CDAdocumentationOf): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.58 ZorgverlenerType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:addr"
         id="d5078e191-false-d5394e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:telecom
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:telecom"
         id="d5078e193-false-d5405e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']"
         id="d5078e196-false-d5416e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode)=('PSN')">(CDAdocumentationOf): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAdocumentationOf): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:name)&gt;=1">(CDAdocumentationOf): element hl7:name is required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']/hl7:name"
         id="d5078e202-false-d5438e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']"
         id="d5078e205-false-d5449e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@classCode)=('ORG')">(CDAdocumentationOf): de waarde van @classCode MOET 'ORG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAdocumentationOf): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(CDAdocumentationOf): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:name)&gt;=1">(CDAdocumentationOf): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="count(hl7:addr)&gt;=1">(CDAdocumentationOf): element hl7:addr is required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@nullFlavor)]"
         id="d5078e211-false-d5485e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:name"
         id="d5078e213-false-d5496e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:addr"
         id="d5078e215-false-d5507e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']
Item: (cda-jze)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']"
         id="d19e2789-false-d5551e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-jze): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-jze): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'])&gt;=1">(cda-jze): element hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'])&lt;=1">(cda-jze): element hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']
Item: (cda-jze)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']"
         id="d19e2800-false-d5641e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@classCode)=('DOCBODY')">(cda-jze): de waarde van @classCode MOET 'DOCBODY' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@moodCode)=('EVN')">(cda-jze): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(cda-jze): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(cda-jze): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(cda-jze): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=9">(cda-jze): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 9x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (cda-jze)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-jze): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-jze): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900816
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection1)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900816
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationSection1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAPregnancyInformationSection1): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAPregnancyInformationSection1): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:title)&gt;=1">(CDAPregnancyInformationSection1): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:title)&lt;=1">(CDAPregnancyInformationSection1): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:text)&gt;=1">(CDAPregnancyInformationSection1): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:text)&lt;=1">(CDAPregnancyInformationSection1): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAPregnancyInformationSection1): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAPregnancyInformationSection1): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900816
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationSection1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationSection1): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900816
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAPregnancyInformationSection1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="text()='Zwangerschap'">(CDAPregnancyInformationSection1): de element content van hl7:title MOET ''Zwangerschap'' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900816
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAPregnancyInformationSection1)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900816
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <extends rule="d5745e79-false-d5956e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="string(@typeCode)=('DRIV')">(CDAPregnancyInformationSection1): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900816-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationSection1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule id="d5745e79-false-d5956e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@classCode)=('CLUSTER')">(CDAPregnancyInformationEntry1): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@moodCode)=('EVN')">(CDAPregnancyInformationEntry1): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:statusCode[@code='completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry1): element hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationEntry1): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAPregnancyInformationEntry1): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(Graviditeit): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(Graviditeit): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Graviditeit): element hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Graviditeit): element hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="string(@classCode)=('OBS')">(HoeveellingMax): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="string(@moodCode)=('EVN')">(HoeveellingMax): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(HoeveellingMax): element hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(HoeveellingMax): element hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:effectiveTime)&gt;=1">(HoeveellingMax): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(HoeveellingMax): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(HoeveellingMax): de elementwaarde MOET een zijn van 'code 'NFetusMax' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(HoeveellingMax): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@xsi:type">(HoeveellingMax): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(Actueleaantalfoetus): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(Actueleaantalfoetus): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:id)&lt;=1">(Actueleaantalfoetus): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Actueleaantalfoetus): element hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Actueleaantalfoetus): element hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:effectiveTime)&gt;=1">(Actueleaantalfoetus): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(Actueleaantalfoetus): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))">(Actueleaantalfoetus): value MOET in bereik [0..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@xsi:type">(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@classCode)=('OBS')">(EDDCDA): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@moodCode)=('EVN')">(EDDCDA): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <let name="V_ActualCount"
           value="count(../../*/hl7:observation[hl7:code[@code='EDD']]/*/hl7:observation[hl7:code[@code='ActualEDD'                      and @codeSystem='2.16.840.1.113883.2.4.4.13']]/hl7:value[@value='true'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="$V_ActualCount &lt;= 1">(EDDCDA): Er mag maar één A terme datum actueel zijn</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(EDDCDA): element hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(EDDCDA): element hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(EDDCDA): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1">(EDDCDA): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1">(EDDCDA): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(EDDCDA): element hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(EDDCDA): element hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="count(hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(EDDCDA): element hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDCDA): de elementwaarde MOET een zijn van 'code 'EDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="@xsi:type">(EDDCDA): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode)=('SPRT')">(EDDCDA): de waarde van @typeCode MOET 'SPRT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="string(@classCode)=('OBS')">(EDDBasis): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="string(@moodCode)=('EVN')">(EDDBasis): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:id)&lt;=1">(EDDBasis): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(EDDBasis): element hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(EDDBasis): element hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(EDDBasis): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(EDDBasis): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDBasis): de elementwaarde MOET een zijn van 'code 'EDDBasedOn' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(EDDBasis): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(EDDBasis): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@xsi:type">(EDDBasis): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode)=('SPRT')">(EDDCDA): de waarde van @typeCode MOET 'SPRT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (ActualEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(ActualEDD): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(ActualEDD): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(ActualEDD): element hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(ActualEDD): element hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1">(ActualEDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1">(ActualEDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@nullFlavor or (@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ActualEDD): de elementwaarde MOET een zijn van 'code 'ActualEDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@xsi:type">(ActualEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900170
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (FalsePositivePregnancy)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900170
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (FalsePositivePregnancy)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(FalsePositivePregnancy): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(FalsePositivePregnancy): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="count(hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(FalsePositivePregnancy): element hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="count(hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(FalsePositivePregnancy): element hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(FalsePositivePregnancy): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(FalsePositivePregnancy): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900170
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (FalsePositivePregnancy)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="@nullFlavor or (@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(FalsePositivePregnancy): de elementwaarde MOET een zijn van 'code 'FalsePosPreg' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900170
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (FalsePositivePregnancy)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='FalsePosPreg' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900170-2011-01-28T000000.html"
              test="@xsi:type">(FalsePositivePregnancy): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Chorioniciteit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="string(@classCode)=('OBS')">(Chorioniciteit): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="string(@moodCode)=('EVN')">(Chorioniciteit): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Chorioniciteit): element hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Chorioniciteit): element hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Chorioniciteit): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Chorioniciteit): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@nullFlavor or (@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Chorioniciteit): de elementwaarde MOET een zijn van 'code 'Chorionic' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Chorioniciteit): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.9 Chorioniciteit (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Chorioniciteit): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.9 Chorioniciteit (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@xsi:type">(Chorioniciteit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900817
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry1)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry1): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900817-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry1): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900825
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (ConcludedEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900825
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='VERIF']
Item: (ConcludedEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='VERIF']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="string(@classCode)=('VERIF')">(ConcludedEDD): de waarde van @classCode MOET 'VERIF' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(ConcludedEDD): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(ConcludedEDD): element hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="count(hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(ConcludedEDD): element hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(ConcludedEDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(ConcludedEDD): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900825
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='VERIF']/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (ConcludedEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='VERIF']/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ConcludedEDD): de elementwaarde MOET een zijn van 'code 'EDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900825
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='VERIF']/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (ConcludedEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='VERIF'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='VERIF']/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900825-2011-01-28T000000.html"
              test="@xsi:type">(ConcludedEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.1
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (cda-jze)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-jze): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.1-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-jze): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900818
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionJZE)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900818
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationSectionJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:title)&gt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:title)&lt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:text)&gt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:text)&lt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationSectionJZE): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900818
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationSectionJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationSectionJZE): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900818
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAFetusSpecificInformationSectionJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="text()='Foetusspecifiek'">(CDAFetusSpecificInformationSectionJZE): de element content van hl7:title MOET ''Foetusspecifiek'' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900818
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAFetusSpecificInformationSectionJZE)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900818
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <extends rule="d7249e74-false-d7420e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="string(@typeCode)=('DRIV')">(CDAFetusSpecificInformationSectionJZE): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900818-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationSectionJZE): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule id="d7249e74-false-d7420e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@classCode)=('CLUSTER')">(CDAFetusSpecificInformationEntryJZE): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@moodCode)=('EVN')">(CDAFetusSpecificInformationEntryJZE): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:statusCode[@code='completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationEntryJZE): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationEntryJZE): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAFetusSpecificInformationEntryJZE): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="string(@typeCode)=('SBJ')">(CDAFetusParticipant): de waarde van @typeCode MOET 'SBJ' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]])&gt;=1">(CDAFetusParticipant): element hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]])&lt;=1">(CDAFetusParticipant): element hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="string(@classCode)=('PRS')">(CDAFetusParticipant): de waarde van @classCode MOET 'PRS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:id)&lt;=1">(CDAFetusParticipant): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1">(CDAFetusParticipant): element hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="count(hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">(CDAFetusParticipant): element hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(CDAFetusParticipant): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryJZE): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryJZE): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(Foetusvolgletterzoalsantepartumgehanteerd): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(Foetusvolgletterzoalsantepartumgehanteerd): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Foetusvolgletterzoalsantepartumgehanteerd): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')">(Foetusvolgletterzoalsantepartumgehanteerd): de elementwaarde MOET een zijn van 'code '11951-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Foetusvolgletterzoalsantepartumgehanteerd): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.72 FoetusVolgletter (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Foetusvolgletterzoalsantepartumgehanteerd): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.72 FoetusVolgletter (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@xsi:type">(Foetusvolgletterzoalsantepartumgehanteerd): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryJZE): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryJZE): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CrownBodyLength)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(CrownBodyLength): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(CrownBodyLength): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CrownBodyLength): element hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CrownBodyLength): element hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(CrownBodyLength): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(CrownBodyLength): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')">(CrownBodyLength): de elementwaarde MOET een zijn van 'code '11957-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(CrownBodyLength): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{1,99}$'))))">(CrownBodyLength): value MOET tot op minstens 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="@xsi:type">(CrownBodyLength): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900819
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryJZE)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryJZE): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900819-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryJZE): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (BiparitalDiameter)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(BiparitalDiameter): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(BiparitalDiameter): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(BiparitalDiameter): element hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BiparitalDiameter): element hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(BiparitalDiameter): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(BiparitalDiameter): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')">(BiparitalDiameter): de elementwaarde MOET een zijn van 'code '11820-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.1']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(BiparitalDiameter): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{1,99}$'))))">(BiparitalDiameter): value MOET tot op minstens 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="@xsi:type">(BiparitalDiameter): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
