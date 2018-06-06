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
   <rule context="/*[not(self::hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']])]"
         id="d14e42435-true-d384765e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42435-true-d384765e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']] (rule-reference: d14e42435-true-d384765e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code='NICTIZEd2005-Okt'] | self::hl7:interactionId[@root='2.16.840.1.113883.1.6'] | self::hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | self::hl7:processingCode[@code='P'] | self::hl7:processingModeCode[@code='T'] | self::hl7:acceptAckCode[@code='AL' or @code='NE'] | self::hl7:attentionLine | self::hl7:receiver | self::hl7:sender[not(@nullFlavor)] | self::hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)])]"
         id="d14e42444-true-d384874e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42444-true-d384874e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code='NICTIZEd2005-Okt'] | hl7:interactionId[@root='2.16.840.1.113883.1.6'] | hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.1'][@extension='810'] | hl7:processingCode[@code='P'] | hl7:processingModeCode[@code='T'] | hl7:acceptAckCode[@code='AL' or @code='NE'] | hl7:attentionLine | hl7:receiver | hl7:sender[not(@nullFlavor)] | hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)] (rule-reference: d14e42444-true-d384874e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:attentionLine/*[not(self::hl7:keyWordText[not(@nullFlavor)] | self::hl7:value[not(@nullFlavor)])]"
         id="d384932e18-true-d384951e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.3.11.60.102.10.120-2014-07-15T000000.html"
              test="not(.)">(TransmissionWrapperAttentionLine)/d384932e18-true-d384951e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:keyWordText[not(@nullFlavor)] | hl7:value[not(@nullFlavor)] (rule-reference: d384932e18-true-d384951e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d384878e117-true-d384979e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d384878e117-true-d384979e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d384878e117-true-d384979e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:receiver/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d384983e25-true-d385002e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d384983e25-true-d385002e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d384983e25-true-d385002e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d384878e126-true-d385030e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901030-2015-03-23T154716.html"
              test="not(.)">(MCCI_MT000100_peri)/d384878e126-true-d385030e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d384878e126-true-d385030e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:sender[not(@nullFlavor)]/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d385034e25-true-d385053e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901031-2015-03-23T155128.html"
              test="not(.)">(TransmissionWrapperDevicePeri)/d385034e25-true-d385053e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d385034e25-true-d385053e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/*[not(self::hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:authorOrPerformer | self::hl7:overseer[@typeCode='RESP'] | self::hl7:reason | self::hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]])]"
         id="d14e42450-true-d385173e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42450-true-d385173e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem='2.16.840.1.113883.1.18' or @nullFlavor] | hl7:effectiveTime | hl7:authorOrPerformer | hl7:overseer[@typeCode='RESP'] | hl7:reason | hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]] (rule-reference: d14e42450-true-d385173e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/*[not(self::hl7:participant[not(@nullFlavor)])]"
         id="d385194e99-true-d385310e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385194e99-true-d385310e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant[not(@nullFlavor)] (rule-reference: d385194e99-true-d385310e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/*[not(self::hl7:AssignedDevice | self::hl7:AssignedPerson)]"
         id="d385194e109-true-d385393e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385194e109-true-d385393e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedDevice | hl7:AssignedPerson (rule-reference: d385194e109-true-d385393e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/*[not(self::hl7:id[@root='2.16.528.1.1007.3.2'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | self::hl7:id[@root='2.16.528.1.1007.4'] | self::hl7:id | self::hl7:Organization | self::hl7:templateId)]"
         id="d385194e113-true-d385458e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385194e113-true-d385458e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.2'] | hl7:id[@root='2.16.840.1.113883.2.4.6.6'] | hl7:id[@root='2.16.528.1.1007.4'] | hl7:id | hl7:Organization | hl7:templateId (rule-reference: d385194e113-true-d385458e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d385399e32-true-d385548e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385399e32-true-d385548e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d385399e32-true-d385548e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedDevice/hl7:Organization/hl7:addr/*[not(self::hl7:city[not(@nullFlavor)])]"
         id="d385399e81-true-d385622e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385399e81-true-d385622e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city[not(@nullFlavor)] (rule-reference: d385399e81-true-d385622e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d385194e115-true-d385738e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385194e115-true-d385738e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d385194e115-true-d385738e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d385640e42-true-d385819e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385640e42-true-d385819e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d385640e42-true-d385819e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d385640e47-true-d385835e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385640e47-true-d385835e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d385640e47-true-d385835e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d385640e59-true-d385901e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385640e59-true-d385901e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d385640e59-true-d385901e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:authorOrPerformer/hl7:participant[not(@nullFlavor)]/hl7:AssignedPerson/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d385640e105-true-d385975e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901041-2016-02-08T172125.html"
              test="not(.)">(ControlActAuthorOrPerformerPeri)/d385640e105-true-d385975e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d385640e105-true-d385975e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/*[not(self::hl7:AssignedPerson[not(@nullFlavor)])]"
         id="d385994e63-true-d386065e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d385994e63-true-d386065e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:AssignedPerson[not(@nullFlavor)] (rule-reference: d385994e63-true-d386065e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | self::hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:assignedPrincipalChoiceList | self::hl7:Organization[not(@nullFlavor)] | self::hl7:templateId)]"
         id="d385994e70-true-d386169e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d385994e70-true-d386169e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.7.3'] | hl7:id[@root='2.16.528.1.1003.1.3.5.4.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.102.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:assignedPrincipalChoiceList | hl7:Organization[not(@nullFlavor)] | hl7:templateId (rule-reference: d385994e70-true-d386169e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/*[not(self::hl7:assignedPerson[not(@nullFlavor)])]"
         id="d386071e46-true-d386250e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d386071e46-true-d386250e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedPerson[not(@nullFlavor)] (rule-reference: d386071e46-true-d386250e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:assignedPrincipalChoiceList/hl7:assignedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)])]"
         id="d386071e51-true-d386266e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d386071e51-true-d386266e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] (rule-reference: d386071e51-true-d386266e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.528.1.1007'][@extension='4'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | self::hl7:id | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:telecom | self::hl7:name[not(@nullFlavor)] | self::hl7:addr)]"
         id="d386071e63-true-d386332e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d386071e63-true-d386332e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.528.1.1007'][@extension='4'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11.25'] | hl7:id[@root='2.16.840.1.113883.2.4.3.11'][@extension='7'] | hl7:id | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:telecom | hl7:name[not(@nullFlavor)] | hl7:addr (rule-reference: d386071e63-true-d386332e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:overseer[@typeCode='RESP']/hl7:AssignedPerson[not(@nullFlavor)]/hl7:Organization[not(@nullFlavor)]/hl7:addr/*[not(self::hl7:city)]"
         id="d386071e109-true-d386406e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901042-2016-02-09T084428.html"
              test="not(.)">(ControlActOverseerPersonMcaiMfmiPeri)/d386071e109-true-d386406e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:city (rule-reference: d386071e109-true-d386406e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/*[not(self::hl7:justifyingDetectedIssueEvent)]"
         id="d385177e68-true-d386437e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d385177e68-true-d386437e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:justifyingDetectedIssueEvent (rule-reference: d385177e68-true-d386437e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/*[not(self::hl7:id | self::hl7:code[not(@nullFlavor)] | self::hl7:text | self::hl7:value | self::hl7:triggerFor | self::hl7:targetOf)]"
         id="d385177e74-true-d386481e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d385177e74-true-d386481e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[not(@nullFlavor)] | hl7:text | hl7:value | hl7:triggerFor | hl7:targetOf (rule-reference: d385177e74-true-d386481e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/*[not(self::hl7:actOrderRequired)]"
         id="d386443e39-true-d386521e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d386443e39-true-d386521e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actOrderRequired (rule-reference: d386443e39-true-d386521e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/*[not(self::hl7:code | self::hl7:effectiveTime | self::hl7:subject)]"
         id="d386443e63-true-d386547e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d386443e63-true-d386547e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:effectiveTime | hl7:subject (rule-reference: d386443e63-true-d386547e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/hl7:subject/*[not(self::hl7:participant)]"
         id="d386443e79-true-d386575e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d386443e79-true-d386575e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participant (rule-reference: d386443e79-true-d386575e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:triggerFor/hl7:actOrderRequired/hl7:subject/hl7:participant/*[not(self::hl7:code)]"
         id="d386443e94-true-d386591e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d386443e94-true-d386591e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code (rule-reference: d386443e94-true-d386591e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:targetOf/*[not(self::hl7:source)]"
         id="d386443e109-true-d386613e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d386443e109-true-d386613e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:source (rule-reference: d386443e109-true-d386613e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:reason/hl7:justifyingDetectedIssueEvent/hl7:targetOf/hl7:source/*[not(self::hl7:code | self::hl7:text)]"
         id="d386443e142-true-d386634e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901029-2015-02-19T131947.html"
              test="not(.)">(ControlActInitiating_peri)/d386443e142-true-d386634e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:text (rule-reference: d386443e142-true-d386634e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/*[not(self::hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])]"
         id="d14e42456-true-d386673e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42456-true-d386673e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] (rule-reference: d14e42456-true-d386673e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/*[not(self::hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] | self::hl7:statusCode[@code='active'] | self::hl7:effectiveTime | self::hl7:effectiveTime | self::hl7:subject1[not(@nullFlavor)])]"
         id="d14e42458-true-d386715e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42458-true-d386715e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] | hl7:statusCode[@code='active'] | hl7:effectiveTime | hl7:effectiveTime | hl7:subject1[not(@nullFlavor)] (rule-reference: d14e42458-true-d386715e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/*[not(self::hl7:identifiedPerson[not(@nullFlavor)])]"
         id="d14e42477-true-d386761e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42477-true-d386761e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:identifiedPerson[not(@nullFlavor)] (rule-reference: d14e42477-true-d386761e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:id | self::hl7:addr[not(@nullFlavor)] | self::hl7:statusCode | self::hl7:identifiedPerson[not(@nullFlavor)] | self::hl7:assigningOrganization[@classCode='ORG'])]"
         id="d14e42479-true-d386797e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42479-true-d386797e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr[not(@nullFlavor)] | hl7:statusCode | hl7:identifiedPerson[not(@nullFlavor)] | hl7:assigningOrganization[@classCode='ORG'] (rule-reference: d14e42479-true-d386797e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:name[not(@nullFlavor)] | self::hl7:telecom | self::hl7:administrativeGenderCode | self::hl7:birthTime[not(@nullFlavor)] | self::hl7:deceasedInd | self::hl7:deceasedTime | self::hl7:multipleBirthInd | self::hl7:multipleBirthOrderNumber | self::hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]] | self::hl7:birthPlace)]"
         id="d14e42502-true-d386878e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42502-true-d386878e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name[not(@nullFlavor)] | hl7:telecom | hl7:administrativeGenderCode | hl7:birthTime[not(@nullFlavor)] | hl7:deceasedInd | hl7:deceasedTime | hl7:multipleBirthInd | hl7:multipleBirthOrderNumber | hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]] | hl7:birthPlace (rule-reference: d14e42502-true-d386878e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder)]"
         id="d14e42539-true-d386947e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42539-true-d386947e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] | hl7:relationshipHolder (rule-reference: d14e42539-true-d386947e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:personalRelationship[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d14e42546-true-d386974e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42546-true-d386974e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d14e42546-true-d386974e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="/hl7:PRPA_IN101301NL[hl7:interactionId[@root='2.16.840.1.113883.1.6']]/hl7:ControlActProcess[@moodCode='EVN'][not(@nullFlavor)]/hl7:subject[hl7:registrationProcess[hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/*[not(self::hl7:id | self::hl7:contactParty)]"
         id="d14e42559-true-d387013e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.901025-2015-01-22T000000.html"
              test="not(.)">(admgeboorte-22)/d14e42559-true-d387013e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:contactParty (rule-reference: d14e42559-true-d387013e0)</assert>
   </rule>
</pattern>
