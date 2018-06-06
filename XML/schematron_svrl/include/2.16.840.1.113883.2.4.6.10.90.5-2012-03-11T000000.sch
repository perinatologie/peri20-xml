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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]"
         id="d19e3877-false-d37718e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code='NL'])&gt;=1">(cda-guo): element hl7:realmCode[@code='NL'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:realmCode[@code='NL'])&lt;=1">(cda-guo): element hl7:realmCode[@code='NL'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'])&gt;=1">(cda-guo): element hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'])&lt;=1">(cda-guo): element hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5'])&gt;=1">(cda-guo): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5'])&lt;=1">(cda-guo): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&gt;=1">(cda-guo): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:id[not(@nullFlavor)])&lt;=1">(cda-guo): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(cda-guo): element hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(cda-guo): element hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:title)&lt;=1">(cda-guo): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&gt;=1">(cda-guo): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)])&lt;=1">(cda-guo): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(cda-guo): element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(cda-guo): element hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)])&gt;=1">(cda-guo): element hl7:languageCode[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:languageCode[not(@nullFlavor)])&lt;=1">(cda-guo): element hl7:languageCode[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:setId)&lt;=1">(cda-guo): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:versionNumber)&lt;=1">(cda-guo): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)])&gt;=1">(cda-guo): element hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)])&lt;=1">(cda-guo): element hl7:recordTarget[@typeCode='RCT'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:author[@typeCode='AUT'][not(@nullFlavor)])&gt;=1">(cda-guo): element hl7:author[@typeCode='AUT'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:custodian[@typeCode='CST'][not(@nullFlavor)])&gt;=1">(cda-guo): element hl7:custodian[@typeCode='CST'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:custodian[@typeCode='CST'][not(@nullFlavor)])&lt;=1">(cda-guo): element hl7:custodian[@typeCode='CST'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900800
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:realmCode[@code='NL']
Item: (CDArealmCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:realmCode[@code='NL']"
         id="d37714e100-false-d38042e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040']
Item: (CDAtypeId)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:typeId[@root='2.16.840.1.113883.1.3'][@extension='POCD_HD000040']"
         id="d38043e31-false-d38061e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']"
         id="d19e3887-false-d38081e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-guo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.5')">(cda-guo): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.5' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900802
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:id[not(@nullFlavor)]
Item: (CDAid)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:id[not(@nullFlavor)]"
         id="d38082e21-false-d38097e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900802-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:code[(@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')]"
         id="d19e3902-false-d38109e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(cda-guo): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="@nullFlavor or (@code='11525-3' and @codeSystem='2.16.840.1.113883.6.1')">(cda-guo): de elementwaarde MOET een zijn van 'code '11525-3' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900803
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:title
Item: (CDAtitle)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:title"
         id="d38110e18-false-d38127e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900803-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAtitle): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900804
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAeffectiveTime)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d38128e16-false-d38139e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (CDAconfidentialityCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:confidentialityCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.140-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d38140e17-false-d38157e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:languageCode[not(@nullFlavor)]
Item: (CDAlanguageCode)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:languageCode[not(@nullFlavor)]"
         id="d38158e18-false-d38180e0">
      <extends rule="CS.LANG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900806-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAlanguageCode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:setId
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:setId"
         id="d38181e25-false-d38192e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900807-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAsetIdversionNumber): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900807
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:versionNumber
Item: (CDAsetIdversionNumber)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:versionNumber"
         id="d38181e27-false-d38203e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']"
         id="d38204e67-false-d38238e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]"
         id="d38204e146-false-d38288e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id"
         id="d38284e61-false-d38351e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:id"
         id="d38204e154-false-d38366e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900808-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDArecordTarget): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr"
         id="d38204e160-false-d38380e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:streetName"
         id="d38377e333-false-d38476e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:houseNumber"
         id="d38377e345-false-d38487e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:buildingNumberSuffix"
         id="d38377e358-false-d38498e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:additionalLocator"
         id="d38377e400-false-d38509e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:postalCode"
         id="d38377e412-false-d38527e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:county
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:county"
         id="d38377e433-false-d38540e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:city
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:city"
         id="d38377e439-false-d38551e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:country
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:country"
         id="d38377e445-false-d38562e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ADXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:unitID"
         id="d38377e479-false-d38575e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:addr/hl7:useablePeriod"
         id="d38377e491-false-d38586e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'tel:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d38204e172-false-d38595e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d38204e177-false-d38631e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d38204e182-false-d38677e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d38204e186-false-d38727e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (PN.NL)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='BR']"
         id="d38723e307-false-d38837e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='CL']"
         id="d38723e323-false-d38854e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[@qualifier='IN']"
         id="d38723e339-false-d38871e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:given[not(@qualifier)]"
         id="d38723e355-false-d38888e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[not(@qualifier)]"
         id="d38723e362-false-d38897e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[not(@qualifier)]"
         id="d38723e368-false-d38906e0">
      <extends rule="ENXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ENXP' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ENXP" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.100
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']]"
         id="d38723e374-false-d38915e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='BR']"
         id="d38723e394-false-d38932e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:delimiter"
         id="d38723e410-false-d38951e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']]"
         id="d38723e430-false-d38964e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:family[@qualifier='SP']"
         id="d38723e451-false-d38981e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:suffix"
         id="d38723e467-false-d39000e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime
Item: (PN.NL)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/hl7:validTime"
         id="d38723e496-false-d39019e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.100-2017-06-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(PN.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900808
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d38204e194-false-d39033e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (CDArecordTarget)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:recordTarget[@typeCode='RCT']/hl7:patientRole[@classCode='PAT'][not(@nullFlavor)]/hl7:patient[@classCode='PSN'][hl7:administrativeGenderCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2015-04-01T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d38204e199-false-d39055e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]"
         id="d39056e17-false-d39073e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:time
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:time"
         id="d39056e130-false-d39107e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d39056e133-false-d39124e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d39056e139-false-d39202e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d39056e146-false-d39222e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2']"
         id="d39056e153-false-d39242e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d39056e161-false-d39264e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']"
         id="d39056e168-false-d39286e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:assignedPerson[@classCode='PSN']/hl7:name[not(@nullFlavor)]"
         id="d39056e174-false-d39311e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']"
         id="d39056e177-false-d39325e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d39322e24-false-d39385e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d39056e187-false-d39397e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1']"
         id="d39056e193-false-d39413e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d39056e198-false-d39429e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:name[not(@nullFlavor)]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/hl7:name[not(@nullFlavor)]"
         id="d39056e203-false-d39444e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900809-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAauthor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900809
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAauthor)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:author[@typeCode='AUT'][not(@nullFlavor)]/hl7:assignedAuthor[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG']/peri:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d39056e205-false-d39458e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]"
         id="d39459e18-false-d39481e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d39459e68-false-d39502e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]"
         id="d39459e72-false-d39523e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:id[not(@nullFlavor)]
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:id[not(@nullFlavor)]"
         id="d39459e78-false-d39562e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:name
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:name"
         id="d39459e80-false-d39573e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900810
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:addr
Item: (CDAcustodian)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:custodian[@typeCode='CST'][not(@nullFlavor)]/hl7:assignedCustodian[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedCustodianOrganization[@classCode='ORG'][not(@nullFlavor)]/hl7:addr"
         id="d39459e82-false-d39584e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900810-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAcustodian): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient"
         id="d39585e13-false-d39596e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]"
         id="d39585e71-false-d39633e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:informationRecipient[@classCode='PSN']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:informationRecipient[@classCode='PSN']"
         id="d39585e75-false-d39658e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@classCode)=('PSN')">(CDAinformationRecipient): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900811-2012-03-11T000000.html"
              test="string(@determinerCode)=('INSTANCE')">(CDAinformationRecipient): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900811
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']"
         id="d39585e82-false-d39673e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']
Item: (CDAinformationRecipient)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:informationRecipient/hl7:intendedRecipient[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:receivedOrganization[@classCode='ORG']/hl7:id[@root='2.16.528.1.1007.3.3']"
         id="d39585e88-false-d39697e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:authenticator[@typeCode='AUTHEN']
Item: (CDAauthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:authenticator[@typeCode='AUTHEN']"
         id="d39698e17-false-d39717e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900812-2012-03-11T000000.html"
              test="string(@typeCode)=('AUTHEN')">(CDAauthenticator): de waarde van @typeCode MOET 'AUTHEN' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900813
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:legalAuthenticator[@typeCode='LA']
Item: (CDlegalAuthenticator)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:legalAuthenticator[@typeCode='LA']"
         id="d39722e8-false-d39729e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@typeCode)=('LA')">(CDlegalAuthenticator): de waarde van @typeCode MOET 'LA' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900813-2012-03-11T000000.html"
              test="string(@contextControlCode)=('OP')">(CDlegalAuthenticator): de waarde van @contextControlCode MOET 'OP' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900814
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:relatedDocument[@typeCode='RPLC']
Item: (CDArelatedDocument)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:relatedDocument[@typeCode='RPLC']"
         id="d39738e10-false-d39745e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900814-2012-03-11T000000.html"
              test="string(@typeCode)=('RPLC')">(CDArelatedDocument): de waarde van @typeCode MOET 'RPLC' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]"
         id="d39750e8-false-d39760e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]"
         id="d39750e141-false-d39787e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:id"
         id="d39750e147-false-d39845e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d39750e149-false-d39859e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:effectiveTime[not(@nullFlavor)]"
         id="d39750e156-false-d39881e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]"
         id="d39750e159-false-d39898e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]"
         id="d39750e163-false-d39925e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.528.1.1007.3.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.528.1.1007.3.1']"
         id="d39750e169-false-d40002e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:id[@root='2.16.840.1.113883.2.4.6.1']"
         id="d39750e176-false-d40022e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]"
         id="d39750e184-false-d40044e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:addr"
         id="d39750e191-false-d40066e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:telecom
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:telecom"
         id="d39750e193-false-d40077e0">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']"
         id="d39750e196-false-d40088e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode='PSN']/hl7:name"
         id="d39750e202-false-d40110e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']"
         id="d39750e205-false-d40121e0">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@nullFlavor)]
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:id[not(@nullFlavor)]"
         id="d39750e211-false-d40157e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:name
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:name"
         id="d39750e213-false-d40168e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900815
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:addr
Item: (CDAdocumentationOf)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:documentationOf[@typeCode='DOC'][hl7:serviceEvent[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:serviceEvent[@classCode='OBS'][@moodCode='EVN'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.73-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:performer[@typeCode='PRF'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]]/hl7:representedOrganization[@classCode='ORG']/hl7:addr"
         id="d39750e215-false-d40179e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900815-2012-03-11T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAdocumentationOf): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']"
         id="d19e3975-false-d40219e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-guo): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-guo): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'])&gt;=1">(cda-guo): element hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'])&lt;=1">(cda-guo): element hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']
Item: (cda-guo)
-->

   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']"
         id="d19e3986-false-d40301e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@classCode)=('DOCBODY')">(cda-guo): de waarde van @classCode MOET 'DOCBODY' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@moodCode)=('EVN')">(cda-guo): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(cda-guo): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(cda-guo): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(cda-guo): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=9">(cda-guo): element hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 9x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (cda-guo)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-guo): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-guo): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAPregnancyInformationSection2): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAPregnancyInformationSection2): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:title)&gt;=1">(CDAPregnancyInformationSection2): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:title)&lt;=1">(CDAPregnancyInformationSection2): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:text)&gt;=1">(CDAPregnancyInformationSection2): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:text)&lt;=1">(CDAPregnancyInformationSection2): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAPregnancyInformationSection2): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAPregnancyInformationSection2): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationSection2): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="text()='Zwangerschap'">(CDAPregnancyInformationSection2): de element content van hl7:title MOET ''Zwangerschap'' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAPregnancyInformationSection2)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900826
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationSection2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <extends rule="d40397e66-false-d40592e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@typeCode)=('DRIV')">(CDAPregnancyInformationSection2): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900826-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationSection2): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule id="d40397e66-false-d40592e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@classCode)=('CLUSTER')">(CDAPregnancyInformationEntry2): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@moodCode)=('EVN')">(CDAPregnancyInformationEntry2): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:statusCode[@code='completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAPregnancyInformationEntry2): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="@nullFlavor or (@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')">(CDAPregnancyInformationEntry2): de elementwaarde MOET een zijn van 'code '11449-6' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAPregnancyInformationEntry2): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry2): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry2): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Graviditeit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry2): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry2): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(HoeveellingMax): de elementwaarde MOET een zijn van 'code 'NFetusMax' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (HoeveellingMax)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(HoeveellingMax): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@xsi:type">(HoeveellingMax): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry2): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry2): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Actueleaantalfoetus)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))">(Actueleaantalfoetus): value MOET in bereik [0..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@xsi:type">(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry2): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry2): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDCDA): de elementwaarde MOET een zijn van 'code 'EDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:effectiveTime
Item: (EDDCDA)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="@xsi:type">(EDDCDA): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900824
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode)=('SPRT')">(EDDCDA): de waarde van @typeCode MOET 'SPRT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDBasis): de elementwaarde MOET een zijn van 'code 'EDDBasedOn' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EDDBasis)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDCDA)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900824-2012-08-01T000000.html"
              test="string(@typeCode)=('SPRT')">(EDDCDA): de waarde van @typeCode MOET 'SPRT' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (ActualEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@nullFlavor or (@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ActualEDD): de elementwaarde MOET een zijn van 'code 'ActualEDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (ActualEDD)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[@classCode='OBS'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS']/hl7:entryRelationship[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@xsi:type">(ActualEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900827
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAPregnancyInformationEntry2)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAPregnancyInformationEntry2): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900827-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAPregnancyInformationEntry2): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Chorioniciteit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900087-2009-10-01T000000.html"
              test="@nullFlavor or (@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Chorioniciteit): de elementwaarde MOET een zijn van 'code 'Chorionic' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900087
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Chorioniciteit)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='11449-6' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Chorionic' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.5
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (cda-guo)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@typeCode)=('COMP')">(cda-guo): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.5-2012-03-11T000000.html"
              test="string(@contextConductionInd)=('true')">(cda-guo): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionGUO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:title)&gt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:title is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:title)&lt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:title komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:text)&gt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:text)&lt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="count(hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationSectionGUO): element hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationSectionGUO): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:title">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="text()='Foetusspecifiek'">(CDAFetusSpecificInformationSectionGUO): de element content van hl7:title MOET ''Foetusspecifiek'' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:text
Item: (CDAFetusSpecificInformationSectionGUO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900834
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationSectionGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <extends rule="d41659e74-false-d41838e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="string(@typeCode)=('DRIV')">(CDAFetusSpecificInformationSectionGUO): de waarde van @typeCode MOET 'DRIV' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900834-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationSectionGUO): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule id="d41659e74-false-d41838e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]])&gt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]])&lt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@classCode)=('CLUSTER')">(CDAFetusSpecificInformationEntryGUO): de waarde van @classCode MOET 'CLUSTER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@moodCode)=('EVN')">(CDAFetusSpecificInformationEntryGUO): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&gt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:statusCode[@code='completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:statusCode[@code='completed'])&lt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:statusCode[@code='completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)])&gt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:participant[@typeCode='SBJ'][not(@nullFlavor)])&lt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:participant[@typeCode='SBJ'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&gt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]])&lt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&gt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])&lt;=1">(CDAFetusSpecificInformationEntryGUO): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="@nullFlavor or (@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')">(CDAFetusSpecificInformationEntryGUO): de elementwaarde MOET een zijn van 'code '12130-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:statusCode[@code='completed']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="@nullFlavor or (@code='completed')">(CDAFetusSpecificInformationEntryGUO): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900832
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (CDAFetusParticipant)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:participant[@typeCode='SBJ']/hl7:participantRole[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAFetusParticipant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900832-2012-03-10T000000.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(CDAFetusParticipant): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryGUO): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryGUO): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]">
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
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900402-2011-01-28T000000.html"
              test="@nullFlavor or (@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')">(Foetusvolgletterzoalsantepartumgehanteerd): de elementwaarde MOET een zijn van 'code '11951-1' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900402
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Foetusvolgletterzoalsantepartumgehanteerd)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='11951-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryGUO): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryGUO): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (Algehelebeoordeling)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="string(@classCode)=('OBS')">(Algehelebeoordeling): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="string(@moodCode)=('EVN')">(Algehelebeoordeling): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Algehelebeoordeling): element hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Algehelebeoordeling): element hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&gt;=1">(Algehelebeoordeling): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(Algehelebeoordeling): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="@nullFlavor or (@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Algehelebeoordeling): de elementwaarde MOET een zijn van 'code 'GlobFind' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900537
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (Algehelebeoordeling)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GlobFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.75-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Algehelebeoordeling): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.75 GlobalFindings (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900537-2011-01-28T000000.html"
              test="@xsi:type">(Algehelebeoordeling): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900833
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (CDAFetusSpecificInformationEntryGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@typeCode)=('COMP')">(CDAFetusSpecificInformationEntryGUO): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900833-2012-03-10T000000.html"
              test="string(@contextConductionInd)=('true')">(CDAFetusSpecificInformationEntryGUO): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (AfwijkendebevindingentypeGUO)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="string(@classCode)=('OBS')">(AfwijkendebevindingentypeGUO): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="string(@moodCode)=('EVN')">(AfwijkendebevindingentypeGUO): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(AfwijkendebevindingentypeGUO): element hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(AfwijkendebevindingentypeGUO): element hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(peri:uncertaintyCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(AfwijkendebevindingentypeGUO): element peri:uncertaintyCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(peri:uncertaintyCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(AfwijkendebevindingentypeGUO): element peri:uncertaintyCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&gt;=1">(AfwijkendebevindingentypeGUO): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(AfwijkendebevindingentypeGUO): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="@nullFlavor or (@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(AfwijkendebevindingentypeGUO): de elementwaarde MOET een zijn van 'code 'GUOFind' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900561
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (WaarschijnlijkheidafwbevindtypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/peri:uncertaintyCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900561-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(WaarschijnlijkheidafwbevindtypeGUO): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900561-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(WaarschijnlijkheidafwbevindtypeGUO): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.50 UncertaintyCode (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900561-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(WaarschijnlijkheidafwbevindtypeGUO): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.50 UncertaintyCode (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900542
Context: /hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (AfwijkendebevindingentypeGUO)
-->
   <rule context="/hl7:ClinicalDocument[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.5']]/hl7:component[@typeCode='COMP']/hl7:structuredBody[@classCode='DOCBODY'][@moodCode='EVN']/hl7:component[@typeCode='COMP'][hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:section[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:entry[@typeCode='DRIV'][hl7:organizer[hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:organizer[@classCode='CLUSTER'][@moodCode='EVN'][hl7:code[(@code='12130-1' and @codeSystem='2.16.840.1.113883.6.1')]]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='GUOFind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.147-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(AfwijkendebevindingentypeGUO): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.147 AUSFindings (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900542-2012-08-01T000000.html"
              test="@xsi:type">(AfwijkendebevindingentypeGUO): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
