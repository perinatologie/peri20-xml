<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.46
Name: Acknowledgement
Description: Accept Acknowledgement
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000-closed">
   <title>Acknowledgement</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:creationTime[not(@nullFlavor)] | self::hl7:versionCode[@code='NICTIZEd2005-Okt'] | self::hl7:interactionId[@root='2.16.840.1.113883.1.6'] | self::hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'] | self::hl7:processingCode[@code='P'] | self::hl7:processingModeCode[@code='T'] | self::hl7:acceptAckCode[@code='NE'] | self::hl7:acknowledgement[not(@nullFlavor)])]"
         id="d14e3575-true-d47147e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3575-true-d47147e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:creationTime[not(@nullFlavor)] | hl7:versionCode[@code='NICTIZEd2005-Okt'] | hl7:interactionId[@root='2.16.840.1.113883.1.6'] | hl7:profileId[@root='2.16.840.1.113883.2.4.3.11.9'][@extension='F1'] | hl7:processingCode[@code='P'] | hl7:processingModeCode[@code='T'] | hl7:acceptAckCode[@code='NE'] | hl7:acknowledgement[not(@nullFlavor)] (rule-reference: d14e3575-true-d47147e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/*[not(self::hl7:acknowledgementDetail | self::hl7:targetMessage[not(@nullFlavor)] | self::hl7:receiver | self::hl7:sender)]"
         id="d14e3707-true-d47226e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3707-true-d47226e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:acknowledgementDetail | hl7:targetMessage[not(@nullFlavor)] | hl7:receiver | hl7:sender (rule-reference: d14e3707-true-d47226e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:acknowledgementDetail/*[not(self::hl7:code[not(@nullFlavor)] | self::hl7:text | self::hl7:location)]"
         id="d14e3746-true-d47252e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3746-true-d47252e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[not(@nullFlavor)] | hl7:text | hl7:location (rule-reference: d14e3746-true-d47252e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:targetMessage[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)])]"
         id="d14e3782-true-d47286e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3782-true-d47286e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d14e3782-true-d47286e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d14e3794-true-d47308e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3794-true-d47308e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d14e3794-true-d47308e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:receiver/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d14e3812-true-d47329e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3812-true-d47329e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d14e3812-true-d47329e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/*[not(self::hl7:device[not(@nullFlavor)])]"
         id="d14e3831-true-d47357e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3831-true-d47357e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:device[not(@nullFlavor)] (rule-reference: d14e3831-true-d47357e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:MCCI_IN000002/hl7:acknowledgement[not(@nullFlavor)]/hl7:sender/hl7:device[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name)]"
         id="d14e3849-true-d47378e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.46-2012-12-20T000000.html"
              test="not(.)">(mcci2-ack)/d14e3849-true-d47378e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name (rule-reference: d14e3849-true-d47378e0)</assert>
   </rule>
</pattern>
