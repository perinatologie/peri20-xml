<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901096
Name: Reden verwijzing (obstetrische anamnese)
Description: Reden verwijzing (obstetrische anamnese)
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713">
   <title>Reden verwijzing (obstetrische anamnese)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]
Item: (RedenVerwObsAn233)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]
Item: (RedenVerwObsAn233)
-->

   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]"
         id="d19e50011-false-d323143e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@classCode)=('CONTAINER')">(RedenVerwObsAn233): de waarde van @classCode MOET 'CONTAINER' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@moodCode)=('EVN')">(RedenVerwObsAn233): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096'])&gt;=1">(RedenVerwObsAn233): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096'])&lt;=1">(RedenVerwObsAn233): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(RedenVerwObsAn233): element hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(RedenVerwObsAn233): element hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="count(hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]])&lt;=1">(RedenVerwObsAn233): element hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']
Item: (RedenVerwObsAn233)
-->

   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']"
         id="d19e50029-false-d323321e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwObsAn233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901096')">(RedenVerwObsAn233): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901096' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (RedenVerwObsAn233)
-->

   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:code[(@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')]"
         id="d19e50034-false-d323337e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RedenVerwObsAn233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="@nullFlavor or (@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')">(RedenVerwObsAn233): de elementwaarde MOET een zijn van 'code '248983002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (Gynaecologischeaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@classCode)=('OBS')">(Gynaecologischeaandoening): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@moodCode)=('EVN')">(Gynaecologischeaandoening): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Gynaecologischeaandoening): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Gynaecologischeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954'])&gt;=1">(Gynaecologischeaandoening): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954'])&lt;=1">(Gynaecologischeaandoening): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Gynaecologischeaandoening): element hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Gynaecologischeaandoening): element hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Gynaecologischeaandoening): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900954')">(Gynaecologischeaandoening): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900954' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or (@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van 'code '310789003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Gynaecologischeaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Gynaecologischeaandoening): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@xsi:type">(Gynaecologischeaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]
Item: (Bloedverlies)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]
Item: (Bloedverlies)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@classCode)=('OBS')">(Bloedverlies): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@moodCode)=('EVN')">(Bloedverlies): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967'])&gt;=1">(Bloedverlies): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967'])&lt;=1">(Bloedverlies): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Bloedverlies): element hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Bloedverlies): element hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Bloedverlies): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Bloedverlies): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']
Item: (Bloedverlies)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900967')">(Bloedverlies): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900967' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Bloedverlies)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:code[(@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="@nullFlavor or (@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')">(Bloedverlies): de elementwaarde MOET een zijn van 'code '131148009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Bloedverlies)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="@xsi:type">(Bloedverlies): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]
Item: (Partielemola)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]
Item: (Partielemola)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="string(@classCode)=('OBS')">(Partielemola): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="string(@moodCode)=('EVN')">(Partielemola): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005'])&gt;=1">(Partielemola): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005'])&lt;=1">(Partielemola): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Partielemola): element hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Partielemola): element hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Partielemola): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Partielemola): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']
Item: (Partielemola)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901005')">(Partielemola): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901005' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Partielemola)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:code[(@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="@nullFlavor or (@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Partielemola): de elementwaarde MOET een zijn van 'code 'MolaPartieelIntacteZw' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Partielemola)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="@xsi:type">(Partielemola): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]
Item: (Cervixinsufficientie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]
Item: (Cervixinsufficientie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@classCode)=('OBS')">(Cervixinsufficientie): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@moodCode)=('EVN')">(Cervixinsufficientie): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968'])&gt;=1">(Cervixinsufficientie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968'])&lt;=1">(Cervixinsufficientie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Cervixinsufficientie): element hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Cervixinsufficientie): element hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Cervixinsufficientie): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Cervixinsufficientie): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']
Item: (Cervixinsufficientie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900968')">(Cervixinsufficientie): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900968' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Cervixinsufficientie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:code[(@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="@nullFlavor or (@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')">(Cervixinsufficientie): de elementwaarde MOET een zijn van 'code '17382005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Cervixinsufficientie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="@xsi:type">(Cervixinsufficientie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]
Item: (Infectie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]
Item: (Infectie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@classCode)=('OBS')">(Infectie): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@moodCode)=('EVN')">(Infectie): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975'])&gt;=1">(Infectie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975'])&lt;=1">(Infectie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Infectie): element hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Infectie): element hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Infectie): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Infectie): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']
Item: (Infectie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900975')">(Infectie): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900975' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Infectie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:code[(@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@nullFlavor or (@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')">(Infectie): de elementwaarde MOET een zijn van 'code '40733004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Infectie)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Infectie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.204 Infectie (2.2) (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Infectie): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.204 Infectie (2.2) (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@xsi:type">(Infectie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]
Item: (Hyperemesisgravidarum)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]
Item: (Hyperemesisgravidarum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@classCode)=('OBS')">(Hyperemesisgravidarum): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@moodCode)=('EVN')">(Hyperemesisgravidarum): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969'])&gt;=1">(Hyperemesisgravidarum): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969'])&lt;=1">(Hyperemesisgravidarum): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Hyperemesisgravidarum): element hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Hyperemesisgravidarum): element hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Hyperemesisgravidarum): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Hyperemesisgravidarum): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']
Item: (Hyperemesisgravidarum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900969')">(Hyperemesisgravidarum): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900969' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Hyperemesisgravidarum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:code[(@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="@nullFlavor or (@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')">(Hyperemesisgravidarum): de elementwaarde MOET een zijn van 'code '14094001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Hyperemesisgravidarum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="@xsi:type">(Hyperemesisgravidarum): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]
Item: (Hypertensieveaandoening)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]
Item: (Hypertensieveaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@classCode)=('OBS')">(Hypertensieveaandoening): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@moodCode)=('EVN')">(Hypertensieveaandoening): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977'])&gt;=1">(Hypertensieveaandoening): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977'])&lt;=1">(Hypertensieveaandoening): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Hypertensieveaandoening): element hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Hypertensieveaandoening): element hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&gt;=1">(Hypertensieveaandoening): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(Hypertensieveaandoening): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']
Item: (Hypertensieveaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900977')">(Hypertensieveaandoening): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900977' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Hypertensieveaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:code[(@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@nullFlavor or (@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')">(Hypertensieveaandoening): de elementwaarde MOET een zijn van 'code '38341003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (Hypertensieveaandoening)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Hypertensieveaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.36 Hypertensieve aandoening (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@xsi:type">(Hypertensieveaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]
Item: (Zwangerschapscholestase)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]
Item: (Zwangerschapscholestase)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@classCode)=('OBS')">(Zwangerschapscholestase): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@moodCode)=('EVN')">(Zwangerschapscholestase): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971'])&gt;=1">(Zwangerschapscholestase): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971'])&lt;=1">(Zwangerschapscholestase): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Zwangerschapscholestase): element hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Zwangerschapscholestase): element hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Zwangerschapscholestase): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Zwangerschapscholestase): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']
Item: (Zwangerschapscholestase)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900971')">(Zwangerschapscholestase): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900971' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Zwangerschapscholestase)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:code[(@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="@nullFlavor or (@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')">(Zwangerschapscholestase): de elementwaarde MOET een zijn van 'code '235888006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Zwangerschapscholestase)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="@xsi:type">(Zwangerschapscholestase): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]
Item: (Diabetesgravidarummetinsuline)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@classCode)=('OBS')">(Diabetesgravidarummetinsuline): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@moodCode)=('EVN')">(Diabetesgravidarummetinsuline): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978'])&gt;=1">(Diabetesgravidarummetinsuline): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978'])&lt;=1">(Diabetesgravidarummetinsuline): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Diabetesgravidarummetinsuline): element hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Diabetesgravidarummetinsuline): element hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Diabetesgravidarummetinsuline): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Diabetesgravidarummetinsuline): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']
Item: (Diabetesgravidarummetinsuline)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900978')">(Diabetesgravidarummetinsuline): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900978' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:code[(@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="@nullFlavor or (@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')">(Diabetesgravidarummetinsuline): de elementwaarde MOET een zijn van 'code '46894009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="@xsi:type">(Diabetesgravidarummetinsuline): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]">
      <extends rule="d19e50110-false-d324524e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]
Item: (Afwijkendegroei)
-->
   <rule id="d19e50110-false-d324524e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']])&lt;=1">(Afwijkendegroei): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]
Item: (Afwijkendegroei)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@classCode)=('OBS')">(Afwijkendegroei): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@moodCode)=('EVN')">(Afwijkendegroei): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor)&gt;0 and not(matches(@nullFlavor,'\s')))">(Afwijkendegroei): attribuut @nullFlavor MOET datatype 'cs' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976'])&gt;=1">(Afwijkendegroei): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976'])&lt;=1">(Afwijkendegroei): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Afwijkendegroei): element hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Afwijkendegroei): element hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Afwijkendegroei): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Afwijkendegroei): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']
Item: (Afwijkendegroei)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900976')">(Afwijkendegroei): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900976' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Afwijkendegroei)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:code[(@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@nullFlavor or (@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')">(Afwijkendegroei): de elementwaarde MOET een zijn van 'code '276604007' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Afwijkendegroei)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Afwijkendegroei): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.37 Groei afwijkend (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Afwijkendegroei): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.37 Groei afwijkend (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@xsi:type">(Afwijkendegroei): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]
Item: (Dreigendepartusimmaturus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]
Item: (Dreigendepartusimmaturus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@classCode)=('OBS')">(Dreigendepartusimmaturus): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@moodCode)=('EVN')">(Dreigendepartusimmaturus): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972'])&gt;=1">(Dreigendepartusimmaturus): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972'])&lt;=1">(Dreigendepartusimmaturus): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Dreigendepartusimmaturus): element hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Dreigendepartusimmaturus): element hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Dreigendepartusimmaturus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Dreigendepartusimmaturus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']
Item: (Dreigendepartusimmaturus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900972')">(Dreigendepartusimmaturus): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900972' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Dreigendepartusimmaturus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:code[(@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="@nullFlavor or (@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Dreigendepartusimmaturus): de elementwaarde MOET een zijn van 'code 'PartusImmaturusDreig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Dreigendepartusimmaturus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="@xsi:type">(Dreigendepartusimmaturus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]
Item: (Dreigendepartusprematurus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]
Item: (Dreigendepartusprematurus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@classCode)=('OBS')">(Dreigendepartusprematurus): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@moodCode)=('EVN')">(Dreigendepartusprematurus): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973'])&gt;=1">(Dreigendepartusprematurus): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973'])&lt;=1">(Dreigendepartusprematurus): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Dreigendepartusprematurus): element hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Dreigendepartusprematurus): element hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Dreigendepartusprematurus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Dreigendepartusprematurus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']
Item: (Dreigendepartusprematurus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900973')">(Dreigendepartusprematurus): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900973' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Dreigendepartusprematurus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:code[(@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="@nullFlavor or (@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Dreigendepartusprematurus): de elementwaarde MOET een zijn van 'code 'PartusPrematurusDreig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Dreigendepartusprematurus)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="@xsi:type">(Dreigendepartusprematurus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]
Item: (Abruptioplacentae)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]
Item: (Abruptioplacentae)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@classCode)=('OBS')">(Abruptioplacentae): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@moodCode)=('EVN')">(Abruptioplacentae): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974'])&gt;=1">(Abruptioplacentae): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974'])&lt;=1">(Abruptioplacentae): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Abruptioplacentae): element hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Abruptioplacentae): element hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Abruptioplacentae): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Abruptioplacentae): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']
Item: (Abruptioplacentae)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900974')">(Abruptioplacentae): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900974' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Abruptioplacentae)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:code[(@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="@nullFlavor or (@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')">(Abruptioplacentae): de elementwaarde MOET een zijn van 'code '415105001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Abruptioplacentae)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="@xsi:type">(Abruptioplacentae): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901096
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]
Item: (RedenVerwObsAn233)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@typeCode)=('COMP')">(RedenVerwObsAn233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.html"
              test="string(@contextConductionInd)=('true')">(RedenVerwObsAn233): de waarde van @contextConductionInd MOET 'true' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]
Item: (FluxusPostpartum)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]
Item: (FluxusPostpartum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="string(@classCode)=('OBS')">(FluxusPostpartum): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="string(@moodCode)=('EVN')">(FluxusPostpartum): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054'])&gt;=1">(FluxusPostpartum): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054'])&lt;=1">(FluxusPostpartum): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:code[(@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(FluxusPostpartum): element hl7:code[(@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:code[(@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(FluxusPostpartum): element hl7:code[(@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(FluxusPostpartum): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(FluxusPostpartum): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']
Item: (FluxusPostpartum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901054')">(FluxusPostpartum): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901054' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:code[(@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (FluxusPostpartum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:code[(@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="@nullFlavor or (@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')">(FluxusPostpartum): de elementwaarde MOET een zijn van 'code '47821001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (FluxusPostpartum)
-->
   <rule context="*[hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]]/hl7:organizer[@classCode='CONTAINER'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901096']]/hl7:component[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="@xsi:type">(FluxusPostpartum): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
