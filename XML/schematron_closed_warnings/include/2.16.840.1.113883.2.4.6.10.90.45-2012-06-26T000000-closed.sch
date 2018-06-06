<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.45
Name: Administratief geboortebericht
Description: Template: Administratief geboortebericht fase 1a
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000-closed">
   <title>Administratief geboortebericht</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/*[not(self::hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]])]"
         id="d14e3348-true-d46126e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3348-true-d46126e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]] (rule-reference: d14e3348-true-d46126e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/*[not(self::hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] | self::hl7:statusCode[@code='active'] | self::hl7:effectiveTime | self::hl7:subject1[not(@nullFlavor)])]"
         id="d14e3355-true-d46157e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3355-true-d46157e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')] | hl7:statusCode[@code='active'] | hl7:effectiveTime | hl7:subject1[not(@nullFlavor)] (rule-reference: d14e3355-true-d46157e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/*[not(self::hl7:IdentifiedPerson[not(@nullFlavor)])]"
         id="d14e3502-true-d46191e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3502-true-d46191e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:IdentifiedPerson[not(@nullFlavor)] (rule-reference: d14e3502-true-d46191e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/*[not(self::hl7:id | self::hl7:addr | self::hl7:statusCode | self::hl7:identifiedPerson[not(@nullFlavor)] | self::hl7:assigningOrganization[@classCode='ORG'])]"
         id="d14e3504-true-d46227e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3504-true-d46227e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:statusCode | hl7:identifiedPerson[not(@nullFlavor)] | hl7:assigningOrganization[@classCode='ORG'] (rule-reference: d14e3504-true-d46227e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:name | self::hl7:administrativeGenderCode | self::hl7:birthTime | self::hl7:scopedBirthPlace | self::hl7:contact | self::hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]])]"
         id="d14e3512-true-d46286e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3512-true-d46286e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode | hl7:birthTime | hl7:scopedBirthPlace | hl7:contact | hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]] (rule-reference: d14e3512-true-d46286e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/*[not(self::hl7:addr)]"
         id="d14e3520-true-d46320e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3520-true-d46320e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:addr (rule-reference: d14e3520-true-d46320e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/*[not(self::hl7:code | self::hl7:telecom | self::hl7:effectiveTime)]"
         id="d14e3525-true-d46352e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3525-true-d46352e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:telecom | hl7:effectiveTime (rule-reference: d14e3525-true-d46352e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/*[not(self::hl7:id | self::hl7:addr | self::hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder)]"
         id="d14e3535-true-d46401e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3535-true-d46401e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')] | hl7:relationshipHolder (rule-reference: d14e3535-true-d46401e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code='NMTH' and @codeSystem='2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/*[not(self::hl7:name | self::hl7:birthTime)]"
         id="d14e3546-true-d46440e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3546-true-d46440e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime (rule-reference: d14e3546-true-d46440e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/*[not(self::hl7:id | self::hl7:code | self::hl7:name | self::hl7:contact)]"
         id="d14e3555-true-d46483e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3555-true-d46483e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code | hl7:name | hl7:contact (rule-reference: d14e3555-true-d46483e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[@moodCode='EVN'][hl7:code[(@code='118118' and @codeSystem='2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)]/hl7:IdentifiedPerson[not(@nullFlavor)]/hl7:assigningOrganization[@classCode='ORG']/hl7:contact/*[not(self::hl7:addr)]"
         id="d14e3565-true-d46517e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d14e3565-true-d46517e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:addr (rule-reference: d14e3565-true-d46517e0)</assert>
   </rule>
</pattern>
