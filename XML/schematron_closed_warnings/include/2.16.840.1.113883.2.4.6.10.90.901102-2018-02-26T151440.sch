<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901102
Name: Baring Kernset
Description: Groepering per baring - het geboren laten worden van één uitkomst (kind). Kernset versie.
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440">
   <title>Baring Kernset</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]
Item: (BaringPRNKernset233)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]"
         id="d14e50813-false-d406074e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']])&lt;=1">(BaringPRNKernset233): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]
Item: (BaringPRNKernset233)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]"
         id="d14e50961-false-d406247e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@classCode)=('PROC')">(BaringPRNKernset233): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@moodCode)=('EVN')">(BaringPRNKernset233): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102'])&gt;=1">(BaringPRNKernset233): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102'])&lt;=1">(BaringPRNKernset233): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:id)&gt;=1">(BaringPRNKernset233): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:id)&lt;=1">(BaringPRNKernset233): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&gt;=1">(BaringPRNKernset233): element hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&lt;=1">(BaringPRNKernset233): element hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]])&lt;=1">(BaringPRNKernset233): element hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]])&lt;=1">(BaringPRNKernset233): element hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]])&lt;=1">(BaringPRNKernset233): element hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:location[@typeCode='ELOC'])&lt;=1">(BaringPRNKernset233): element hl7:location[@typeCode='ELOC'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]])&gt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]])&gt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]])&lt;=1">(BaringPRNKernset233): element hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']
Item: (BaringPRNKernset233)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']"
         id="d14e50967-false-d406564e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BaringPRNKernset233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901102')">(BaringPRNKernset233): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901102' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:id
Item: (BaringPRNKernset233)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:id"
         id="d14e50972-false-d406580e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BaringPRNKernset233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@nullFlavor)=('NI')">(BaringPRNKernset233): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]
Item: (BaringPRNKernset233)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:code[(@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]"
         id="d14e50977-false-d406596e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BaringPRNKernset233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="@nullFlavor or (@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(BaringPRNKernset233): de elementwaarde MOET een zijn van 'code 'Baring' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]
Item: (UitkomstperkindsubjectPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]"
         id="d406608e5-false-d406622e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@typeCode)=('SBJ')">(UitkomstperkindsubjectPRNKernset): de waarde van @typeCode MOET 'SBJ' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]])&gt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]])&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]
Item: (UitkomstperkindsubjectPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]"
         id="d406608e51-false-d406657e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@classCode)=('PRS')">(UitkomstperkindsubjectPRNKernset): de waarde van @classCode MOET 'PRS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')])&gt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')])&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)])&gt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)])&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]
Item: (UitkomstperkindsubjectPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]"
         id="d406608e55-false-d406696e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(UitkomstperkindsubjectPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(UitkomstperkindsubjectPRNKernset): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]
Item: (UitkomstperkindsubjectPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]"
         id="d406608e60-false-d406720e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@classCode)=('PSN')">(UitkomstperkindsubjectPRNKernset): de waarde van @classCode MOET 'PSN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@determinerCode)=('INSTANCE')">(UitkomstperkindsubjectPRNKernset): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="hl7:deceasedInd[string(@value)='true'] or not(hl7:deceasedTime)">(UitkomstperkindsubjectPRNKernset): Datum perinatale sterfte: deceasedTime is only applicable when deceasedInd=true</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3'])&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:id[@root='2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:birthTime)&gt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:birthTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:birthTime)&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:birthTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:deceasedInd[not(@nullFlavor)])&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:deceasedInd[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:deceasedTime)&lt;=1">(UitkomstperkindsubjectPRNKernset): element hl7:deceasedTime komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (UitkomstperkindsubjectPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
         id="d406608e66-false-d406786e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(UitkomstperkindsubjectPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.3')">(UitkomstperkindsubjectPRNKernset): de waarde van @root MOET '2.16.840.1.113883.2.4.6.3' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900259
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:birthTime
Item: (GeboortedatumKind)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:birthTime"
         id="d406796e5-false-d406804e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900259-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(GeboortedatumKind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900259-2009-10-01T000000.html"
              test="not(*)">(GeboortedatumKind): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900432
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:deceasedInd[not(@nullFlavor)]
Item: (Perinatalesterfte)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:deceasedInd[not(@nullFlavor)]"
         id="d406813e5-false-d406821e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900432-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Perinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900443
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:deceasedTime
Item: (Datumperinatalesterfte)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[@typeCode='SBJ'][hl7:personalRelationship[hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[@classCode='PRS'][hl7:code[(@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[@classCode='PSN'][not(@nullFlavor)]/hl7:deceasedTime"
         id="d406827e5-false-d406835e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900443-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Datumperinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900443-2009-10-01T000000.html"
              test="not(*)">(Datumperinatalesterfte): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900990
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (Rolsupervisor)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d406844e7-false-d406854e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="string(@typeCode)=('RESP')">(Rolsupervisor): de waarde van @typeCode MOET 'RESP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1">(Rolsupervisor): element hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1">(Rolsupervisor): element hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900990
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Rolsupervisor)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d406844e22-false-d406881e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="string(@classCode)=('ASSIGNED')">(Rolsupervisor): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Rolsupervisor): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Rolsupervisor): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900990
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Rolsupervisor)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[@typeCode='RESP'][hl7:assignedEntity[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d406844e26-false-d406908e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Rolsupervisor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Rolsupervisor): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.193 Eindverantwoordelijke (2.2) (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Rolsupervisor): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.193 Eindverantwoordelijke (2.2) (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (RolaanpakkerkindPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d406928e9-false-d406938e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="string(@typeCode)=('PRF')">(RolaanpakkerkindPRNKernset): de waarde van @typeCode MOET 'PRF' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1">(RolaanpakkerkindPRNKernset): element hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1">(RolaanpakkerkindPRNKernset): element hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (RolaanpakkerkindPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d406928e26-false-d406965e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="string(@classCode)=('ASSIGNED')">(RolaanpakkerkindPRNKernset): de waarde van @classCode MOET 'ASSIGNED' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(RolaanpakkerkindPRNKernset): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(RolaanpakkerkindPRNKernset): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:agentPerson)&gt;=1">(RolaanpakkerkindPRNKernset): element hl7:agentPerson is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:agentPerson)&lt;=1">(RolaanpakkerkindPRNKernset): element hl7:agentPerson komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (RolaanpakkerkindPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d406928e30-false-d407002e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(RolaanpakkerkindPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(RolaanpakkerkindPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.186 RolZorgverlener22 (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(RolaanpakkerkindPRNKernset): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.186 RolZorgverlener22 (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:agentPerson
Item: (RolaanpakkerkindPRNKernset)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[@typeCode='PRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:agentPerson"
         id="d406928e37-false-d407028e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="string(@nullFlavor)=('NI')">(RolaanpakkerkindPRNKernset): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900233
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']
Item: (Faciliteitwerkelijkeplaatsbaring)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']"
         id="d407035e7-false-d407045e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="string(@typeCode)=('ELOC')">(Faciliteitwerkelijkeplaatsbaring): de waarde van @typeCode MOET 'ELOC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:healthCareFacility[@classCode='DSDLOC'])&gt;=1">(Faciliteitwerkelijkeplaatsbaring): element hl7:healthCareFacility[@classCode='DSDLOC'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:healthCareFacility[@classCode='DSDLOC'])&lt;=1">(Faciliteitwerkelijkeplaatsbaring): element hl7:healthCareFacility[@classCode='DSDLOC'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900233
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']/hl7:healthCareFacility[@classCode='DSDLOC']
Item: (Faciliteitwerkelijkeplaatsbaring)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']/hl7:healthCareFacility[@classCode='DSDLOC']"
         id="d407035e22-false-d407072e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="string(@classCode)=('DSDLOC')">(Faciliteitwerkelijkeplaatsbaring): de waarde van @classCode MOET 'DSDLOC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&lt;=1">(Faciliteitwerkelijkeplaatsbaring): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Faciliteitwerkelijkeplaatsbaring): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']/hl7:healthCareFacility[@classCode='DSDLOC']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']/hl7:healthCareFacility[@classCode='DSDLOC']/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']"
         id="d407101e7-false-d407109e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900233
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']/hl7:healthCareFacility[@classCode='DSDLOC']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Faciliteitwerkelijkeplaatsbaring)
-->

   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode='ELOC']/hl7:healthCareFacility[@classCode='DSDLOC']/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d407035e30-false-d407131e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Faciliteitwerkelijkeplaatsbaring): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Faciliteitwerkelijkeplaatsbaring): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.178 WerkelijkePlaatsBaring22 (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Faciliteitwerkelijkeplaatsbaring): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.178 WerkelijkePlaatsBaring22 (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]
Item: (Geslachtmedischeobservatie)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]
Item: (Geslachtmedischeobservatie)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="string(@classCode)=('OBS')">(Geslachtmedischeobservatie): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="string(@moodCode)=('EVN')">(Geslachtmedischeobservatie): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255'])&gt;=1">(Geslachtmedischeobservatie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255'])&lt;=1">(Geslachtmedischeobservatie): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Geslachtmedischeobservatie): element hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Geslachtmedischeobservatie): element hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Geslachtmedischeobservatie): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Geslachtmedischeobservatie): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']
Item: (Geslachtmedischeobservatie)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900255')">(Geslachtmedischeobservatie): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900255' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Geslachtmedischeobservatie)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:code[(@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="@nullFlavor or (@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')">(Geslachtmedischeobservatie): de elementwaarde MOET een zijn van 'code '46098-0' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Geslachtmedischeobservatie)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Geslachtmedischeobservatie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.110 GenderMedisch (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Geslachtmedischeobservatie): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.110 GenderMedisch (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="@xsi:type">(Geslachtmedischeobservatie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]
Item: (Rangnummerkind)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]
Item: (Rangnummerkind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="string(@classCode)=('OBS')">(Rangnummerkind): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="string(@moodCode)=('EVN')">(Rangnummerkind): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400'])&gt;=1">(Rangnummerkind): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400'])&lt;=1">(Rangnummerkind): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Rangnummerkind): element hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Rangnummerkind): element hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Rangnummerkind): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Rangnummerkind): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']
Item: (Rangnummerkind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900400')">(Rangnummerkind): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900400' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Rangnummerkind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:code[(@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="@nullFlavor or (@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Rangnummerkind): de elementwaarde MOET een zijn van 'code 'BirthOrderNumber' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Rangnummerkind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(Rangnummerkind): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="@xsi:type">(Rangnummerkind): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]
Item: (Bijstimulatietoegediend)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]
Item: (Bijstimulatietoegediend)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="string(@classCode)=('OBS')">(Bijstimulatietoegediend): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="string(@moodCode)=('EVN')">(Bijstimulatietoegediend): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217'])&gt;=1">(Bijstimulatietoegediend): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217'])&lt;=1">(Bijstimulatietoegediend): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&gt;=1">(Bijstimulatietoegediend): element hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&lt;=1">(Bijstimulatietoegediend): element hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Bijstimulatietoegediend): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Bijstimulatietoegediend): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']
Item: (Bijstimulatietoegediend)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900217')">(Bijstimulatietoegediend): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900217' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]
Item: (Bijstimulatietoegediend)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:code[(@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="@nullFlavor or (@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(Bijstimulatietoegediend): de elementwaarde MOET een zijn van 'code 'PRN540201' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Bijstimulatietoegediend)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="@xsi:type">(Bijstimulatietoegediend): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]
Item: (Tijdstipbrekenvliezen)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]
Item: (Tijdstipbrekenvliezen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="string(@classCode)=('OBS')">(Tijdstipbrekenvliezen): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="string(@moodCode)=('EVN')">(Tijdstipbrekenvliezen): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198'])&gt;=1">(Tijdstipbrekenvliezen): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198'])&lt;=1">(Tijdstipbrekenvliezen): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Tijdstipbrekenvliezen): element hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Tijdstipbrekenvliezen): element hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Tijdstipbrekenvliezen): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Tijdstipbrekenvliezen): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']
Item: (Tijdstipbrekenvliezen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900198')">(Tijdstipbrekenvliezen): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900198' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Tijdstipbrekenvliezen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:code[(@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="@nullFlavor or (@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')">(Tijdstipbrekenvliezen): de elementwaarde MOET een zijn van 'code '289251005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Tijdstipbrekenvliezen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="@nullFlavor or ($xsiLocalName='TS' and $xsiLocalNS='urn:hl7-org:v3')">(Tijdstipbrekenvliezen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]
Item: (Kleurvruchtwater)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]
Item: (Kleurvruchtwater)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="string(@classCode)=('OBS')">(Kleurvruchtwater): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="string(@moodCode)=('EVN')">(Kleurvruchtwater): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199'])&gt;=1">(Kleurvruchtwater): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199'])&lt;=1">(Kleurvruchtwater): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Kleurvruchtwater): element hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Kleurvruchtwater): element hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Kleurvruchtwater): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Kleurvruchtwater): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']
Item: (Kleurvruchtwater)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900199')">(Kleurvruchtwater): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900199' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Kleurvruchtwater)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:code[(@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="@nullFlavor or (@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')">(Kleurvruchtwater): de elementwaarde MOET een zijn van 'code '38386-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Kleurvruchtwater)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Kleurvruchtwater): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.20 KleurVruchtwater (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Kleurvruchtwater): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.20 KleurVruchtwater (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="@xsi:type">(Kleurvruchtwater): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]
Item: (Tijdstipactiefmeepersen)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]
Item: (Tijdstipactiefmeepersen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="string(@classCode)=('OBS')">(Tijdstipactiefmeepersen): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="string(@moodCode)=('EVN')">(Tijdstipactiefmeepersen): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261'])&gt;=1">(Tijdstipactiefmeepersen): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261'])&lt;=1">(Tijdstipactiefmeepersen): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1">(Tijdstipactiefmeepersen): element hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1">(Tijdstipactiefmeepersen): element hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Tijdstipactiefmeepersen): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Tijdstipactiefmeepersen): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']
Item: (Tijdstipactiefmeepersen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900261')">(Tijdstipactiefmeepersen): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900261' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Tijdstipactiefmeepersen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:code[(@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="@nullFlavor or (@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Tijdstipactiefmeepersen): de elementwaarde MOET een zijn van 'code 'PRN530401' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Tijdstipactiefmeepersen)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="@nullFlavor or ($xsiLocalName='TS' and $xsiLocalNS='urn:hl7-org:v3')">(Tijdstipactiefmeepersen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "TS" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]
Item: (Episiotomie23)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]
Item: (Episiotomie23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@classCode)=('PROC')">(Episiotomie23): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@moodCode)=('EVN')">(Episiotomie23): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Episiotomie23): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="../hl7:procedure/@negationInd or ../hl7:procedure/@nullFlavor">(Episiotomie23): Episiotomie shall have a negationInd (true or false) unless null</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="../hl7:procedure/@negationInd='true' or ../hl7:procedure/@nullFlavor or hl7:targetSiteCode">(Episiotomie23): If Episiotomie=true (negationInd=false) an hl7:targetSiteCode (Faseamniotomie) shall be present</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="../hl7:procedure/@negationInd='false' or ../hl7:procedure/@nullFlavor or not(hl7:targetSiteCode)">(Episiotomie23): If Episiotomie=false (negationInd=true) hl7:targetSiteCode (Faseamniotomie) shall not be present</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063'])&gt;=1">(Episiotomie23): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063'])&lt;=1">(Episiotomie23): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:id)&gt;=1">(Episiotomie23): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:id)&lt;=1">(Episiotomie23): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&gt;=1">(Episiotomie23): element hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')])&lt;=1">(Episiotomie23): element hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Episiotomie23): element hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']
Item: (Episiotomie23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901063')">(Episiotomie23): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901063' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:id
Item: (Episiotomie23)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]
Item: (Episiotomie23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:code[(@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="@nullFlavor or (@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(Episiotomie23): de elementwaarde MOET een zijn van 'code 'PRN540701' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900272
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Locatieepisiotomie)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:targetSiteCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900272-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Locatieepisiotomie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900272-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Locatieepisiotomie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.161 EpisiotomieType (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900272-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Locatieepisiotomie): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.161 EpisiotomieType (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]
Item: (Episiotomie23)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]">
      <extends rule="d407972e80-false-d408158e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@typeCode)=('RSON')">(Episiotomie23): de waarde van @typeCode MOET 'RSON' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]
Item: (IndicatieEpi)
-->
   <rule id="d407972e80-false-d408158e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']])&lt;=1">(IndicatieEpi): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]
Item: (IndicatieEpi)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="string(@classCode)=('OBS')">(IndicatieEpi): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="string(@moodCode)=('EVN')">(IndicatieEpi): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064'])&gt;=1">(IndicatieEpi): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064'])&lt;=1">(IndicatieEpi): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:code[(@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(IndicatieEpi): element hl7:code[(@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:code[(@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(IndicatieEpi): element hl7:code[(@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(IndicatieEpi): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']
Item: (IndicatieEpi)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901064')">(IndicatieEpi): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901064' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:code[(@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (IndicatieEpi)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:code[(@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="@nullFlavor or (@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(IndicatieEpi): de elementwaarde MOET een zijn van 'code '61' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IndicatieEpi)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(IndicatieEpi): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.210 Indicatie episiotomie (2014-12-22T15:41:15)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IndicatieEpi): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.210 Indicatie episiotomie (2014-12-22T15:41:15).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(IndicatieEpi): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]
Item: (RuggeprikGewNGekr)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]
Item: (RuggeprikGewNGekr)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="string(@classCode)=('OBS')">(RuggeprikGewNGekr): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="string(@moodCode)=('EVN')">(RuggeprikGewNGekr): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992'])&gt;=1">(RuggeprikGewNGekr): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992'])&lt;=1">(RuggeprikGewNGekr): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(RuggeprikGewNGekr): element hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(RuggeprikGewNGekr): element hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&gt;=1">(RuggeprikGewNGekr): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])&lt;=1">(RuggeprikGewNGekr): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']
Item: (RuggeprikGewNGekr)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900992')">(RuggeprikGewNGekr): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900992' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (RuggeprikGewNGekr)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:code[(@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="@nullFlavor or (@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(RuggeprikGewNGekr): de elementwaarde MOET een zijn van 'code 'RuggeprikGewNGekr' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]
Item: (RuggeprikGewNGekr)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="@xsi:type">(RuggeprikGewNGekr): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]
Item: (PijnbestrijdingPRNKernset)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@classCode)=('PROC')">(PijnbestrijdingPRNKernset): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@moodCode)=('EVN')">(PijnbestrijdingPRNKernset): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@negationInd">(PijnbestrijdingPRNKernset): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(PijnbestrijdingPRNKernset): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test=".[string(@negationInd)='true'] or hl7:methodCode">(PijnbestrijdingPRNKernset): Als er sprake is van pijnbestrijding (negationInd=false) dan de methode (hl7:methodCode) ook opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995'])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995'])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id)&gt;=1">(PijnbestrijdingPRNKernset): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id)&lt;=1">(PijnbestrijdingPRNKernset): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900995')">(PijnbestrijdingPRNKernset): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900995' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:id
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@nullFlavor)=('NI')">(PijnbestrijdingPRNKernset): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:code[(@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or (@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van 'code '278414003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.6 PainManagementMethod (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PijnbestrijdingPRNKernset): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.6 PainManagementMethod (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]">
      <extends rule="d408422e116-false-d408606e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@typeCode)=('COMP')">(PijnbestrijdingPRNKernset): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]
Item: (PijnbestrijdingPeriode)
-->
   <rule id="d408422e116-false-d408606e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']])&lt;=1">(PijnbestrijdingPeriode): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]
Item: (PijnbestrijdingPeriode)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="string(@classCode)=('OBS')">(PijnbestrijdingPeriode): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="string(@moodCode)=('EVN')">(PijnbestrijdingPeriode): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022'])&gt;=1">(PijnbestrijdingPeriode): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022'])&lt;=1">(PijnbestrijdingPeriode): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(PijnbestrijdingPeriode): element hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(PijnbestrijdingPeriode): element hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(PijnbestrijdingPeriode): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']
Item: (PijnbestrijdingPeriode)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901022')">(PijnbestrijdingPeriode): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901022' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (PijnbestrijdingPeriode)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:code[(@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="@nullFlavor or (@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(PijnbestrijdingPeriode): de elementwaarde MOET een zijn van 'code 'PijnbestrPeriode' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (PijnbestrijdingPeriode)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(PijnbestrijdingPeriode): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.208 Pijnbestrijding periode (2014-11-13T15:57:07)'.</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(PijnbestrijdingPeriode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@typeCode)=('COMP')">(PijnbestrijdingPRNKernset): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@classCode)=('PROC')">(PijnbestrijdingPRNKernset): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@moodCode)=('EVN')">(PijnbestrijdingPRNKernset): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id)&gt;=1">(PijnbestrijdingPRNKernset): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id)&lt;=1">(PijnbestrijdingPRNKernset): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@nullFlavor)=('NI')">(PijnbestrijdingPRNKernset): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or (@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van 'code 'PijnbestrOverig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.7 PainManagementAlternativeMethod (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PijnbestrijdingPRNKernset): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.7 PainManagementAlternativeMethod (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@typeCode)=('COMP')">(PijnbestrijdingPRNKernset): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@classCode)=('PROC')">(PijnbestrijdingPRNKernset): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@moodCode)=('EVN')">(PijnbestrijdingPRNKernset): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id)&gt;=1">(PijnbestrijdingPRNKernset): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id)&lt;=1">(PijnbestrijdingPRNKernset): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(PijnbestrijdingPRNKernset): element hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@nullFlavor)=('NI')">(PijnbestrijdingPRNKernset): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or (@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van 'code '416118004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.8 Administration (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PijnbestrijdingPRNKernset): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.8 Administration (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]">
      <extends rule="d14e51038-false-d409004e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]
Item: (SedatieJaNee)
-->
   <rule id="d14e51038-false-d409004e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']])&lt;=1">(SedatieJaNee): element hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]
Item: (SedatieJaNee)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@classCode)=('PROC')">(SedatieJaNee): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@moodCode)=('EVN')">(SedatieJaNee): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996'])&gt;=1">(SedatieJaNee): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996'])&lt;=1">(SedatieJaNee): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:id)&gt;=1">(SedatieJaNee): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:id)&lt;=1">(SedatieJaNee): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(SedatieJaNee): element hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(SedatieJaNee): element hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']
Item: (SedatieJaNee)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900996')">(SedatieJaNee): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900996' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:id
Item: (SedatieJaNee)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@nullFlavor)=('NI')">(SedatieJaNee): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (SedatieJaNee)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:code[(@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="@nullFlavor or (@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')">(SedatieJaNee): de elementwaarde MOET een zijn van 'code '72641008' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901107']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (Apgarscorena5min)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@classCode)=('OBS')">(Apgarscorena5min): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@moodCode)=('EVN')">(Apgarscorena5min): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294'])&gt;=1">(Apgarscorena5min): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294'])&lt;=1">(Apgarscorena5min): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Apgarscorena5min): element hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Apgarscorena5min): element hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Apgarscorena5min): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Apgarscorena5min): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900294')">(Apgarscorena5min): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900294' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="@nullFlavor or (@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')">(Apgarscorena5min): de elementwaarde MOET een zijn van 'code '9274-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Apgarscorena5min)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=10))">(Apgarscorena5min): value MOET in bereik [0..10] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="@xsi:type">(Apgarscorena5min): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]
Item: (Liggingbijgeboorte)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]
Item: (Liggingbijgeboorte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="string(@classCode)=('OBS')">(Liggingbijgeboorte): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="string(@moodCode)=('EVN')">(Liggingbijgeboorte): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359'])&gt;=1">(Liggingbijgeboorte): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359'])&lt;=1">(Liggingbijgeboorte): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1">(Liggingbijgeboorte): element hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1">(Liggingbijgeboorte): element hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Liggingbijgeboorte): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Liggingbijgeboorte): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']
Item: (Liggingbijgeboorte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900359')">(Liggingbijgeboorte): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900359' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Liggingbijgeboorte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:code[(@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="@nullFlavor or (@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Liggingbijgeboorte): de elementwaarde MOET een zijn van 'code 'LigGbrt' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Liggingbijgeboorte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Liggingbijgeboorte): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.177 LiggingBijGeboorte22 (2013-12-24T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Liggingbijgeboorte): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.177 LiggingBijGeboorte22 (2013-12-24T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="@xsi:type">(Liggingbijgeboorte): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]
Item: (VaginalekunstverlossingPRNKernset)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@classCode)=('PROC')">(VaginalekunstverlossingPRNKernset): de waarde van @classCode MOET 'PROC' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@moodCode)=('EVN')">(VaginalekunstverlossingPRNKernset): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(VaginalekunstverlossingPRNKernset): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@nullFlavor)=('NI') or not(@nullFlavor)">(VaginalekunstverlossingPRNKernset): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="../hl7:procedure/@negationInd or ../hl7:procedure/@nullFlavor">(VaginalekunstverlossingPRNKernset): Vaginalekunstverlossing moet het attributt negationInd hebben (true or false), tenzij er een nullFlavor van toepassing is.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="../hl7:procedure/@negationInd='true' or ../hl7:procedure/@nullFlavor or hl7:outboundRelationship[@typeCode='OUTC']">(VaginalekunstverlossingPRNKernset): If Vaginalekunstverlossing=true (negationInd=false) a Succesvaginalekunstverlossing shall be present</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999'])&gt;=1">(VaginalekunstverlossingPRNKernset): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999'])&lt;=1">(VaginalekunstverlossingPRNKernset): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:id)&gt;=1">(VaginalekunstverlossingPRNKernset): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:id)&lt;=1">(VaginalekunstverlossingPRNKernset): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(VaginalekunstverlossingPRNKernset): element hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(VaginalekunstverlossingPRNKernset): element hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(VaginalekunstverlossingPRNKernset): element hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]])&lt;=1">(VaginalekunstverlossingPRNKernset): element hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900999')">(VaginalekunstverlossingPRNKernset): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900999' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:id
Item: (VaginalekunstverlossingPRNKernset)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:code[(@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="@nullFlavor or (@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')">(VaginalekunstverlossingPRNKernset): de elementwaarde MOET een zijn van 'code '3311000146109' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(VaginalekunstverlossingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.181 VaginaleKunstverlossing22 (2014-01-02T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(VaginalekunstverlossingPRNKernset): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.181 VaginaleKunstverlossing22 (2014-01-02T00:00:00).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@typeCode)=('OUTC')">(VaginalekunstverlossingPRNKernset): de waarde van @typeCode MOET 'OUTC' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]
Item: (Succesvaginalekunstverlossing)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]
Item: (Succesvaginalekunstverlossing)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="string(@classCode)=('OBS')">(Succesvaginalekunstverlossing): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="string(@moodCode)=('EVN')">(Succesvaginalekunstverlossing): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275'])&gt;=1">(Succesvaginalekunstverlossing): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275'])&lt;=1">(Succesvaginalekunstverlossing): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Succesvaginalekunstverlossing): element hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Succesvaginalekunstverlossing): element hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Succesvaginalekunstverlossing): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Succesvaginalekunstverlossing): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']
Item: (Succesvaginalekunstverlossing)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900275')">(Succesvaginalekunstverlossing): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900275' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Succesvaginalekunstverlossing)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:code[(@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="@nullFlavor or (@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Succesvaginalekunstverlossing): de elementwaarde MOET een zijn van 'code 'KuVerlSucces' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Succesvaginalekunstverlossing)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[@typeCode='OUTC'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="@xsi:type">(Succesvaginalekunstverlossing): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="not(@value='true') or (@value='true' and ../../../../../hl7:outboundRelationship/hl7:observation[hl7:code/@code='364336006']/hl7:value/(@code='8561000146109' or @code='3311000146109'))">(Succesvaginalekunstverlossing): Alleen een succesvolle vaginale kunstverlossing opnemen als type partus = vaginale kunstverlossing.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:procedure[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901106']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]
Item: (Overigeinterventies)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]
Item: (Overigeinterventies)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="string(@classCode)=('OBS')">(Overigeinterventies): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="string(@moodCode)=('EVN')">(Overigeinterventies): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@negationInd='true' or @nullFlavor or hl7:value">(Overigeinterventies): Als er sprake is van Overige interventies dan ook een waarde opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="not(hl7:value) or (@negationInd='false' or not(@negationInd) and not(@nullFlavor))">(Overigeinterventies): Geen value opnemen wanneer er geen overige interventies zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893'])&gt;=1">(Overigeinterventies): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893'])&lt;=1">(Overigeinterventies): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&gt;=1">(Overigeinterventies): element hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')])&lt;=1">(Overigeinterventies): element hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Overigeinterventies): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']
Item: (Overigeinterventies)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900893')">(Overigeinterventies): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900893' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Overigeinterventies)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:code[(@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@nullFlavor or (@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Overigeinterventies): de elementwaarde MOET een zijn van 'code 'Interv' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Overigeinterventies)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Overigeinterventies): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.20 Overige interventies (2016-11-23T20:45:23)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Overigeinterventies): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.20 Overige interventies (2016-11-23T20:45:23).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(Overigeinterventies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]
Item: (Geboortegewicht)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]
Item: (Geboortegewicht)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="string(@classCode)=('OBS')">(Geboortegewicht): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="string(@moodCode)=('EVN')">(Geboortegewicht): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425'])&gt;=1">(Geboortegewicht): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425'])&lt;=1">(Geboortegewicht): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')])&gt;=1">(Geboortegewicht): element hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')])&lt;=1">(Geboortegewicht): element hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&gt;=1">(Geboortegewicht): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])&lt;=1">(Geboortegewicht): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']
Item: (Geboortegewicht)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900425')">(Geboortegewicht): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900425' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')]
Item: (Geboortegewicht)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:code[(@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="@nullFlavor or (@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')">(Geboortegewicht): de elementwaarde MOET een zijn van 'code '8339-4' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]
Item: (Geboortegewicht)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="(@nullFlavor or (@unit='g'))">(Geboortegewicht): value MOET eenheid 'g' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and (matches(string(@value), '^[-+]?[0-9]*$'))))">(Geboortegewicht): value MOET in bereik [0..] liggen  en tot op minstens 0 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="@xsi:type">(Geboortegewicht): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]">
      <extends rule="d14e51079-false-d410053e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]
Item: (CongenitaleafwijkingenNU)
-->
   <rule id="d14e51079-false-d410053e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']])&lt;=1">(CongenitaleafwijkingenNU): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]
Item: (CongenitaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="string(@classCode)=('OBS')">(CongenitaleafwijkingenNU): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="string(@moodCode)=('EVN')">(CongenitaleafwijkingenNU): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CongenitaleafwijkingenNU): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI','UNK')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(CongenitaleafwijkingenNU): de waarde van nullFlavor MOET 'code NI of code UNK' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@nullFlavor and @negationInd)">(CongenitaleafwijkingenNU): Er moet ofwel een nullFlavor, ofwel een negationInd aanwezig zijn, maar niet beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@negationInd='true' or @nullFlavor or hl7:value/@code or ../../*/hl7:observation[hl7:code/(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]/hl7:value/@code">(CongenitaleafwijkingenNU): Als er sprake is van congenitale afwijkingen, ook een waarde voor de congenitale óf chromosomale afwijking opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="(not(@negationInd='true') and not(@nullFlavor)) or ((@negationInd='true' or @nullFlavor) and not(../../*/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')][(not(@negationInd) or (@negationInd='false')) and not(@nullFlavor)]))">(CongenitaleafwijkingenNU): Als er géén sprake is van congenitale afwijkingen, kan er niet tegelijkertijd tóch een congenitale afwijking zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017'])&gt;=1">(CongenitaleafwijkingenNU): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017'])&lt;=1">(CongenitaleafwijkingenNU): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(CongenitaleafwijkingenNU): element hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(CongenitaleafwijkingenNU): element hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(CongenitaleafwijkingenNU): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']
Item: (CongenitaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901017')">(CongenitaleafwijkingenNU): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901017' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (CongenitaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:code[(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or (@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')">(CongenitaleafwijkingenNU): de elementwaarde MOET een zijn van 'code '443341004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CongenitaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(CongenitaleafwijkingenNU): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.196 Congenitale afwijking (2016-11-10T14:40:18)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.196-2016-11-10T144018.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CongenitaleafwijkingenNU): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.196 Congenitale afwijking (2016-11-10T14:40:18).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(CongenitaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or not(../(@nullFlavor or @negationInd='true'))">(CongenitaleafwijkingenNU): Alleen een waarde voor congenitale afwijking opnemen als er ook sprake is van een congenitale afwijking.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]">
      <extends rule="d14e51084-false-d410213e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule id="d14e51084-false-d410213e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@classCode)=('OBS')">(ChromosomaleafwijkingenNU): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@moodCode)=('EVN')">(ChromosomaleafwijkingenNU): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(ChromosomaleafwijkingenNU): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),' '))"/>
      <let name="theAttCheck"
           value="distinct-values(for $code in tokenize(@nullFlavor,' ') return if ($code=('NI','UNK')) then ($code) else ())"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor) or count($theAttValue) = count($theAttCheck)">(ChromosomaleafwijkingenNU): de waarde van nullFlavor MOET 'code NI of code UNK' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="../hl7:observation/@negationInd='true' or ../hl7:observation/@nullFlavor or hl7:value">(ChromosomaleafwijkingenNU): Als er sprake is van Chromosomale afwijkingen, ook een waarde opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor and @negationInd)">(ChromosomaleafwijkingenNU): Er moet ofwel een nullFlavor, ofwel een negationInd aanwezig zijn, maar niet beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or @negationInd='true' or not(exists(../../hl7:outboundRelationship/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')][@negationInd='true' or @nullFlavor]))">(ChromosomaleafwijkingenNU): Chromosomale afwijking(en) zijn alleen van toepassing wanneer er sprake is van congenitale afwijkingen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'])&gt;=1">(ChromosomaleafwijkingenNU): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(ChromosomaleafwijkingenNU): element hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(ChromosomaleafwijkingenNU): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901016')">(ChromosomaleafwijkingenNU): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901016' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:code[(@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or (@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')">(ChromosomaleafwijkingenNU): de elementwaarde MOET een zijn van 'code '74345006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ChromosomaleafwijkingenNU): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.198 ChromosomaleAfwijkingen (2016-10-26T16:44:18)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ChromosomaleafwijkingenNU): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.198 ChromosomaleAfwijkingen (2016-10-26T16:44:18).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(ChromosomaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(../(@nullFlavor or @negationInd='true'))">(ChromosomaleafwijkingenNU): Alleen een waarde voor chromosomale afwijking opnemen als er ook sprake is van een chromosomale afwijking.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="../hl7:observation/@negationInd='true' or not(exists(../../*/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')][not(@negationInd='true' or @nullFlavor)]))">(ChromosomaleafwijkingenNU): Als er sprake is van Chromosomale afwijkingen, moet er ook sprake zijn van congenitale afwijkingen (dus congenitale afwijkingen moet waarde 'true' hebben).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]">
      <extends rule="d14e51089-false-d410373e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]
Item: (ProblematiekKind)
-->
   <rule id="d14e51089-false-d410373e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']])&lt;=1">(ProblematiekKind): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]
Item: (ProblematiekKind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="string(@classCode)=('OBS')">(ProblematiekKind): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="string(@moodCode)=('EVN')">(ProblematiekKind): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019'])&gt;=1">(ProblematiekKind): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019'])&lt;=1">(ProblematiekKind): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(ProblematiekKind): element hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(ProblematiekKind): element hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2014-08-14T133806.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])&lt;=1">(ProblematiekKind): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2014-08-14T133806.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']
Item: (ProblematiekKind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901019')">(ProblematiekKind): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901019' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (ProblematiekKind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:code[(@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="@nullFlavor or (@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ProblematiekKind): de elementwaarde MOET een zijn van 'code 'ProblematiekKind' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2014-08-14T133806.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]
Item: (ProblematiekKind)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2014-08-14T133806.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2014-08-14T133806.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(ProblematiekKind): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.12 Problematiek kind (2014-08-14T13:38:06)'.</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(ProblematiekKind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]">
      <extends rule="d14e51095-false-d410515e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]
Item: (BetrokkenheidKinderarts)
-->
   <rule id="d14e51095-false-d410515e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']])&lt;=1">(BetrokkenheidKinderarts): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@classCode)=('OBS')">(BetrokkenheidKinderarts): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@moodCode)=('EVN')">(BetrokkenheidKinderarts): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(BetrokkenheidKinderarts): attribuut @negationInd MOET datatype 'bl' hebben</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020'])&gt;=1">(BetrokkenheidKinderarts): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020'])&lt;=1">(BetrokkenheidKinderarts): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(BetrokkenheidKinderarts): element hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(BetrokkenheidKinderarts): element hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(BetrokkenheidKinderarts): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:performer[@typeCode='SPRF'])&lt;=1">(BetrokkenheidKinderarts): element hl7:performer[@typeCode='SPRF'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]])&lt;=1">(BetrokkenheidKinderarts): element hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901020')">(BetrokkenheidKinderarts): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901020' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:code[(@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@nullFlavor or (@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(BetrokkenheidKinderarts): de elementwaarde MOET een zijn van 'code 'KinderartsBetrokken' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(BetrokkenheidKinderarts): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.183 AndereZorgverlenerBetrokken22 (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(BetrokkenheidKinderarts): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.183 AndereZorgverlenerBetrokken22 (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@xsi:type">(BetrokkenheidKinderarts): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@typeCode)=('SPRF')">(BetrokkenheidKinderarts): de waarde van @typeCode MOET 'SPRF' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:time)&lt;=1">(BetrokkenheidKinderarts): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]])&lt;=1">(BetrokkenheidKinderarts): element hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:time
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:time">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@value">(BetrokkenheidKinderarts): attribute @value MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')])&gt;=1">(BetrokkenheidKinderarts): element hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')])&lt;=1">(BetrokkenheidKinderarts): element hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:representedOrganization[@classCode='ORG'][hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']])&lt;=1">(BetrokkenheidKinderarts): element hl7:representedOrganization[@classCode='ORG'][hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]/hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]/hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@code)=('01.019')">(BetrokkenheidKinderarts): de waarde van @code MOET '01.019' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@codeSystem)=('2.16.840.1.113883.2.4.15.111')">(BetrokkenheidKinderarts): de waarde van @codeSystem MOET '2.16.840.1.113883.2.4.15.111' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[@classCode='ORG'][hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[@classCode='ORG'][hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@classCode)=('ORG')">(BetrokkenheidKinderarts): de waarde van @classCode MOET 'ORG' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@determinerCode)=('INSTANCE')">(BetrokkenheidKinderarts): de waarde van @determinerCode MOET 'INSTANCE' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&gt;=1">(BetrokkenheidKinderarts): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'])&lt;=1">(BetrokkenheidKinderarts): element hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[@classCode='ORG'][hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode='SPRF']/hl7:assignedEntity[hl7:code[(@code='01.019' and @codeSystem='2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[@classCode='ORG'][hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root)=('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van @root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]
Item: (BetrokkenheidKinderarts)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]">
      <extends rule="d410510e110-false-d410838e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@typeCode)=('RSON')">(BetrokkenheidKinderarts): de waarde van @typeCode MOET 'RSON' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule id="d410510e110-false-d410838e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']])&lt;=1">(BetrokkenheidKinderartsReden): element hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="string(@classCode)=('OBS')">(BetrokkenheidKinderartsReden): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="string(@moodCode)=('EVN')">(BetrokkenheidKinderartsReden): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021'])&gt;=1">(BetrokkenheidKinderartsReden): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021'])&lt;=1">(BetrokkenheidKinderartsReden): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(BetrokkenheidKinderartsReden): element hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(BetrokkenheidKinderartsReden): element hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(BetrokkenheidKinderartsReden): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']
Item: (BetrokkenheidKinderartsReden)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.901021')">(BetrokkenheidKinderartsReden): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.901021' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:code[(@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="@nullFlavor or (@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(BetrokkenheidKinderartsReden): de elementwaarde MOET een zijn van 'code 'PediatrischeVerwijsindicatie' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[@typeCode='RSON'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(BetrokkenheidKinderartsReden): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.202 Pediatrische verwijsindicatie (2014-02-04T17:23:16)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(BetrokkenheidKinderartsReden): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.202 Pediatrische verwijsindicatie (2014-02-04T17:23:16).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(BetrokkenheidKinderartsReden): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]">
      <extends rule="d14e51100-false-d410980e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]
Item: (Voedingkind_3)
-->
   <rule id="d14e51100-false-d410980e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']])&gt;=1">(Voedingkind_3): element hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']])&lt;=1">(Voedingkind_3): element hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@classCode)=('DIET')">(Voedingkind_3): de waarde van @classCode MOET 'DIET' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@moodCode)=('EVN')">(Voedingkind_3): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724'])&gt;=1">(Voedingkind_3): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724'])&lt;=1">(Voedingkind_3): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:id)&gt;=1">(Voedingkind_3): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:id)&lt;=1">(Voedingkind_3): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')])&gt;=1">(Voedingkind_3): element hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')])&lt;=1">(Voedingkind_3): element hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:effectiveTime)&gt;=1">(Voedingkind_3): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:effectiveTime)&lt;=1">(Voedingkind_3): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:product[@typeCode='PRD'])&gt;=1">(Voedingkind_3): element hl7:product[@typeCode='PRD'] is required [min 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900724')">(Voedingkind_3): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900724' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:id
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:id">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@nullFlavor)=('NI')">(Voedingkind_3): de waarde van @nullFlavor MOET 'NI' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')]
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:code[(@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="@nullFlavor or (@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')">(Voedingkind_3): de elementwaarde MOET een zijn van 'code '230126006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:effectiveTime
Item: (Voedingkind_3)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@typeCode)=('PRD')">(Voedingkind_3): de waarde van @typeCode MOET 'PRD' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]])&gt;=1">(Voedingkind_3): element hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]])&lt;=1">(Voedingkind_3): element hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']/hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']/hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@classCode)=('ACCESS')">(Voedingkind_3): de waarde van @classCode MOET 'ACCESS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]])&gt;=1">(Voedingkind_3): element hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]])&lt;=1">(Voedingkind_3): element hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']/hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']/hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@classCode)=('MAT')">(Voedingkind_3): de waarde van @classCode MOET 'MAT' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@determinerCode)=('KIND')">(Voedingkind_3): de waarde van @determinerCode MOET 'KIND' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Voedingkind_3): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Voedingkind_3): element hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']/hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Voedingkind_3)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:supply[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[@classCode='DIET'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode='PRD']/hl7:product[@classCode='ACCESS'][hl7:playingMaterial[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[@classCode='MAT'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Voedingkind_3): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.212 Substantie voeding kind (2015-06-10T09:55:27)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Voedingkind_3): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.212 Substantie voeding kind (2015-06-10T09:55:27).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]
Item: (BaringPRNKernset233)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode)=('COMP')">(BaringPRNKernset233): de waarde van @typeCode MOET 'COMP' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="../hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:deceasedInd/@value='true'">(BaringPRNKernset233): Fase perinatale sterfte alleen opnemen wanneer er sprake is van perinatale sterfte kind.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]
Item: (Faseperinatalesterfte)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]
Item: (Faseperinatalesterfte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="string(@classCode)=('OBS')">(Faseperinatalesterfte): de waarde van @classCode MOET 'OBS' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="string(@moodCode)=('EVN')">(Faseperinatalesterfte): de waarde van @moodCode MOET 'EVN' zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433'])&gt;=1">(Faseperinatalesterfte): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433'])&lt;=1">(Faseperinatalesterfte): element hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&gt;=1">(Faseperinatalesterfte): element hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')])&lt;=1">(Faseperinatalesterfte): element hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code])&gt;=1">(Faseperinatalesterfte): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code])&lt;=1">(Faseperinatalesterfte): element hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']
Item: (Faseperinatalesterfte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="string(@root)=('2.16.840.1.113883.2.4.6.10.90.900433')">(Faseperinatalesterfte): de waarde van @root MOET '2.16.840.1.113883.2.4.6.10.90.900433' zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')]
Item: (Faseperinatalesterfte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:code[(@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="@nullFlavor or (@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Faseperinatalesterfte): de elementwaarde MOET een zijn van 'code 'FasePerinataleSterfte' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Faseperinatalesterfte)
-->
   <rule context="*[hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[@typeCode='COMP'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <let name="theCodeSystemVersion" value="@codeSystemVersion"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem][not(@codeSystemVersion) or @codeSystemVersion=$theCodeSystemVersion]])">(Faseperinatalesterfte): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.10 Fase Perinatale Sterfte (2.2) (2014-08-13T09:40:49)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Faseperinatalesterfte): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.10 Fase Perinatale Sterfte (2.2) (2014-08-13T09:40:49).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(Faseperinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "CE" bevatten, gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
