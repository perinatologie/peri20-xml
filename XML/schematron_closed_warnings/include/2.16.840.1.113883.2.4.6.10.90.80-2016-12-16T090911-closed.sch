<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.80
Name: Counseling
Description: Template: Counseling naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911-closed">
   <title>Counseling</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/*[not(self::hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])]"
         id="d14e6641-true-d345771e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not(.)">(counseling-23)/d14e6641-true-d345771e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] (rule-reference: d14e6641-true-d345771e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code='NICTIZEd2005-Okt'] | self::hl7:interactionId[@root='2.16.840.1.113883.1.6'] | self::hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | self::hl7:processingCode[@code='P'] | self::hl7:processingModeCode[@code='T'] | self::hl7:acceptAckCode[@code='AL' or @code='NE'] | self::hl7:attentionLine | self::hl7:receiver | self::hl7:sender[not(@nullFlavor)] | self::hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])]"
         id="d14e6652-true-d345931e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not(.)">(counseling-23)/d14e6652-true-d345931e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code='NICTIZEd2005-Okt'] | hl7:interactionId[@root='2.16.840.1.113883.1.6'] | hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | hl7:processingCode[@code='P'] | hl7:processingModeCode[@code='T'] | hl7:acceptAckCode[@code='AL' or @code='NE'] | hl7:attentionLine | hl7:receiver | hl7:sender[not(@nullFlavor)] | hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] (rule-reference: d14e6652-true-d345931e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/*[not(self::hl7:keyWordText[not(@nullFlavor)] | self::hl7:value[not(@nullFlavor)])]"
         id="d345989e18-true-d346008e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="not(.)">(TransmissionWrapperAttentionLine)/d345989e18-true-d346008e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:keyWordText[not(@nullFlavor)] | hl7:value[not(@nullFlavor)] (rule-reference: d345989e18-true-d346008e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d345935e117-true-d346036e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d345935e117-true-d346036e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d345935e117-true-d346036e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d346040e25-true-d346059e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d346040e25-true-d346059e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d346040e25-true-d346059e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d345935e126-true-d346087e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d345935e126-true-d346087e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d345935e126-true-d346087e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d346091e25-true-d346110e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d346091e25-true-d346110e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d346091e25-true-d346110e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/*[not(self::hl7:effectiveTime | self::hl7:authorOrPerformer | self::hl7:overseer[@typeCode='RESP'] | self::hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]])]"
         id="d14e6656-true-d346289e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.80-2016-12-16T090911.html"
              test="not(.)">(counseling-23)/d14e6656-true-d346289e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:effectiveTime | hl7:authorOrPerformer | hl7:overseer[@typeCode='RESP'] | hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]] (rule-reference: d14e6656-true-d346289e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/*[not(self::hl7:participant[not(@nullFlavor)])]"
         id="d346304e99-true-d346420e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346304e99-true-d346420e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant[not(@nullFlavor)] (rule-reference: d346304e99-true-d346420e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/*[not(self::hl7:AssignedDevice | self::hl7:AssignedPerson)]"
         id="d346304e109-true-d346503e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346304e109-true-d346503e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedDevice | hl7:AssignedPerson (rule-reference: d346304e109-true-d346503e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/*[not(self::hl7:id[@root='2.16.528.1.1007.3.2'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | self::hl7:id[@root='2.16.528.1.1007.4'] | self::hl7:id | self::hl7:Organization | self::hl7:templateId)]"
         id="d346304e113-true-d346568e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346304e113-true-d346568e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.2'] | hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | hl7:id[@root='2.16.528.1.1007.4'] | hl7:id | hl7:Organization | hl7:templateId (rule-reference: d346304e113-true-d346568e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d346509e32-true-d346658e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346509e32-true-d346658e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d346509e32-true-d346658e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr/*[not(self::hl7:city[not(@nullFlavor)])]"
         id="d346509e81-true-d346732e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346509e81-true-d346732e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city[not(@nullFlavor)] (rule-reference: d346509e81-true-d346732e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d346304e115-true-d346848e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346304e115-true-d346848e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d346304e115-true-d346848e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d346750e42-true-d346929e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346750e42-true-d346929e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d346750e42-true-d346929e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d346750e47-true-d346945e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346750e47-true-d346945e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d346750e47-true-d346945e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d346750e59-true-d347011e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346750e59-true-d347011e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d346750e59-true-d347011e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d346750e105-true-d347085e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d346750e105-true-d347085e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d346750e105-true-d347085e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/*[not(self::hl7:AssignedPerson[not(@nullFlavor)])]"
         id="d347104e63-true-d347175e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d347104e63-true-d347175e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedPerson[not(@nullFlavor)] (rule-reference: d347104e63-true-d347175e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d347104e70-true-d347279e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d347104e70-true-d347279e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d347104e70-true-d347279e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d347181e46-true-d347360e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d347181e46-true-d347360e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d347181e46-true-d347360e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d347181e51-true-d347376e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d347181e51-true-d347376e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d347181e51-true-d347376e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d347181e63-true-d347442e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d347181e63-true-d347442e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d347181e63-true-d347442e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d347181e109-true-d347516e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d347181e109-true-d347516e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d347181e109-true-d347516e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/*[not(self::hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]])]"
         id="d346293e74-true-d347664e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901037-2016-12-16T095739.html"
              test="not(.)">(ControlActMasterFileActPeriCouns)/d346293e74-true-d347664e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]] (rule-reference: d346293e74-true-d347664e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/*[not(self::hl7:id | self::hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] | self::hl7:statusCode[@code='active' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:subject1 | self::hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]])]"
         id="d347668e13-true-d347911e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e13-true-d347911e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor] | hl7:statusCode[@code='active' or @nullFlavor] | hl7:effectiveTime | hl7:subject1 | hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]] (rule-reference: d347668e13-true-d347911e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:effectiveTime/*[not(self::hl7:low)]"
         id="d347668e38-true-d347945e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e38-true-d347945e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low (rule-reference: d347668e38-true-d347945e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/*[not(self::hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']])]"
         id="d347668e55-true-d348177e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e55-true-d348177e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']] (rule-reference: d347668e55-true-d348177e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80'] | self::hl7:statusCode[@code='active' or @nullFlavor] | self::hl7:subject[@typeCode='SBJ'] | self::hl7:verifier[@typeCode='LA'] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]])]"
         id="d347668e57-true-d348431e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e57-true-d348431e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80'] | hl7:statusCode[@code='active' or @nullFlavor] | hl7:subject[@typeCode='SBJ'] | hl7:verifier[@typeCode='LA'] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]] (rule-reference: d347668e57-true-d348431e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode='SBJ']/*[not(self::hl7:patient[@classCode='PAT'])]"
         id="d348447e27-true-d348491e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="not(.)">(Vrouwcounseling2)/d348447e27-true-d348491e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[@classCode='PAT'] (rule-reference: d348447e27-true-d348491e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/*[not(self::hl7:id | self::hl7:addr | self::hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d348447e39-true-d348539e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="not(.)">(Vrouwcounseling2)/d348447e39-true-d348539e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d348447e39-true-d348539e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:addr/*[not(self::hl7:postalCode)]"
         id="d348551e5-true-d348565e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="not(.)">(Adresvrouw)/d348551e5-true-d348565e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:postalCode (rule-reference: d348551e5-true-d348565e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT']/hl7:patientPerson[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d348447e50-true-d348601e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900923-2016-12-19T104507.html"
              test="not(.)">(Vrouwcounseling2)/d348447e50-true-d348601e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d348447e50-true-d348601e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode='LA']/*[not(self::hl7:assignedPerson[@classCode='ASSIGNED'][not(@nullFlavor)])]"
         id="d347668e81-true-d348676e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e81-true-d348676e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[@classCode='ASSIGNED'][not(@nullFlavor)] (rule-reference: d347668e81-true-d348676e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode='LA']/hl7:assignedPerson[@classCode='ASSIGNED'][not(@nullFlavor)]/*[not(self::hl7:representedOrganization[@classCode='ORG'][not(@nullFlavor)])]"
         id="d347668e85-true-d348725e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e85-true-d348725e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:representedOrganization[@classCode='ORG'][not(@nullFlavor)] (rule-reference: d347668e85-true-d348725e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:verifier[@typeCode='LA']/hl7:assignedPerson[@classCode='ASSIGNED'][not(@nullFlavor)]/hl7:representedOrganization[@classCode='ORG'][not(@nullFlavor)]/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] | self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:name)]"
         id="d347668e89-true-d348761e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e89-true-d348761e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.96.6' or @root='2.16.528.1.1007.3.3')] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.96.6'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:name (rule-reference: d347668e89-true-d348761e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]])]"
         id="d347668e102-true-d348826e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e102-true-d348826e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]] (rule-reference: d347668e102-true-d348826e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')]]/*[not(self::hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)])]"
         id="d348813e8-true-d348851e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d348813e8-true-d348851e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='RedenVerzending' and @codeSystem='2.16.840.1.113883.2.4.4.13.53')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.1-2014-04-14T143059.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)] (rule-reference: d348813e8-true-d348851e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']])]"
         id="d347668e109-true-d348884e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e109-true-d348884e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']] (rule-reference: d347668e109-true-d348884e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004'] | self::hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d348871e8-true-d348910e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d348871e8-true-d348910e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900004'] | hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d348871e8-true-d348910e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']])]"
         id="d347668e116-true-d348947e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e116-true-d348947e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']] (rule-reference: d347668e116-true-d348947e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928'] | self::hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d348934e8-true-d348973e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d348934e8-true-d348973e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900928'] | hl7:code[(@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d348934e8-true-d348973e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d347668e123-true-d349010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e123-true-d349010e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d347668e123-true-d349010e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d348997e8-true-d349031e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d348997e8-true-d349031e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d348997e8-true-d349031e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d347668e130-true-d349062e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e130-true-d349062e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d347668e130-true-d349062e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d349049e8-true-d349087e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349049e8-true-d349087e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d349049e8-true-d349087e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/*[not(self::hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']])]"
         id="d347668e138-true-d349168e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e138-true-d349168e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']] (rule-reference: d347668e138-true-d349168e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932'] | self::hl7:id | self::hl7:code[(@code='1' and @codeSystem='2.16.840.1.113883.2.4.4.13.31')] | self::hl7:effectiveTime | self::hl7:performer[@typeCode='PRF'] | self::hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])]"
         id="d349107e8-true-d349242e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349107e8-true-d349242e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932'] | hl7:id | hl7:code[(@code='1' and @codeSystem='2.16.840.1.113883.2.4.4.13.31')] | hl7:effectiveTime | hl7:performer[@typeCode='PRF'] | hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d349107e8-true-d349242e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode='PRF']/*[not(self::hl7:assignedEntity[@classCode='ASSIGNED'])]"
         id="d349272e5-true-d349310e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="not(.)">(ZorgverlenerenPerformer)/d349272e5-true-d349310e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedEntity[@classCode='ASSIGNED'] (rule-reference: d349272e5-true-d349310e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode='PRF']/hl7:assignedEntity[@classCode='ASSIGNED']/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:assignedPerson[@classCode='PSN'][not(@nullFlavor)])]"
         id="d349272e32-true-d349347e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="not(.)">(ZorgverlenerenPerformer)/d349272e32-true-d349347e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | hl7:assignedPerson[@classCode='PSN'][not(@nullFlavor)] (rule-reference: d349272e32-true-d349347e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:performer[@typeCode='PRF']/hl7:assignedEntity[@classCode='ASSIGNED']/hl7:assignedPerson[@classCode='PSN'][@classCode='PSN'][not(@nullFlavor)]/*[not(self::hl7:name)]"
         id="d349272e45-true-d349390e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="not(.)">(ZorgverlenerenPerformer)/d349272e45-true-d349390e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d349272e45-true-d349390e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d349107e77-true-d349415e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349107e77-true-d349415e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d349107e77-true-d349415e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d349402e5-true-d349431e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349402e5-true-d349431e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d349402e5-true-d349431e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d349107e85-true-d349456e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349107e85-true-d349456e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d349107e85-true-d349456e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900932']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d349443e5-true-d349472e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349443e5-true-d349472e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d349443e5-true-d349472e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/*[not(self::hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']])]"
         id="d347668e145-true-d349545e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d347668e145-true-d349545e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']] (rule-reference: d347668e145-true-d349545e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933'] | self::hl7:id | self::hl7:code[(@code='2' and @codeSystem='2.16.840.1.113883.2.4.4.13.31')] | self::hl7:effectiveTime | self::hl7:performer[@typeCode='PRF'] | self::hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])]"
         id="d349484e8-true-d349619e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349484e8-true-d349619e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933'] | hl7:id | hl7:code[(@code='2' and @codeSystem='2.16.840.1.113883.2.4.4.13.31')] | hl7:effectiveTime | hl7:performer[@typeCode='PRF'] | hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:outboundRelationship[@typeCode='PERT'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d349484e8-true-d349619e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode='PRF']/*[not(self::hl7:assignedEntity[@classCode='ASSIGNED'])]"
         id="d349649e5-true-d349687e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="not(.)">(ZorgverlenerenPerformer)/d349649e5-true-d349687e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedEntity[@classCode='ASSIGNED'] (rule-reference: d349649e5-true-d349687e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode='PRF']/hl7:assignedEntity[@classCode='ASSIGNED']/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:assignedPerson[@classCode='PSN'][not(@nullFlavor)])]"
         id="d349649e32-true-d349724e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="not(.)">(ZorgverlenerenPerformer)/d349649e32-true-d349724e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | hl7:assignedPerson[@classCode='PSN'][not(@nullFlavor)] (rule-reference: d349649e32-true-d349724e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:performer[@typeCode='PRF']/hl7:assignedEntity[@classCode='ASSIGNED']/hl7:assignedPerson[@classCode='PSN'][@classCode='PSN'][not(@nullFlavor)]/*[not(self::hl7:name)]"
         id="d349649e45-true-d349767e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901073-2016-12-16T114337.html"
              test="not(.)">(ZorgverlenerenPerformer)/d349649e45-true-d349767e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d349649e45-true-d349767e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d349484e73-true-d349792e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349484e73-true-d349792e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d349484e73-true-d349792e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d349779e5-true-d349808e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349779e5-true-d349808e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d349779e5-true-d349808e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d349484e78-true-d349833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349484e78-true-d349833e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d349484e78-true-d349833e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:REPC_IN004014NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]]/hl7:registrationProcess[hl7:code[(@code='900000' and @codeSystem='2.16.840.1.113883.2.4.15.4') or @nullFlavor]]/hl7:subject2[hl7:CareProvisionEvent[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]]/hl7:CareProvisionEvent[@classCode='PCPR'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.80']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.900933']]/hl7:outboundRelationship[@typeCode='PERT'][@typeCode='PERT'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d349820e5-true-d349849e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901036-2016-12-16T095457.html"
              test="not(.)">(RegistrationEventACTPeriCouns)/d349820e5-true-d349849e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d349820e5-true-d349849e0)</assert>
   </rule>
</pattern>
