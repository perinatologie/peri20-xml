<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901106
Name: Section caesarea
Description: Template: Sectio caesarea
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344">
   <title>Section caesarea</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]
Item: (Sectiocaesarea23)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]
Item: (Sectiocaesarea23)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]"
         id="d14e51360-false-d411781e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@classCode)=('PROC')">(Sectiocaesarea23): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@moodCode)=('EVN')">(Sectiocaesarea23): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Sectiocaesarea23): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(Sectiocaesarea23): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="not(@negationInd='true' and @nullFlavor)">(Sectiocaesarea23): nullFlavor niet gebruiken wanneer negationInd="true".</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106'])&gt;=1">(Sectiocaesarea23): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106'])&lt;=1">(Sectiocaesarea23): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:id)&gt;=1">(Sectiocaesarea23): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:id)&lt;=1">(Sectiocaesarea23): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Sectiocaesarea23): element hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Sectiocaesarea23): element hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="count(hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]])&lt;=1">(Sectiocaesarea23): element hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']
Item: (Sectiocaesarea23)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']"
         id="d14e51378-false-d411857e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sectiocaesarea23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901106')">(Sectiocaesarea23): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901106' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:id
Item: (Sectiocaesarea23)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:id"
         id="d14e51387-false-d411873e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sectiocaesarea23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@nullFlavor)=('NI') or not(@nullFlavor)">(Sectiocaesarea23): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Sectiocaesarea23)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:code[(@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="d14e51396-false-d411889e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Sectiocaesarea23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="@nullFlavor or (@code='11466000' and @codeSystem='2.16.840.1.113883.6.96')">(Sectiocaesarea23): de elementwaarde MOET een zijn van 'code '11466000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]
Item: (Sectiocaesarea23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@typeCode)=('FLFS')">(Sectiocaesarea23): de waarde van @typeCode MOET 'FLFS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="not(exists(hl7:observation/hl7:value/@code)) or ../../../hl7:outboundRelationship/hl7:observation[hl7:code/@code='364336006']/hl7:value/@code='274130007'">(Sectiocaesarea23): Beslismoment sectio alleen van toepassing wanneer type partus een secundaire sectio is.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900278
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]
Item: (Beslismomentsectiocaesarea)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900278
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]
Item: (Beslismomentsectiocaesarea)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="string(@classCode)=('OBS')">(Beslismomentsectiocaesarea): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="string(@moodCode)=('EVN')">(Beslismomentsectiocaesarea): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(Beslismomentsectiocaesarea): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="not(exists(@nullFlavor)) or not(exists(hl7:value/@code))">(Beslismomentsectiocaesarea): Wanneer er geen informatie over het beslismoment van de sectio is (de observation heeft een @nullFlavor) kan er ook geen waarde voor beslismoment opgenomen worden (de observation/value heeft een @code).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278'])&gt;=1">(Beslismomentsectiocaesarea): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278'])&lt;=1">(Beslismomentsectiocaesarea): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="count(hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Beslismomentsectiocaesarea): element hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="count(hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Beslismomentsectiocaesarea): element hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Beslismomentsectiocaesarea): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900278
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']
Item: (Beslismomentsectiocaesarea)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900278')">(Beslismomentsectiocaesarea): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900278' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900278
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]/hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Beslismomentsectiocaesarea)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]/hl7:code[(@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="@nullFlavor or (@code='SectioBeslisMoment' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Beslismomentsectiocaesarea): de elementwaarde MOET een zijn van 'code 'SectioBeslisMoment' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900278
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Beslismomentsectiocaesarea)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='FLFS'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900278']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Beslismomentsectiocaesarea): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.38 BesluitSC (2014-11-06T15:34:16)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.38-2014-11-06T153416.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900278-2016-12-15T134825.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Beslismomentsectiocaesarea): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.38 BesluitSC (2014-11-06T15:34:16).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]
Item: (Sectiocaesarea23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901105']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@typeCode)=('RSON')">(Sectiocaesarea23): de waarde van @typeCode MOET 'RSON' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901106
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]
Item: (Sectiocaesarea23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.html"
              test="string(@typeCode)=('RSON')">(Sectiocaesarea23): de waarde van @typeCode MOET 'RSON' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901090
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]
Item: (IndicatieSCSec)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901090
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]
Item: (IndicatieSCSec)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="string(@classCode)=('OBS')">(IndicatieSCSec): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="string(@moodCode)=('EVN')">(IndicatieSCSec): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(IndicatieSCSec): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="not(exists(@nullFlavor)) or not(exists(hl7:value/@code))">(IndicatieSCSec): Wanneer er geen informatie over de indicatie sectio is (de observation heeft een @nullFlavor) kan er ook geen waarde voor indicatie opgenomen worden (de observation/value heeft een @code).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090'])&gt;=1">(IndicatieSCSec): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090'])&lt;=1">(IndicatieSCSec): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="count(hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1">(IndicatieSCSec): element hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="count(hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1">(IndicatieSCSec): element hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(IndicatieSCSec): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901090
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']
Item: (IndicatieSCSec)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901090')">(IndicatieSCSec): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901090' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901090
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]/hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]
Item: (IndicatieSCSec)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]/hl7:code[(@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="@nullFlavor or (@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(IndicatieSCSec): de elementwaarde MOET een zijn van 'code 'SectioCaeInd' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901090
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IndicatieSCSec)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901090']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(IndicatieSCSec): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.219 Indicatie secundaire sectio (2016-11-24T11:33:09)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.219-2016-11-24T113309.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IndicatieSCSec): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.219 Indicatie secundaire sectio (2016-11-24T11:33:09).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901090-2016-12-20T000000.html"
              test="@xsi:type">(IndicatieSCSec): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
