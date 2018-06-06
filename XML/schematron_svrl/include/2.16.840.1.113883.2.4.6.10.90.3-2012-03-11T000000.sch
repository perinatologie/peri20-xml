<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.3
Name: Combinatietest kansbepaling
Description: Template voor CDA document Combinatietest kansbepaling
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000">
   <title>Combinatietest kansbepaling</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /
Item: (cda-ctk)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]
Item: (cda-ctk)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]"
         id="d19e3023-false-d16308e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code='NL'])&gt;=1">(cda-ctk): element hl7:realmCode[@code='NL'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code='NL'])&lt;=1">(cda-ctk): element hl7:realmCode[@code='NL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'])&gt;=1">(cda-ctk): element hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'])&lt;=1">(cda-ctk): element hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3'])&gt;=1">(cda-ctk): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3'])&lt;=1">(cda-ctk): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(cda-ctk): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(cda-ctk): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:code[(@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(cda-ctk): element hl7:code[(@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:code[(@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(cda-ctk): element hl7:code[(@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:title)&lt;=1">(cda-ctk): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1">(cda-ctk): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1">(cda-ctk): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(cda-ctk): element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(cda-ctk): element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)])&gt;=1">(cda-ctk): element hl7:languageCode[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)])&lt;=1">(cda-ctk): element hl7:languageCode[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:setId)&lt;=1">(cda-ctk): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(cda-ctk): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)])&gt;=1">(cda-ctk): element hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)])&lt;=1">(cda-ctk): element hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:author[@typeCode='AUT'][not(@nullFlavor)])&gt;=1">(cda-ctk): element hl7:author[@typeCode='AUT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:custodian[@typeCode='CST'][not(@nullFlavor)])&gt;=1">(cda-ctk): element hl7:custodian[@typeCode='CST'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:custodian[@typeCode='CST'][not(@nullFlavor)])&lt;=1">(cda-ctk): element hl7:custodian[@typeCode='CST'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900800
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:realmCode[@code='NL']
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:realmCode[@code='NL']"
         id="d16370e61-false-d16627e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040']"
         id="d16628e31-false-d16646e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']
Item: (cda-ctk)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']"
         id="d19e3033-false-d16666e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-ctk): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.3')">(cda-ctk): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900802
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:id[not(@nullFlavor)]
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:id[not(@nullFlavor)]"
         id="d16667e21-false-d16682e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900802-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:code[(@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (cda-ctk)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:code[(@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="d19e3048-false-d16694e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-ctk): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="@nullFlavor or (@code='51898-5' and @codeSystem='2.16.840.1.113883.6.1')">(cda-ctk): de elementwaarde MOET een zijn van 'code '51898-5' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900803
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:title"
         id="d16695e18-false-d16712e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900803-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900804
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d16713e16-false-d16724e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d16725e17-false-d16742e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:languageCode[not(@nullFlavor)]"
         id="d16743e18-false-d16765e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900806-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:setId"
         id="d16766e25-false-d16777e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:versionNumber"
         id="d16766e27-false-d16788e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']"
         id="d16789e67-false-d16823e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]"
         id="d16789e146-false-d16873e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id"
         id="d16869e61-false-d16936e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id"
         id="d16789e154-false-d16951e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr"
         id="d16789e160-false-d16965e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:streetName"
         id="d16962e333-false-d17061e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:houseNumber"
         id="d16962e345-false-d17072e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:buildingNumberSuffix"
         id="d16962e358-false-d17083e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:additionalLocator"
         id="d16962e400-false-d17094e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:postalCode"
         id="d16962e412-false-d17112e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:county"
         id="d16962e433-false-d17125e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:city"
         id="d16962e439-false-d17136e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:country"
         id="d16962e445-false-d17147e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:unitID"
         id="d16962e479-false-d17160e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:useablePeriod"
         id="d16962e491-false-d17171e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'tel:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d16789e172-false-d17180e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d16789e177-false-d17216e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d16789e182-false-d17262e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d16789e186-false-d17312e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']"
         id="d17308e307-false-d17422e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']"
         id="d17308e323-false-d17439e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']"
         id="d17308e339-false-d17456e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]"
         id="d17308e355-false-d17473e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]"
         id="d17308e362-false-d17482e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]"
         id="d17308e368-false-d17491e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]"
         id="d17308e374-false-d17500e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']"
         id="d17308e394-false-d17517e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter"
         id="d17308e410-false-d17536e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]"
         id="d17308e430-false-d17549e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']"
         id="d17308e451-false-d17566e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix"
         id="d17308e467-false-d17585e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime"
         id="d17308e496-false-d17604e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d16789e194-false-d17618e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d16789e199-false-d17640e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]"
         id="d17641e17-false-d17658e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:time"
         id="d17641e130-false-d17692e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d17641e133-false-d17709e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d17641e139-false-d17787e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d17641e146-false-d17807e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
         id="d17641e153-false-d17827e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d17641e161-false-d17849e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']"
         id="d17641e168-false-d17871e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']/hl7:name[not(@nullFlavor)]"
         id="d17641e174-false-d17896e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']"
         id="d17641e177-false-d17910e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d17907e24-false-d17970e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d17641e187-false-d17982e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']"
         id="d17641e193-false-d17998e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d17641e198-false-d18014e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:name[not(@nullFlavor)]"
         id="d17641e203-false-d18029e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d17641e205-false-d18043e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]"
         id="d18044e18-false-d18066e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d18044e68-false-d18087e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]"
         id="d18044e72-false-d18108e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d18044e78-false-d18147e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:name
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:name"
         id="d18044e80-false-d18158e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:addr
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:addr"
         id="d18044e82-false-d18169e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient"
         id="d18170e13-false-d18181e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d18170e71-false-d18218e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:informationRecipient[@classCode='PSN']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:informationRecipient[@classCode='PSN']"
         id="d18170e75-false-d18243e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode)=('PSN')">(CDAinformationRecipient): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAinformationRecipient): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']"
         id="d18170e82-false-d18258e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d18170e88-false-d18282e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:authenticator[@typeCode='AUTHEN']
Item: (CDAauthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:authenticator[@typeCode='AUTHEN']"
         id="d18283e17-false-d18302e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900812-2012-03-11T000000.html"
              test="string(@typeCode)=('AUTHEN')">(CDAauthenticator): de waarde van @typeCode MOET 'AUTHEN' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900813
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:legalAuthenticator[@typeCode='LA']
Item: (CDlegalAuthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:legalAuthenticator[@typeCode='LA']"
         id="d18307e8-false-d18314e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@typeCode)=('LA')">(CDlegalAuthenticator): de waarde van @typeCode MOET 'LA' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@contextControlCode)=('OP')">(CDlegalAuthenticator): de waarde van @contextControlCode MOET 'OP' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900814
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:relatedDocument[@typeCode='RPLC']
Item: (CDArelatedDocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:relatedDocument[@typeCode='RPLC']"
         id="d18323e10-false-d18330e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900814-2012-03-11T000000.html"
              test="string(@typeCode)=('RPLC')">(CDArelatedDocument): de waarde van @typeCode MOET 'RPLC' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]"
         id="d18335e8-false-d18345e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]"
         id="d18335e141-false-d18372e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id"
         id="d18335e147-false-d18430e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d18335e149-false-d18444e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d18335e156-false-d18466e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]"
         id="d18335e159-false-d18483e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]"
         id="d18335e163-false-d18510e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d18335e169-false-d18587e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d18335e176-false-d18607e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d18335e184-false-d18629e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:addr"
         id="d18335e191-false-d18651e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:telecom
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:telecom"
         id="d18335e193-false-d18662e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']"
         id="d18335e196-false-d18673e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']/hl7:name"
         id="d18335e202-false-d18695e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']"
         id="d18335e205-false-d18706e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@nullFlavor)]"
         id="d18335e211-false-d18742e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:name"
         id="d18335e213-false-d18753e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:addr"
         id="d18335e215-false-d18764e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']
Item: (cda-ctk)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']"
         id="d19e3121-false-d18798e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-ctk): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-ctk): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'])&gt;=1">(cda-ctk): element hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'])&lt;=1">(cda-ctk): element hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']
Item: (cda-ctk)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']"
         id="d19e3132-false-d18869e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@classCode)=('DOCBODY')">(cda-ctk): de waarde van @classCode MOET 'DOCBODY' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@moodCode)=('EVN')">(cda-ctk): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(cda-ctk): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(cda-ctk): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(cda-ctk): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=9">(cda-ctk): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 9x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (cda-ctk)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-ctk): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-ctk): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900864
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection3)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900864
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationSection3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAPregnancyInformationSection3): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAPregnancyInformationSection3): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:title)&gt;=1">(CDAPregnancyInformationSection3): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:title)&lt;=1">(CDAPregnancyInformationSection3): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:text)&gt;=1">(CDAPregnancyInformationSection3): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:text)&lt;=1">(CDAPregnancyInformationSection3): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAPregnancyInformationSection3): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAPregnancyInformationSection3): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900864
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationSection3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationSection3): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900864
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAPregnancyInformationSection3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="text()='Zwangerschap'">(CDAPregnancyInformationSection3): de element content van hl7:title MOET ''Zwangerschap'' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900864
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAPregnancyInformationSection3)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900864
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <extends rule="d18956e60-false-d19119e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="string(@typeCode)=('DRIV')">(CDAPregnancyInformationSection3): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900864-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationSection3): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationEntry3)
-->
   <rule id="d18956e60-false-d19119e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1">(CDAPregnancyInformationEntry3): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(CDAPregnancyInformationEntry3): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationEntry3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@classCode)=('CLUSTER')">(CDAPregnancyInformationEntry3): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@moodCode)=('EVN')">(CDAPregnancyInformationEntry3): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAPregnancyInformationEntry3): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAPregnancyInformationEntry3): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1">(CDAPregnancyInformationEntry3): element hl7:statusCode[@code='completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(CDAPregnancyInformationEntry3): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry3): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry3): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry3): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry3): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry3): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry3): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationEntry3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationEntry3): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (CDAPregnancyInformationEntry3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAPregnancyInformationEntry3): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry3): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry3): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry3): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry3): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(HoeveellingMax): de elementwaarde MOET een zijn van 'code 'NFetusMax' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(HoeveellingMax): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@xsi:type">(HoeveellingMax): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900865
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry3)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry3): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900865-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry3): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))">(Actueleaantalfoetus): value MOET in bereik [0..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@xsi:type">(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.3
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (cda-ctk)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-ctk): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.3-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-ctk): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900994
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionCTRA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900994
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationSectionCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:title)&gt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:title)&lt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:text)&gt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:text)&lt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationSectionCTRA): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900994
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationSectionCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationSectionCTRA): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900994
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAFetusSpecificInformationSectionCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="text()='Foetusspecifiek'">(CDAFetusSpecificInformationSectionCTRA): de element content van hl7:title MOET ''Foetusspecifiek'' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900994
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAFetusSpecificInformationSectionCTRA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900994
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <extends rule="d19660e184-false-d20067e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="string(@typeCode)=('DRIV')">(CDAFetusSpecificInformationSectionCTRA): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900994-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationSectionCTRA): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900862
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryCTRA)
-->
   <rule id="d19660e184-false-d20067e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900862
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationEntryCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="string(@classCode)=('CLUSTER')">(CDAFetusSpecificInformationEntryCTRA): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="string(@moodCode)=('EVN')">(CDAFetusSpecificInformationEntryCTRA): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:statusCode[@code='completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]])&gt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]])&lt;=1">(CDAFetusSpecificInformationEntryCTRA): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900862
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationEntryCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationEntryCTRA): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900862
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (CDAFetusSpecificInformationEntryCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAFetusSpecificInformationEntryCTRA): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(CDAFetusParticipant): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900862
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryCTRA): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryCTRA): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')">(Foetusvolgletterzoalsantepartumgehanteerd): de elementwaarde MOET een zijn van 'code '11951-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900862
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]
Item: (CDAFetusSpecificInformationEntryCTRA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]">
      <extends rule="d20061e69-false-d20672e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900862-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryCTRA): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]
Item: (RiskAssessment)
-->
   <rule id="d20061e69-false-d20672e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]])&gt;=1">(RiskAssessment): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]])&lt;=1">(RiskAssessment): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@classCode)=('OBS')">(RiskAssessment): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@moodCode)=('EVN')">(RiskAssessment): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(RiskAssessment): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(RiskAssessment): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')])&gt;=1">(RiskAssessment): element hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')])&lt;=1">(RiskAssessment): element hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:statusCode[@code='completed' or @nullFlavor])&lt;=1">(RiskAssessment): element hl7:statusCode[@code='completed' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(RiskAssessment): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(RiskAssessment): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:participant[@typeCode='DEV'][not(@nullFlavor)])&gt;=1">(RiskAssessment): element hl7:participant[@typeCode='DEV'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:participant[@typeCode='DEV'][not(@nullFlavor)])&lt;=1">(RiskAssessment): element hl7:participant[@typeCode='DEV'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[hl7:organizer][not(@nullFlavor)])&gt;=1">(RiskAssessment): element hl7:entryRelationship[hl7:organizer][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:entryRelationship[hl7:organizer][not(@nullFlavor)])&lt;=1">(RiskAssessment): element hl7:entryRelationship[hl7:organizer][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:id[not(@nullFlavor)]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:id[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="concat(@root, @extension) = concat (//hl7:documentationOf/hl7:serviceEvent/hl7:id/@root, //hl7:documentationOf/hl7:serviceEvent/hl7:id/@extension)">(RiskAssessment):  The id of the risk assessment SHALL be the same as documentationOf-&gt;serviceEvent.id </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="@nullFlavor or (@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')">(RiskAssessment): de elementwaarde MOET een zijn van 'code '5' codeSystem '2.16.840.1.113883.2.4.4.13.38''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:statusCode[@code='completed' or @nullFlavor]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:statusCode[@code='completed' or @nullFlavor]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="@nullFlavor or (@code='completed')">(RiskAssessment): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.78-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(RiskAssessment): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.78 CombiRiskMethod (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900849
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']
Item: (SoftwareApplicationRiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="string(@typeCode)=('DEV')">(SoftwareApplicationRiskAssessment): de waarde van @typeCode MOET 'DEV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="count(hl7:participantRole[not(@nullFlavor)])&gt;=1">(SoftwareApplicationRiskAssessment): element hl7:participantRole[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="count(hl7:participantRole[not(@nullFlavor)])&lt;=1">(SoftwareApplicationRiskAssessment): element hl7:participantRole[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900849
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']/hl7:participantRole[not(@nullFlavor)]
Item: (SoftwareApplicationRiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']/hl7:participantRole[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="count(hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&gt;=1">(SoftwareApplicationRiskAssessment): element hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="count(hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])&lt;=1">(SoftwareApplicationRiskAssessment): element hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900849
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]
Item: (SoftwareApplicationRiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="string(@classCode)=('DEV')">(SoftwareApplicationRiskAssessment): de waarde van @classCode MOET 'DEV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(SoftwareApplicationRiskAssessment): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="count(hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(SoftwareApplicationRiskAssessment): element hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="count(hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(SoftwareApplicationRiskAssessment): element hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900849
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (SoftwareApplicationRiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:participant[@typeCode='DEV']/hl7:participantRole[not(@nullFlavor)]/hl7:playingDevice[@classCode='DEV'][hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:softwareName[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SoftwareApplicationRiskAssessment): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900849-2012-06-26T000000.html"
              test="@nullFlavor or not(@code) or exists(doc('include/voc-2.16.840.1.113883.2.4.11.79-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(SoftwareApplicationRiskAssessment): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.79 CombiRiskSystem (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Aprioririsk21)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Aprioririsk21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Aprioririsk21): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Aprioririsk21): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Aprioririsk21): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Aprioririsk21): element hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Aprioririsk21): element hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Aprioririsk21): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Aprioririsk21): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Aprioririsk21)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Aprioririsk21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="@nullFlavor or (@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Aprioririsk21): de elementwaarde MOET een zijn van 'code 'APrioriRisk21' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Aprioririsk21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="@xsi:type">(Aprioririsk21): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(Aprioririsk21): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(Aprioririsk21): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(Aprioririsk21): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(Aprioririsk21): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (Aprioririsk21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(Aprioririsk21): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900842
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (Aprioririsk21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900842-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(Aprioririsk21): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Aprioririsk18)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Aprioririsk18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Aprioririsk18): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Aprioririsk18): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Aprioririsk18): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Aprioririsk18): element hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Aprioririsk18): element hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Aprioririsk18): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Aprioririsk18): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Aprioririsk18)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Aprioririsk18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="@nullFlavor or (@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Aprioririsk18): de elementwaarde MOET een zijn van 'code 'APrioriRisk18' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Aprioririsk18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="@xsi:type">(Aprioririsk18): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(Aprioririsk18): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(Aprioririsk18): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(Aprioririsk18): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(Aprioririsk18): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (Aprioririsk18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(Aprioririsk18): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900841
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (Aprioririsk18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900841-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(Aprioririsk18): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Aprioririsk13)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Aprioririsk13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Aprioririsk13): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Aprioririsk13): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Aprioririsk13): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Aprioririsk13): element hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Aprioririsk13): element hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Aprioririsk13): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Aprioririsk13): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Aprioririsk13)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Aprioririsk13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="@nullFlavor or (@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Aprioririsk13): de elementwaarde MOET een zijn van 'code 'APrioriRisk13' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Aprioririsk13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="@xsi:type">(Aprioririsk13): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(Aprioririsk13): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(Aprioririsk13): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(Aprioririsk13): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(Aprioririsk13): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (Aprioririsk13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(Aprioririsk13): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900840
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (Aprioririsk13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='APrioriRisk13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900840-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(Aprioririsk13): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskTrisomy21)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (RiskTrisomy21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(RiskTrisomy21): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(RiskTrisomy21): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(RiskTrisomy21): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(RiskTrisomy21): element hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(RiskTrisomy21): element hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(RiskTrisomy21): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(RiskTrisomy21): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (RiskTrisomy21)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (RiskTrisomy21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="@nullFlavor or (@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(RiskTrisomy21): de elementwaarde MOET een zijn van 'code 'RiskTrisomy21' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (RiskTrisomy21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="@xsi:type">(RiskTrisomy21): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(RiskTrisomy21): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(RiskTrisomy21): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(RiskTrisomy21): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(RiskTrisomy21): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (RiskTrisomy21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(RiskTrisomy21): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900845
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (RiskTrisomy21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900845-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(RiskTrisomy21): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskTrisomy18)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (RiskTrisomy18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(RiskTrisomy18): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(RiskTrisomy18): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(RiskTrisomy18): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(RiskTrisomy18): element hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(RiskTrisomy18): element hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(RiskTrisomy18): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(RiskTrisomy18): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (RiskTrisomy18)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (RiskTrisomy18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="@nullFlavor or (@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(RiskTrisomy18): de elementwaarde MOET een zijn van 'code 'RiskTrisomy18' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (RiskTrisomy18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="@xsi:type">(RiskTrisomy18): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(RiskTrisomy18): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(RiskTrisomy18): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(RiskTrisomy18): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(RiskTrisomy18): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (RiskTrisomy18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(RiskTrisomy18): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900844
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (RiskTrisomy18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900844-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(RiskTrisomy18): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskTrisomy13)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (RiskTrisomy13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(RiskTrisomy13): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(RiskTrisomy13): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(RiskTrisomy13): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(RiskTrisomy13): element hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(RiskTrisomy13): element hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(RiskTrisomy13): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(RiskTrisomy13): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (RiskTrisomy13)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (RiskTrisomy13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="@nullFlavor or (@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(RiskTrisomy13): de elementwaarde MOET een zijn van 'code 'RiskTrisomy13' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (RiskTrisomy13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="@xsi:type">(RiskTrisomy13): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(RiskTrisomy13): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(RiskTrisomy13): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(RiskTrisomy13): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(RiskTrisomy13): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (RiskTrisomy13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(RiskTrisomy13): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900843
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (RiskTrisomy13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[@typeCode='COMP'][hl7:observation[hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RiskTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900843-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(RiskTrisomy13): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('DRIV')">(RiskAssessment): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)])&gt;=1">(RiskAssessment): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)])&lt;=1">(RiskAssessment): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@classCode)=('CLUSTER')">(RiskAssessment): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@moodCode)=('EVN')">(RiskAssessment): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:statusCode[@code='completed' or @nullFlavor])&lt;=1">(RiskAssessment): element hl7:statusCode[@code='completed' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(RiskAssessment): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:statusCode[@code='completed' or @nullFlavor]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:statusCode[@code='completed' or @nullFlavor]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="@nullFlavor or (@code='completed')">(RiskAssessment): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Cutofft21)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Cutofft21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Cutofft21): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Cutofft21): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Cutofft21): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Cutofft21): element hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Cutofft21): element hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Cutofft21): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Cutofft21): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Cutofft21)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Cutofft21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="@nullFlavor or (@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Cutofft21): de elementwaarde MOET een zijn van 'code 'CutOffTrisomy21' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Cutofft21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="@xsi:type">(Cutofft21): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(Cutofft21): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(Cutofft21): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(Cutofft21): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(Cutofft21): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (Cutofft21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(Cutofft21): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900848
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (Cutofft21)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy21' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900848-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(Cutofft21): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Cutofft18)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Cutofft18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Cutofft18): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Cutofft18): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Cutofft18): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Cutofft18): element hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Cutofft18): element hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Cutofft18): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Cutofft18): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Cutofft18)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Cutofft18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="@nullFlavor or (@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Cutofft18): de elementwaarde MOET een zijn van 'code 'CutOffTrisomy18' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Cutofft18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="@xsi:type">(Cutofft18): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(Cutofft18): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(Cutofft18): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(Cutofft18): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(Cutofft18): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (Cutofft18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(Cutofft18): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900847
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (Cutofft18)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy18' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900847-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(Cutofft18): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Cutofft13)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Cutofft13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Cutofft13): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Cutofft13): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Cutofft13): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Cutofft13): element hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Cutofft13): element hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Cutofft13): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Cutofft13): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Cutofft13)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Cutofft13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="@nullFlavor or (@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Cutofft13): de elementwaarde MOET een zijn van 'code 'CutOffTrisomy13' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Cutofft13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="@xsi:type">(Cutofft13): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:numerator)&gt;=1">(Cutofft13): element hl7:numerator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:numerator)&lt;=1">(Cutofft13): element hl7:numerator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:denominator)&gt;=1">(Cutofft13): element hl7:denominator is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="count(hl7:denominator)&lt;=1">(Cutofft13): element hl7:denominator komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator
Item: (Cutofft13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:numerator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=1))">(Cutofft13): value MOET in bereik [1..1] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900846
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator
Item: (Cutofft13)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CutOffTrisomy13' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='RTO' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]/hl7:denominator">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900846-2012-06-26T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1))">(Cutofft13): value MOET in bereik [1..] liggen  </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900201
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (ActualPregnancyDuration)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900201
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (ActualPregnancyDuration)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="string(@classCode)=('OBS')">(ActualPregnancyDuration): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="string(@moodCode)=('EVN')">(ActualPregnancyDuration): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="count(hl7:id)&lt;=1">(ActualPregnancyDuration): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="count(hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(ActualPregnancyDuration): element hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="count(hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(ActualPregnancyDuration): element hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(ActualPregnancyDuration): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(ActualPregnancyDuration): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900201
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:id
Item: (ActualPregnancyDuration)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900201
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (ActualPregnancyDuration)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="@nullFlavor or (@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')">(ActualPregnancyDuration): de elementwaarde MOET een zijn van 'code '18185-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900201
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (ActualPregnancyDuration)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='18185-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="(@nullFlavor or (@unit='d'))">(ActualPregnancyDuration): value MOET eenheid 'd' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0))">(ActualPregnancyDuration): value MOET in bereik [0..] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900201-2011-12-06T000000.html"
              test="@xsi:type">(ActualPregnancyDuration): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))">(Actueleaantalfoetus): value MOET in bereik [0..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@xsi:type">(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Chorioniciteit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@nullFlavor or (@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Chorioniciteit): de elementwaarde MOET een zijn van 'code 'Chorionic' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation
Item: (RiskAssessment)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=100 and number(@value)&lt;=270))">(RiskAssessment): value MOET in bereik [100..270] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="@xsi:type">(RiskAssessment): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (BodyHeight)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (BodyHeight)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(BodyHeight): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(BodyHeight): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(BodyHeight): element hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BodyHeight): element hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BodyHeight)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="@nullFlavor or (@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')">(BodyHeight): de elementwaarde MOET een zijn van 'code '3137-7' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (BodyHeight)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='cm'))">(BodyHeight): value MOET eenheid 'cm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=270))">(BodyHeight): value MOET in bereik [0..270] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="@xsi:type">(BodyHeight): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation
Item: (RiskAssessment)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=25.0 and number(@value)&lt;=249.9))">(RiskAssessment): value MOET in bereik [25.0..249.9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="@xsi:type">(RiskAssessment): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (BodyWeight)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (BodyWeight)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(BodyWeight): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(BodyWeight): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(BodyWeight): element hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(BodyWeight): element hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BodyWeight)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="@nullFlavor or (@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')">(BodyWeight): de elementwaarde MOET een zijn van 'code '3141-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (BodyWeight)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='kg'))">(BodyWeight): value MOET eenheid 'kg' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=249.9))">(BodyWeight): value MOET in bereik [0..249.9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="@xsi:type">(BodyWeight): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (DiabetesTypeI)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (DiabetesTypeI)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(DiabetesTypeI): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(DiabetesTypeI): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(DiabetesTypeI): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(DiabetesTypeI): element hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(DiabetesTypeI): element hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(DiabetesTypeI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(DiabetesTypeI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id
Item: (DiabetesTypeI)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (DiabetesTypeI)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="@nullFlavor or (@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')">(DiabetesTypeI): de elementwaarde MOET een zijn van 'code '46635009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (DiabetesTypeI)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="@xsi:type">(DiabetesTypeI): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900859
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (IVFICSI)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900859
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (IVFICSI)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(IVFICSI): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(IVFICSI): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(IVFICSI): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="count(hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(IVFICSI): element hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="count(hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(IVFICSI): element hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(IVFICSI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(IVFICSI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900859
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id
Item: (IVFICSI)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900859
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (IVFICSI)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="@nullFlavor or (@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')">(IVFICSI): de elementwaarde MOET een zijn van 'code '52637005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900859
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (IVFICSI)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='52637005' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900859-2012-06-26T000000.html"
              test="@xsi:type">(IVFICSI): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (TrisomyInHistory)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (TrisomyInHistory)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(TrisomyInHistory): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(TrisomyInHistory): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(TrisomyInHistory): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(TrisomyInHistory): element hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(TrisomyInHistory): element hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (TrisomyInHistory)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (TrisomyInHistory)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="@nullFlavor or (@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(TrisomyInHistory): de elementwaarde MOET een zijn van 'code 'TrisomyAnam' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (TrisomyInHistory)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="@xsi:type">(TrisomyInHistory): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (TobaccoSmoker)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (TobaccoSmoker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(TobaccoSmoker): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(TobaccoSmoker): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(TobaccoSmoker): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(TobaccoSmoker): element hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(TobaccoSmoker): element hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(TobaccoSmoker): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(TobaccoSmoker): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id
Item: (TobaccoSmoker)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (TobaccoSmoker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="@nullFlavor or (@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')">(TobaccoSmoker): de elementwaarde MOET een zijn van 'code '77176002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (TobaccoSmoker)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="@xsi:type">(TobaccoSmoker): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900853
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (Ethnicgroup)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900853
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (Ethnicgroup)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Ethnicgroup): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Ethnicgroup): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Ethnicgroup): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="count(hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Ethnicgroup): element hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="count(hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Ethnicgroup): element hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Ethnicgroup): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Ethnicgroup): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900853
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:id
Item: (Ethnicgroup)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900853
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Ethnicgroup)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="@nullFlavor or (@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')">(Ethnicgroup): de elementwaarde MOET een zijn van 'code '42784-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900853
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Ethnicgroup)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='42784-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Ethnicgroup): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.3 EthnicGroup (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Ethnicgroup): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.3 EthnicGroup (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900853-2012-06-26T000000.html"
              test="@xsi:type">(Ethnicgroup): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900854
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (PAPPAconcentrationinmiul)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900854
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (PAPPAconcentrationinmiul)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(PAPPAconcentrationinmiul): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(PAPPAconcentrationinmiul): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(PAPPAconcentrationinmiul): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="count(hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(PAPPAconcentrationinmiul): element hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="count(hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(PAPPAconcentrationinmiul): element hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(PAPPAconcentrationinmiul): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(PAPPAconcentrationinmiul): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900854
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:id
Item: (PAPPAconcentrationinmiul)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900854
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (PAPPAconcentrationinmiul)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="@nullFlavor or (@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')">(PAPPAconcentrationinmiul): de elementwaarde MOET een zijn van 'code '32046-5' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900854
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (PAPPAconcentrationinmiul)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32046-5' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="(@nullFlavor or (@unit='m[iU]/l'))">(PAPPAconcentrationinmiul): value MOET eenheid 'm[iU]/l' gebruiken </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900854-2012-06-26T000000.html"
              test="@xsi:type">(PAPPAconcentrationinmiul): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900856
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (PAPPAconcentrationinmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900856
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (PAPPAconcentrationinmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(PAPPAconcentrationinmom): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(PAPPAconcentrationinmom): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(PAPPAconcentrationinmom): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="count(hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(PAPPAconcentrationinmom): element hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="count(hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(PAPPAconcentrationinmom): element hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(PAPPAconcentrationinmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(PAPPAconcentrationinmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900856
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:id
Item: (PAPPAconcentrationinmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900856
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (PAPPAconcentrationinmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="@nullFlavor or (@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')">(PAPPAconcentrationinmom): de elementwaarde MOET een zijn van 'code '32123-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900856
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (PAPPAconcentrationinmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32123-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="(@nullFlavor or (@unit='{MoM}'))">(PAPPAconcentrationinmom): value MOET eenheid '{MoM}' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{2,99}$'))))">(PAPPAconcentrationinmom): value MOET tot op minstens 2 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900856-2012-06-26T000000.html"
              test="@xsi:type">(PAPPAconcentrationinmom): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900850
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (Freebetahcginngml)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900850
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (Freebetahcginngml)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Freebetahcginngml): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Freebetahcginngml): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Freebetahcginngml): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="count(hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Freebetahcginngml): element hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="count(hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Freebetahcginngml): element hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Freebetahcginngml): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Freebetahcginngml): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900850
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:id
Item: (Freebetahcginngml)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900850
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Freebetahcginngml)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="@nullFlavor or (@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')">(Freebetahcginngml): de elementwaarde MOET een zijn van 'code '25373-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900850
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Freebetahcginngml)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='25373-2' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="(@nullFlavor or (@unit='ng/ml'))">(Freebetahcginngml): value MOET eenheid 'ng/ml' gebruiken </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900850-2012-06-26T000000.html"
              test="@xsi:type">(Freebetahcginngml): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900852
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (Freebetahcginmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900852
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (Freebetahcginmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Freebetahcginmom): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Freebetahcginmom): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Freebetahcginmom): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="count(hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Freebetahcginmom): element hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="count(hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Freebetahcginmom): element hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Freebetahcginmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Freebetahcginmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900852
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:id
Item: (Freebetahcginmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900852
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Freebetahcginmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="@nullFlavor or (@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')">(Freebetahcginmom): de elementwaarde MOET een zijn van 'code '32122-4' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900852
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Freebetahcginmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='32122-4' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="(@nullFlavor or (@unit='{MoM}'))">(Freebetahcginmom): value MOET eenheid '{MoM}' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{2,99}$'))))">(Freebetahcginmom): value MOET tot op minstens 2 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900852-2012-06-26T000000.html"
              test="@xsi:type">(Freebetahcginmom): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900855
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (PAPPAcorrectedconcentrationinmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900855
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (PAPPAcorrectedconcentrationinmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(PAPPAcorrectedconcentrationinmom): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(PAPPAcorrectedconcentrationinmom): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(PAPPAcorrectedconcentrationinmom): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(PAPPAcorrectedconcentrationinmom): element hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(PAPPAcorrectedconcentrationinmom): element hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(PAPPAcorrectedconcentrationinmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(PAPPAcorrectedconcentrationinmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900855
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (PAPPAcorrectedconcentrationinmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900855
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (PAPPAcorrectedconcentrationinmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="@nullFlavor or (@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(PAPPAcorrectedconcentrationinmom): de elementwaarde MOET een zijn van 'code 'CorrPAPPA' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900855
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (PAPPAcorrectedconcentrationinmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrPAPPA' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="(@nullFlavor or (@unit='{MoM}'))">(PAPPAcorrectedconcentrationinmom): value MOET eenheid '{MoM}' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{2,99}$'))))">(PAPPAcorrectedconcentrationinmom): value MOET tot op minstens 2 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900855-2012-06-26T000000.html"
              test="@xsi:type">(PAPPAcorrectedconcentrationinmom): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900851
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Freecorrectedbetahcginmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900851
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Freecorrectedbetahcginmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="string(@classCode)=('OBS')">(Freecorrectedbetahcginmom): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="string(@moodCode)=('EVN')">(Freecorrectedbetahcginmom): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="count(hl7:id)&lt;=1">(Freecorrectedbetahcginmom): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Freecorrectedbetahcginmom): element hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="count(hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Freecorrectedbetahcginmom): element hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Freecorrectedbetahcginmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Freecorrectedbetahcginmom): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900851
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Freecorrectedbetahcginmom)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900851
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Freecorrectedbetahcginmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="@nullFlavor or (@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Freecorrectedbetahcginmom): de elementwaarde MOET een zijn van 'code 'CorrFBhCG' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900851
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Freecorrectedbetahcginmom)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CorrFBhCG' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="(@nullFlavor or (@unit='{MoM}'))">(Freecorrectedbetahcginmom): value MOET eenheid '{MoM}' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{2,99}$'))))">(Freecorrectedbetahcginmom): value MOET tot op minstens 2 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900851-2012-06-26T000000.html"
              test="@xsi:type">(Freecorrectedbetahcginmom): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1">(RiskAssessment): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1">(RiskAssessment): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation/hl7:effectiveTime[not(@nullFlavor)]
Item: (RiskAssessment)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (NuchalTranslucencyinmm)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(NuchalTranslucencyinmm): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(NuchalTranslucencyinmm): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(NuchalTranslucencyinmm): element hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(NuchalTranslucencyinmm): element hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:effectiveTime)&lt;=1">(NuchalTranslucencyinmm): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(NuchalTranslucencyinmm): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(NuchalTranslucencyinmm): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="@nullFlavor or (@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')">(NuchalTranslucencyinmm): de elementwaarde MOET een zijn van 'code '12146-7' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:effectiveTime
Item: (NuchalTranslucencyinmm)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900531
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (NuchalTranslucencyinmm)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='12146-7' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='mm'))">(NuchalTranslucencyinmm): value MOET eenheid 'mm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{1,99}$'))))">(NuchalTranslucencyinmm): value MOET tot op minstens 1 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900531-2011-01-28T000000.html"
              test="@xsi:type">(NuchalTranslucencyinmm): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (NuchalTranslucencyinMoM)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (NuchalTranslucencyinMoM)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(NuchalTranslucencyinMoM): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(NuchalTranslucencyinMoM): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(NuchalTranslucencyinMoM): element hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(NuchalTranslucencyinMoM): element hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(NuchalTranslucencyinMoM): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(NuchalTranslucencyinMoM): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (NuchalTranslucencyinMoM)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="@nullFlavor or (@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')">(NuchalTranslucencyinMoM): de elementwaarde MOET een zijn van 'code '49035-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900532
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (NuchalTranslucencyinMoM)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='49035-9' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='{MoM}'))">(NuchalTranslucencyinMoM): value MOET eenheid '{MoM}' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="(@nullFlavor or ((matches(string(@value), '^[-+]?[0-9]*\.[0-9]{2,99}$'))))">(NuchalTranslucencyinMoM): value MOET tot op minstens 2 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900532-2011-01-28T000000.html"
              test="@xsi:type">(NuchalTranslucencyinMoM): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CrownBodyLength)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900820-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')">(CrownBodyLength): de elementwaarde MOET een zijn van 'code '11957-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900820
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (CrownBodyLength)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11957-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900863
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (RiskAssessment)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@typeCode)=('COMP')">(RiskAssessment): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900863-2012-07-09T000000.html"
              test="string(@contextConductionInd)=('true')">(RiskAssessment): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (BiparitalDiameter)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900821-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')">(BiparitalDiameter): de elementwaarde MOET een zijn van 'code '11820-8' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900821
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (BiparitalDiameter)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.3']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='5' and @codeSystem='2.16.840.1.113883.2.4.4.13.38')]]/hl7:entryRelationship[hl7:organizer][not(@nullFlavor)]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][not(@nullFlavor)]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11820-8' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
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
