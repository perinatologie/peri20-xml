<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.900927
Name: Aanmelding zwangerschap
Description: Template: Aanmelding zwangerschap (2.2) naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000-closed">
   <title>Aanmelding zwangerschap</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])]"
         id="d14e31264-true-d378485e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not(.)">(aanmelding-zwangerschap-22)/d14e31264-true-d378485e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] (rule-reference: d14e31264-true-d378485e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code='NICTIZEd2005-Okt'] | self::hl7:interactionId[@root='2.16.840.1.113883.1.6'] | self::hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | self::hl7:processingCode[@code='P'] | self::hl7:processingModeCode[@code='T'] | self::hl7:acceptAckCode[@code='AL' or @code='NE'] | self::hl7:attentionLine | self::hl7:receiver | self::hl7:sender[not(@nullFlavor)] | self::hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])]"
         id="d14e31273-true-d378612e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not(.)">(aanmelding-zwangerschap-22)/d14e31273-true-d378612e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code='NICTIZEd2005-Okt'] | hl7:interactionId[@root='2.16.840.1.113883.1.6'] | hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | hl7:processingCode[@code='P'] | hl7:processingModeCode[@code='T'] | hl7:acceptAckCode[@code='AL' or @code='NE'] | hl7:attentionLine | hl7:receiver | hl7:sender[not(@nullFlavor)] | hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] (rule-reference: d14e31273-true-d378612e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/*[not(self::hl7:keyWordText[not(@nullFlavor)] | self::hl7:value[not(@nullFlavor)])]"
         id="d378670e18-true-d378689e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="not(.)">(TransmissionWrapperAttentionLine)/d378670e18-true-d378689e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:keyWordText[not(@nullFlavor)] | hl7:value[not(@nullFlavor)] (rule-reference: d378670e18-true-d378689e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d378616e117-true-d378717e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d378616e117-true-d378717e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d378616e117-true-d378717e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d378721e25-true-d378740e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d378721e25-true-d378740e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d378721e25-true-d378740e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d378616e126-true-d378768e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d378616e126-true-d378768e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d378616e126-true-d378768e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d378772e25-true-d378791e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d378772e25-true-d378791e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d378772e25-true-d378791e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/*[not(self::hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:authorOrPerformer | self::hl7:overseer[@typeCode='RESP'] | self::hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]])]"
         id="d14e31279-true-d378932e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900927-2015-02-19T000000.html"
              test="not(.)">(aanmelding-zwangerschap-22)/d14e31279-true-d378932e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] | hl7:effectiveTime | hl7:authorOrPerformer | hl7:overseer[@typeCode='RESP'] | hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]] (rule-reference: d14e31279-true-d378932e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/*[not(self::hl7:participant[not(@nullFlavor)])]"
         id="d378953e99-true-d379069e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d378953e99-true-d379069e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant[not(@nullFlavor)] (rule-reference: d378953e99-true-d379069e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/*[not(self::hl7:AssignedDevice | self::hl7:AssignedPerson)]"
         id="d378953e109-true-d379152e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d378953e109-true-d379152e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedDevice | hl7:AssignedPerson (rule-reference: d378953e109-true-d379152e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/*[not(self::hl7:id[@root='2.16.528.1.1007.3.2'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | self::hl7:id[@root='2.16.528.1.1007.4'] | self::hl7:id | self::hl7:Organization | self::hl7:templateId)]"
         id="d378953e113-true-d379217e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d378953e113-true-d379217e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.2'] | hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | hl7:id[@root='2.16.528.1.1007.4'] | hl7:id | hl7:Organization | hl7:templateId (rule-reference: d378953e113-true-d379217e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d379158e32-true-d379307e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d379158e32-true-d379307e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d379158e32-true-d379307e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr/*[not(self::hl7:city[not(@nullFlavor)])]"
         id="d379158e81-true-d379381e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d379158e81-true-d379381e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city[not(@nullFlavor)] (rule-reference: d379158e81-true-d379381e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d378953e115-true-d379497e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d378953e115-true-d379497e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d378953e115-true-d379497e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d379399e42-true-d379578e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d379399e42-true-d379578e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d379399e42-true-d379578e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d379399e47-true-d379594e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d379399e47-true-d379594e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d379399e47-true-d379594e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d379399e59-true-d379660e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d379399e59-true-d379660e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d379399e59-true-d379660e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d379399e105-true-d379734e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d379399e105-true-d379734e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d379399e105-true-d379734e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/*[not(self::hl7:AssignedPerson[not(@nullFlavor)])]"
         id="d379753e63-true-d379824e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d379753e63-true-d379824e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedPerson[not(@nullFlavor)] (rule-reference: d379753e63-true-d379824e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d379753e70-true-d379928e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d379753e70-true-d379928e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d379753e70-true-d379928e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d379830e46-true-d380009e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d379830e46-true-d380009e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d379830e46-true-d380009e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d379830e51-true-d380025e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d379830e51-true-d380025e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d379830e51-true-d380025e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d379830e63-true-d380091e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d379830e63-true-d380091e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d379830e63-true-d380091e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d379830e109-true-d380165e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d379830e109-true-d380165e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d379830e109-true-d380165e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/*[not(self::hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])]"
         id="d378936e86-true-d380239e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901034-2015-03-25T095744.html"
              test="not(.)">(ControlActMasterFileActPeriAanmZw)/d378936e86-true-d380239e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] (rule-reference: d378936e86-true-d380239e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/*[not(self::hl7:id | self::hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] | self::hl7:statusCode[@code='active' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:subject1 | self::hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]])]"
         id="d380243e13-true-d380351e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(.)">(RegistrationEventACTPeriAanmZw)/d380243e13-true-d380351e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] | hl7:statusCode[@code='active' or @nullFlavor] | hl7:effectiveTime | hl7:subject1 | hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]] (rule-reference: d380243e13-true-d380351e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/*[not(self::hl7:low)]"
         id="d380243e38-true-d380385e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(.)">(RegistrationEventACTPeriAanmZw)/d380243e38-true-d380385e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low (rule-reference: d380243e38-true-d380385e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/*[not(self::hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']])]"
         id="d380243e55-true-d380482e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(.)">(RegistrationEventACTPeriAanmZw)/d380243e55-true-d380482e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']] (rule-reference: d380243e55-true-d380482e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'] | self::hl7:id[not(@nullFlavor)] | self::hl7:statusCode[@code='active' or @nullFlavor] | self::hl7:subject[@typeCode='SBJ'] | self::hl7:performer[@typeCode='PPRF'] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]])]"
         id="d380243e57-true-d380558e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(.)">(RegistrationEventACTPeriAanmZw)/d380243e57-true-d380558e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927'] | hl7:id[not(@nullFlavor)] | hl7:statusCode[@code='active' or @nullFlavor] | hl7:subject[@typeCode='SBJ'] | hl7:performer[@typeCode='PPRF'] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] (rule-reference: d380243e57-true-d380558e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/*[not(self::hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']])]"
         id="d380582e5-true-d380632e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="not(.)">(Vrouwcounseling2)/d380582e5-true-d380632e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']] (rule-reference: d380582e5-true-d380632e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/*[not(self::hl7:id | self::hl7:id | self::hl7:addr | self::hl7:statusCode[@code='active'] | self::hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d380582e17-true-d380690e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="not(.)">(Vrouwcounseling2)/d380582e17-true-d380690e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:id | hl7:addr | hl7:statusCode[@code='active'] | hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d380582e17-true-d380690e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:addr/*[not(self::hl7:postalCode)]"
         id="d380710e5-true-d380724e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="not(.)">(Adresvrouw)/d380710e5-true-d380724e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:postalCode (rule-reference: d380710e5-true-d380724e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d380582e47-true-d380766e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2014-01-21T000000.html"
              test="not(.)">(Vrouwcounseling2)/d380582e47-true-d380766e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d380582e47-true-d380766e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/*[not(self::hl7:responsibleParty[@classCode='ASSIGNED'])]"
         id="d380796e5-true-d380822e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="not(.)">(ZorgverlenerInstellingZonderType)/d380796e5-true-d380822e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:responsibleParty[@classCode='ASSIGNED'] (rule-reference: d380796e5-true-d380822e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:agentPerson | self::hl7:representedOrganization[not(@nullFlavor)])]"
         id="d380796e59-true-d380861e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="not(.)">(ZorgverlenerInstellingZonderType)/d380796e59-true-d380861e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | hl7:agentPerson | hl7:representedOrganization[not(@nullFlavor)] (rule-reference: d380796e59-true-d380861e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:agentPerson/*[not(self::hl7:name)]"
         id="d380796e86-true-d380898e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="not(.)">(ZorgverlenerInstellingZonderType)/d380796e86-true-d380898e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d380796e86-true-d380898e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:performer[@typeCode='PPRF']/hl7:responsibleParty[@classCode='ASSIGNED']/hl7:representedOrganization[not(@nullFlavor)]/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] | self::hl7:name)]"
         id="d380796e88-true-d380927e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900926-2015-03-12T000000.html"
              test="not(.)">(ZorgverlenerInstellingZonderType)/d380796e88-true-d380927e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] | hl7:name (rule-reference: d380796e88-true-d380927e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/*[not(self::hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])]"
         id="d380243e89-true-d380976e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(.)">(RegistrationEventACTPeriAanmZw)/d380243e89-true-d380976e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]] (rule-reference: d380243e89-true-d380976e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]]/hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900927']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/*[not(self::hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] | self::hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')])]"
         id="d380963e8-true-d380997e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901035-2015-03-25T100530.html"
              test="not(.)">(RegistrationEventACTPeriAanmZw)/d380963e8-true-d380997e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] | hl7:value[(@code='aan' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] (rule-reference: d380963e8-true-d380997e0)</assert>
   </rule>
</pattern>
