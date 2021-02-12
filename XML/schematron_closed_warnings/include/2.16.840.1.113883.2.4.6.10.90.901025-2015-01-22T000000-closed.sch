<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901025
Name: Administratief geboortebericht (2.2)
Description: Template: Administratief geboortebericht 2.2
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000-closed">
   <title>Administratief geboortebericht (2.2)</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']])]"
         id="d15e50967-true-d535868e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e50967-true-d535868e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']] (rule-reference: d15e50967-true-d535868e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code = 'NICTIZEd2005-Okt'] | self::hl7:interactionId[@root = '2.16.840.1.113883.1.6'] | self::hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810'] | self::hl7:processingCode[@code = 'P'] | self::hl7:processingModeCode[@code = 'T'] | self::hl7:acceptAckCode[@code = 'AL' or @code = 'NE'] | self::hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] | self::hl7:receiver[hl7:device] | self::hl7:sender[not(@nullFlavor)][hl7:device] | self::hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'])]"
         id="d15e50976-true-d535979e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e50976-true-d535979e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code = 'NICTIZEd2005-Okt'] | hl7:interactionId[@root = '2.16.840.1.113883.1.6'] | hl7:profileId[@root = '2.16.840.1.113883.2.4.3.11.1'][@extension = '810'] | hl7:processingCode[@code = 'P'] | hl7:processingModeCode[@code = 'T'] | hl7:acceptAckCode[@code = 'AL' or @code = 'NE'] | hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] | hl7:receiver[hl7:device] | hl7:sender[not(@nullFlavor)][hl7:device] | hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN'] (rule-reference: d15e50976-true-d535979e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:attentionLine[hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:value[not(@nullFlavor)])]"
         id="d536037e18-true-d536062e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="not(.)">(TransmissionWrapperAttentionLine)/d536037e18-true-d536062e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:keyWordText[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:value[not(@nullFlavor)] (rule-reference: d536037e18-true-d536062e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d535984e117-true-d536093e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d535984e117-true-d536093e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d535984e117-true-d536093e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:receiver[hl7:device]/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d536098e25-true-d536117e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d536098e25-true-d536117e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d536098e25-true-d536117e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d535984e126-true-d536146e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d535984e126-true-d536146e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d535984e126-true-d536146e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)][hl7:device]/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d536151e25-true-d536170e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d536151e25-true-d536170e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d536151e25-true-d536170e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/*[not(self::hl7:code[@codeSystem = '2.16.840.1.113883.1.18' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:authorOrPerformer[@typeCode][hl7:participant] | self::hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson] | self::hl7:reason[hl7:justifyingDetectedIssueEvent] | self::hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]])]"
         id="d15e50982-true-d536291e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e50982-true-d536291e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = '2.16.840.1.113883.1.18' or @nullFlavor] | hl7:effectiveTime | hl7:authorOrPerformer[@typeCode][hl7:participant] | hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson] | hl7:reason[hl7:justifyingDetectedIssueEvent] | hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]] (rule-reference: d15e50982-true-d536291e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/*[not(self::hl7:participant[not(@nullFlavor)])]"
         id="d536313e99-true-d536429e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536313e99-true-d536429e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant[not(@nullFlavor)] (rule-reference: d536313e99-true-d536429e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/*[not(self::hl7:AssignedDevice | self::hl7:AssignedPerson[hl7:Organization])]"
         id="d536313e109-true-d536513e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536313e109-true-d536513e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedDevice | hl7:AssignedPerson[hl7:Organization] (rule-reference: d536313e109-true-d536513e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.2'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.6'] | self::hl7:id[@root = '2.16.528.1.1007.4'] | self::hl7:id | self::hl7:Organization | self::hl7:templateId)]"
         id="d536313e113-true-d536579e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536313e113-true-d536579e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.2'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.6'] | hl7:id[@root = '2.16.528.1.1007.4'] | hl7:id | hl7:Organization | hl7:templateId (rule-reference: d536313e113-true-d536579e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr[hl7:city])]"
         id="d536520e32-true-d536670e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536520e32-true-d536670e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr[hl7:city] (rule-reference: d536520e32-true-d536670e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr[hl7:city]/*[not(self::hl7:city[not(@nullFlavor)])]"
         id="d536520e81-true-d536745e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536520e81-true-d536745e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city[not(@nullFlavor)] (rule-reference: d536520e81-true-d536745e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList[hl7:assignedPerson] | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d536313e115-true-d536860e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536313e115-true-d536860e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList[hl7:assignedPerson] | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d536313e115-true-d536860e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d536764e42-true-d536941e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536764e42-true-d536941e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d536764e42-true-d536941e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d536764e47-true-d536958e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536764e47-true-d536958e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d536764e47-true-d536958e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d536764e59-true-d537025e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536764e59-true-d537025e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d536764e59-true-d537025e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:authorOrPerformer[@typeCode][hl7:participant]/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson[hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d536764e105-true-d537100e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d536764e105-true-d537100e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d536764e105-true-d537100e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/*[not(self::hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization])]"
         id="d537120e63-true-d537191e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d537120e63-true-d537191e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization] (rule-reference: d537120e63-true-d537191e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList[hl7:assignedPerson] | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d537120e70-true-d537294e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d537120e70-true-d537294e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root = '2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList[hl7:assignedPerson] | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d537120e70-true-d537294e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d537198e46-true-d537375e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d537198e46-true-d537375e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d537198e46-true-d537375e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:assignedPrincipalChoiceList[hl7:assignedPerson]/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d537198e51-true-d537392e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d537198e51-true-d537392e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d537198e51-true-d537392e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d537198e63-true-d537459e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d537198e63-true-d537459e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.528.1.1007'][@extension = '4'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.11'][@extension = '7'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d537198e63-true-d537459e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:overseer[@typeCode = 'RESP'][hl7:AssignedPerson]/hl7:AssignedPerson[not(@nullFlavor)][hl7:Organization]/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d537198e109-true-d537534e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d537198e109-true-d537534e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d537198e109-true-d537534e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/*[not(self::hl7:justifyingDetectedIssueEvent)]"
         id="d536296e68-true-d537566e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d536296e68-true-d537566e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:justifyingDetectedIssueEvent (rule-reference: d536296e68-true-d537566e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/*[not(self::hl7:id | self::hl7:code[not(@nullFlavor)] | self::hl7:text | self::hl7:value | self::hl7:triggerFor[hl7:actOrderRequired] | self::hl7:targetOf)]"
         id="d536296e74-true-d537611e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d536296e74-true-d537611e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[not(@nullFlavor)] | hl7:text | hl7:value | hl7:triggerFor[hl7:actOrderRequired] | hl7:targetOf (rule-reference: d536296e74-true-d537611e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/hl7:triggerFor[hl7:actOrderRequired]/*[not(self::hl7:actOrderRequired)]"
         id="d537573e39-true-d537652e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d537573e39-true-d537652e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actOrderRequired (rule-reference: d537573e39-true-d537652e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/hl7:triggerFor[hl7:actOrderRequired]/hl7:actOrderRequired/*[not(self::hl7:code | self::hl7:effectiveTime | self::hl7:subject[hl7:participant])]"
         id="d537573e63-true-d537679e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d537573e63-true-d537679e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:effectiveTime | hl7:subject[hl7:participant] (rule-reference: d537573e63-true-d537679e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/hl7:triggerFor[hl7:actOrderRequired]/hl7:actOrderRequired/hl7:subject[hl7:participant]/*[not(self::hl7:participant)]"
         id="d537573e79-true-d537708e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d537573e79-true-d537708e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant (rule-reference: d537573e79-true-d537708e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/hl7:triggerFor[hl7:actOrderRequired]/hl7:actOrderRequired/hl7:subject[hl7:participant]/hl7:participant/*[not(self::hl7:code)]"
         id="d537573e94-true-d537725e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d537573e94-true-d537725e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code (rule-reference: d537573e94-true-d537725e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/hl7:targetOf/*[not(self::hl7:source[@moodCode])]"
         id="d537573e109-true-d537748e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d537573e109-true-d537748e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:source[@moodCode] (rule-reference: d537573e109-true-d537748e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:reason[hl7:justifyingDetectedIssueEvent]/hl7:justifyingDetectedIssueEvent/hl7:targetOf/hl7:source[@moodCode]/*[not(self::hl7:code | self::hl7:text)]"
         id="d537573e142-true-d537770e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d537573e142-true-d537770e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:text (rule-reference: d537573e142-true-d537770e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/*[not(self::hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]])]"
         id="d15e50988-true-d537810e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e50988-true-d537810e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]] (rule-reference: d15e50988-true-d537810e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/*[not(self::hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] | self::hl7:statusCode[@code = 'active'] | self::hl7:effectiveTime | self::hl7:effectiveTime | self::hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson])]"
         id="d15e50990-true-d537853e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e50990-true-d537853e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] | hl7:statusCode[@code = 'active'] | hl7:effectiveTime | hl7:effectiveTime | hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson] (rule-reference: d15e50990-true-d537853e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson]/*[not(self::hl7:identifiedPerson[not(@nullFlavor)])]"
         id="d15e51009-true-d537900e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e51009-true-d537900e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:identifiedPerson[not(@nullFlavor)] (rule-reference: d15e51009-true-d537900e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:id | self::hl7:addr[not(@nullFlavor)] | self::hl7:statusCode | self::hl7:identifiedPerson[not(@nullFlavor)] | self::hl7:assigningOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'][hl7:contactParty])]"
         id="d15e51011-true-d537937e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e51011-true-d537937e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr[not(@nullFlavor)] | hl7:statusCode | hl7:identifiedPerson[not(@nullFlavor)] | hl7:assigningOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'][hl7:contactParty] (rule-reference: d15e51011-true-d537937e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:administrativeGenderCode | self::hl7:birthTime[not(@nullFlavor)] | self::hl7:deceasedInd | self::hl7:deceasedTime | self::hl7:multipleBirthInd | self::hl7:multipleBirthOrderNumber | self::hl7:personalRelationship[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]] | self::hl7:birthPlace)]"
         id="d15e51034-true-d538019e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e51034-true-d538019e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:administrativeGenderCode | hl7:birthTime[not(@nullFlavor)] | hl7:deceasedInd | hl7:deceasedTime | hl7:multipleBirthInd | hl7:multipleBirthOrderNumber | hl7:personalRelationship[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]] | hl7:birthPlace (rule-reference: d15e51034-true-d538019e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder)]"
         id="d15e51071-true-d538089e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e51071-true-d538089e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] | hl7:relationshipHolder (rule-reference: d15e51071-true-d538089e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d15e51078-true-d538117e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e51078-true-d538117e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d15e51078-true-d538117e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]/hl7:ControlActProcess[not(@nullFlavor)][@moodCode = 'EVN']/hl7:subject[hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'][hl7:contactParty]/*[not(self::hl7:id | self::hl7:contactParty)]"
         id="d15e51091-true-d538157e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d15e51091-true-d538157e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:contactParty (rule-reference: d15e51091-true-d538157e0)</assert>
   </rule>
</pattern>
