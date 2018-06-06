<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901107
Name: Type partus
Description: Template:  Type partus 
            
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810">
   <title>Type partus</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]
Item: (TypePartus23)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]
Item: (TypePartus23)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]"
         id="d14e51460-false-d412232e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="string(@classCode)=('OBS')">(TypePartus23): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="string(@moodCode)=('EVN')">(TypePartus23): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107'])&gt;=1">(TypePartus23): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107'])&lt;=1">(TypePartus23): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(TypePartus23): element hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(TypePartus23): element hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(TypePartus23): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(TypePartus23): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']
Item: (TypePartus23)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']"
         id="d14e51466-false-d412281e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TypePartus23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901107')">(TypePartus23): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901107' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (TypePartus23)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:code[(@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="d14e51471-false-d412297e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TypePartus23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="@nullFlavor or (@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')">(TypePartus23): de elementwaarde MOET een zijn van 'code '364336006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code]
Item: (TypePartus23)
-->

   <rule context="*[hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d14e51476-false-d412317e0">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(TypePartus23): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.182 TypePartus (2016-11-22T14:00:45)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(TypePartus23): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.182 TypePartus (2016-11-22T14:00:45).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(TypePartus23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
