<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901091
Name: Intra-uteriene vruchtdood en methode
Description: Template: Vermoeden intra-uteriene vruchtdood met methode waarop dit gebaseerd is.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029">
   <title>Intra-uteriene vruchtdood en methode</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]
Item: (IUVDMetObv)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]"
         id="d19e49051-false-d319743e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@classCode)=('OBS')">(IUVDMetObv): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@moodCode)=('EVN')">(IUVDMetObv): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091'])&gt;=1">(IUVDMetObv): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091'])&lt;=1">(IUVDMetObv): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:code[(@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(IUVDMetObv): element hl7:code[(@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:code[(@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(IUVDMetObv): element hl7:code[(@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:uncertaintyCode[(@code='U' and @codeSystem='2.16.840.1.113883.5.1053') or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&gt;=1">(IUVDMetObv): element hl7:uncertaintyCode[(@code='U' and @codeSystem='2.16.840.1.113883.5.1053') or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:uncertaintyCode[(@code='U' and @codeSystem='2.16.840.1.113883.5.1053') or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])&lt;=1">(IUVDMetObv): element hl7:uncertaintyCode[(@code='U' and @codeSystem='2.16.840.1.113883.5.1053') or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(IUVDMetObv): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(IUVDMetObv): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:outboundRelationship[@typeCode='PERT'])&lt;=1">(IUVDMetObv): element hl7:outboundRelationship[@typeCode='PERT'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']"
         id="d19e49057-false-d319811e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901091')">(IUVDMetObv): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901091' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:code[(@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:code[(@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="d19e49062-false-d319827e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@nullFlavor or (@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')">(IUVDMetObv): de elementwaarde MOET een zijn van 'code '59291004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:uncertaintyCode[(@code='U' and @codeSystem='2.16.840.1.113883.5.1053') or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:uncertaintyCode[(@code='U' and @codeSystem='2.16.840.1.113883.5.1053') or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]"
         id="d19e49067-false-d319847e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(IUVDMetObv): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.52 UncertaintyCode 2 (2013-03-20T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IUVDMetObv): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.52 UncertaintyCode 2 (2013-03-20T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@code)=('U')">(IUVDMetObv): de waarde van @code MOET 'U' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@codeSystem)=('2.16.840.1.113883.5.1053')">(IUVDMetObv): de waarde van @codeSystem MOET '2.16.840.1.113883.5.1053' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(IUVDMetObv): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]"
         id="d19e49088-false-d319882e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@xsi:type">(IUVDMetObv): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(IUVDMetObv): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']"
         id="d19e49100-false-d319898e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@typeCode)=('PERT')">(IUVDMetObv): de waarde van @typeCode MOET 'PERT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)])&gt;=1">(IUVDMetObv): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)])&lt;=1">(IUVDMetObv): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)]
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)]"
         id="d19e49107-false-d319919e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@classCode)=('PROC')">(IUVDMetObv): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@moodCode)=('EVN')">(IUVDMetObv): de waarde van @moodCode MOET 'EVN' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)]/hl7:id
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)]/hl7:id"
         id="d19e49113-false-d319945e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(IUVDMetObv): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IUVDMetObv)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[@typeCode='PERT']/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][not(@nullFlavor)]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d19e49122-false-d319959e0">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(IUVDMetObv): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.223 IUVD methode (2016-12-02T16:23:49)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IUVDMetObv): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.223 IUVD methode (2016-12-02T16:23:49).</assert>
   </rule>
</pattern>
