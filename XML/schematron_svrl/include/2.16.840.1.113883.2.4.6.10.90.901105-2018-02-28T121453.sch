<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901105
Name: Indicatie primaire sectio
Description: Template: Indicatie primaire sectio caesarea
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453">
   <title>Indicatie primaire sectio</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]
Item: (IndicatiePrimSC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]
Item: (IndicatiePrimSC)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]"
         id="d19e51260-false-d343669e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="string(@classCode)=('OBS')">(IndicatiePrimSC): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="string(@moodCode)=('EVN')">(IndicatiePrimSC): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(IndicatiePrimSC): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="not(exists(@nullFlavor)) or not(exists(hl7:value/@code))">(IndicatiePrimSC): Wanneer er geen informatie over de indicatie sectio is (de observation heeft een @nullFlavor) kan er ook geen waarde voor indicatie opgenomen worden (de observation/value heeft een @code).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105'])&gt;=1">(IndicatiePrimSC): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105'])&lt;=1">(IndicatiePrimSC): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1">(IndicatiePrimSC): element hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1">(IndicatiePrimSC): element hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(IndicatiePrimSC): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']
Item: (IndicatiePrimSC)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']"
         id="d19e51276-false-d343721e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IndicatiePrimSC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901105')">(IndicatiePrimSC): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901105' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]
Item: (IndicatiePrimSC)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]"
         id="d19e51285-false-d343737e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IndicatiePrimSC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="@nullFlavor or (@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(IndicatiePrimSC): de elementwaarde MOET een zijn van 'code 'SectioCaeInd' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IndicatiePrimSC)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d19e51296-false-d343758e0">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(IndicatiePrimSC): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.220 SC Indicatie - primaire sectio (2018-02-28T11:58:05)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2018-02-28T115805.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IndicatiePrimSC): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.220 SC Indicatie - primaire sectio (2018-02-28T11:58:05).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="@xsi:type">(IndicatiePrimSC): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
