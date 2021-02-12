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
   <rule context="hl7:subject[hl7:registrationProcess]/*[not(self::hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]])]"
         id="d15e11816-true-d147197e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11816-true-d147197e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]] (rule-reference: d15e11816-true-d147197e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/*[not(self::hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] | self::hl7:statusCode[@code = 'active'] | self::hl7:effectiveTime | self::hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson])]"
         id="d15e11823-true-d147229e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11823-true-d147229e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')] | hl7:statusCode[@code = 'active'] | hl7:effectiveTime | hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson] (rule-reference: d15e11823-true-d147229e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/*[not(self::hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson])]"
         id="d15e11970-true-d147264e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11970-true-d147264e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson] (rule-reference: d15e11970-true-d147264e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/*[not(self::hl7:id | self::hl7:addr | self::hl7:statusCode | self::hl7:identifiedPerson[not(@nullFlavor)] | self::hl7:assigningOrganization[@classCode = 'ORG'])]"
         id="d15e11972-true-d147301e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11972-true-d147301e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:statusCode | hl7:identifiedPerson[not(@nullFlavor)] | hl7:assigningOrganization[@classCode = 'ORG'] (rule-reference: d15e11972-true-d147301e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/*[not(self::hl7:name | self::hl7:administrativeGenderCode | self::hl7:birthTime | self::hl7:scopedBirthPlace | self::hl7:contact | self::hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]])]"
         id="d15e11980-true-d147361e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11980-true-d147361e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode | hl7:birthTime | hl7:scopedBirthPlace | hl7:contact | hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]] (rule-reference: d15e11980-true-d147361e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:scopedBirthPlace/*[not(self::hl7:addr)]"
         id="d15e11988-true-d147396e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11988-true-d147396e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:addr (rule-reference: d15e11988-true-d147396e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:contact/*[not(self::hl7:code | self::hl7:telecom | self::hl7:effectiveTime)]"
         id="d15e11993-true-d147429e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e11993-true-d147429e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:telecom | hl7:effectiveTime (rule-reference: d15e11993-true-d147429e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/*[not(self::hl7:id | self::hl7:addr | self::hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder)]"
         id="d15e12003-true-d147479e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e12003-true-d147479e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')] | hl7:relationshipHolder (rule-reference: d15e12003-true-d147479e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:identifiedPerson[not(@nullFlavor)]/hl7:relationshipHolder[hl7:code[(@code = 'NMTH' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder/*[not(self::hl7:name | self::hl7:birthTime)]"
         id="d15e12014-true-d147519e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e12014-true-d147519e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime (rule-reference: d15e12014-true-d147519e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/*[not(self::hl7:id | self::hl7:code | self::hl7:name | self::hl7:contact)]"
         id="d15e12023-true-d147563e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e12023-true-d147563e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code | hl7:name | hl7:contact (rule-reference: d15e12023-true-d147563e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="hl7:subject[hl7:registrationProcess]/hl7:registrationProcess[hl7:code[(@code = '118118' and @codeSystem = '2.16.840.1.113883.2.4.15.4')]]/hl7:subject1[not(@nullFlavor)][hl7:IdentifiedPerson]/hl7:IdentifiedPerson[not(@nullFlavor)][hl7:identifiedPerson]/hl7:assigningOrganization[@classCode = 'ORG']/hl7:contact/*[not(self::hl7:addr)]"
         id="d15e12033-true-d147598e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.45-2012-06-26T000000.html"
              test="not(.)">(admgeboorte-1a)/d15e12033-true-d147598e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:addr (rule-reference: d15e12033-true-d147598e0)</assert>
   </rule>
</pattern>
