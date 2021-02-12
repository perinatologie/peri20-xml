<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.51
Name: Uitkomst bericht fase 1c vanuit 1e lijn naar registraties
Description: Template: Uitkomst bericht fase 1c vanuit 1e lijn naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000-closed">
   <title>Uitkomst bericht fase 1c vanuit 1e lijn naar registraties</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/*[not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51'] | self::hl7:id[not(@nullFlavor)] | self::hl7:statusCode[@code = 'active' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']] | self::hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | self::hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]] | self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]])]"
         id="d15e12504-true-d174554e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12504-true-d174554e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51'] | hl7:id[not(@nullFlavor)] | hl7:statusCode[@code = 'active' or @nullFlavor] | hl7:effectiveTime | hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']] | hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]] | hl7:pertinentInformation3[hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] (rule-reference: d15e12504-true-d174554e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:effectiveTime/*[not(self::hl7:low)]"
         id="d15e12536-true-d174591e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12536-true-d174591e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low (rule-reference: d15e12536-true-d174591e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/*[not(self::hl7:patient[hl7:statusCode[@code = 'active']])]"
         id="d174604e5-true-d174666e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900607-2011-01-28T000000.html"
              test="not(.)">(Vrouw)/d174604e5-true-d174666e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code = 'active']] (rule-reference: d174604e5-true-d174666e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/*[not(self::hl7:id | self::hl7:id | self::hl7:addr | self::hl7:statusCode[@code = 'active'] | self::hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d174604e17-true-d174737e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900607-2011-01-28T000000.html"
              test="not(.)">(Vrouw)/d174604e17-true-d174737e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:id | hl7:addr | hl7:statusCode[@code = 'active'] | hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d174604e17-true-d174737e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:addr/*[not(self::hl7:postalCode)]"
         id="d174758e5-true-d174772e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900148-2011-01-28T000000.html"
              test="not(.)">(Adresvrouw)/d174758e5-true-d174772e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:postalCode (rule-reference: d174758e5-true-d174772e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:deceasedInd | self::hl7:deceasedTime | self::hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d174604e47-true-d174825e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900607-2011-01-28T000000.html"
              test="not(.)">(Vrouw)/d174604e47-true-d174825e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:deceasedInd | hl7:deceasedTime | hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d174604e47-true-d174825e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/*[not(self::hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d174872e5-true-d174934e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d174872e5-true-d174934e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d174872e5-true-d174934e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:agentPerson[not(@nullFlavor)] | self::hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d174872e59-true-d175009e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d174872e59-true-d175009e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:agentPerson[not(@nullFlavor)] | hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d174872e59-true-d175009e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/*[not(self::hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d175032e5-true-d175050e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenertype)/d175032e5-true-d175050e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d175032e5-true-d175050e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]/*[not(self::hl7:name)]"
         id="d174872e91-true-d175080e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d174872e91-true-d175080e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d174872e91-true-d175080e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:name | self::hl7:addr)]"
         id="d174872e93-true-d175126e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d174872e93-true-d175126e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:name | hl7:addr (rule-reference: d174872e93-true-d175126e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/*[not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:county | self::hl7:country)]"
         id="d175173e5-true-d175222e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="not(.)">(Zorginstellingadres)/d175173e5-true-d175222e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:county | hl7:country (rule-reference: d175173e5-true-d175222e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12554-true-d175296e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12554-true-d175296e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12554-true-d175296e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d175277e8-true-d175324e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175277e8-true-d175324e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d175277e8-true-d175324e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d175277e27-true-d175353e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175277e27-true-d175353e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d175277e27-true-d175353e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d175277e36-true-d175386e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175277e36-true-d175386e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d175277e36-true-d175386e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d175277e71-true-d175418e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175277e71-true-d175418e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d175277e71-true-d175418e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:uncertaintyCode | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d175405e20-true-d175454e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175405e20-true-d175454e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:uncertaintyCode | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d175405e20-true-d175454e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12563-true-d175506e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12563-true-d175506e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12563-true-d175506e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d175487e8-true-d175534e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175487e8-true-d175534e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d175487e8-true-d175534e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d175487e27-true-d175563e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175487e27-true-d175563e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d175487e27-true-d175563e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d175487e36-true-d175596e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175487e36-true-d175596e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d175487e36-true-d175596e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d175487e71-true-d175628e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175487e71-true-d175628e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d175487e71-true-d175628e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation2[hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:uncertaintyCode | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d175615e20-true-d175664e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175615e20-true-d175664e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:uncertaintyCode | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d175615e20-true-d175664e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12572-true-d175710e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12572-true-d175710e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12572-true-d175710e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.94-2013-01-10T130046.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.94-2013-01-10T130046.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d175697e8-true-d175736e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175697e8-true-d175736e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN2102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.94-2013-01-10T130046.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.94-2013-01-10T130046.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d175697e8-true-d175736e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/*[not(self::hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]])]"
         id="d15e12582-true-d175782e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12582-true-d175782e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]] (rule-reference: d15e12582-true-d175782e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/*[not(self::hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')] | self::hl7:effectiveTime | self::hl7:author[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d175757e8-true-d175830e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175757e8-true-d175830e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')] | hl7:effectiveTime | hl7:author[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d175757e8-true-d175830e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:author[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d175757e32-true-d175865e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175757e32-true-d175865e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d175757e32-true-d175865e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:author[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:Organization[not(@nullFlavor)])]"
         id="d175757e41-true-d175893e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175757e41-true-d175893e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:Organization[not(@nullFlavor)] (rule-reference: d175757e41-true-d175893e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:author[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.93-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:Organization[not(@nullFlavor)]/*[not(self::hl7:id[not(@nullFlavor)])]"
         id="d175757e58-true-d175918e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175757e58-true-d175918e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d175757e58-true-d175918e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:priorityNumber | self::hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d175757e65-true-d175946e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d175757e65-true-d175946e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:priorityNumber | hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d175757e65-true-d175946e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.127-2015-10-19T203712.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.127-2015-10-19T203712.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d175959e5-true-d175982e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900878-2011-01-28T000000.html"
              test="not(.)">(Indicatie)/d175959e5-true-d175982e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.127-2015-10-19T203712.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.127-2015-10-19T203712.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d175959e5-true-d175982e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]]/hl7:act[hl7:code[(@code = 'OBS' and @codeSystem = '2.16.840.1.113883.5.4')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'RefInReas' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.127-2015-10-19T203712.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.127-2015-10-19T203712.xml')//valueSet[1]/conceptList/exception/@code]/*[not(self::hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.124-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d175959e16-true-d176011e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900878-2011-01-28T000000.html"
              test="not(.)">(Indicatie)/d175959e16-true-d176011e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.124-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d175959e16-true-d176011e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e12591-true-d176039e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12591-true-d176039e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e12591-true-d176039e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:act[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime)]"
         id="d176026e8-true-d176061e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176026e8-true-d176061e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime (rule-reference: d176026e8-true-d176061e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12600-true-d176093e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12600-true-d176093e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12600-true-d176093e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d176080e8-true-d176115e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176080e8-true-d176115e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d176080e8-true-d176115e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12610-true-d176147e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12610-true-d176147e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12610-true-d176147e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d176134e8-true-d176174e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176134e8-true-d176174e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d176134e8-true-d176174e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12619-true-d176212e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12619-true-d176212e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12619-true-d176212e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d176199e8-true-d176244e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176199e8-true-d176244e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d176199e8-true-d176244e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12628-true-d176300e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12628-true-d176300e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12628-true-d176300e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d176275e8-true-d176349e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176275e8-true-d176349e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d176275e8-true-d176349e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d176275e45-true-d176387e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176275e45-true-d176387e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d176275e45-true-d176387e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d176374e5-true-d176418e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176374e5-true-d176418e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d176374e5-true-d176418e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d176275e52-true-d176458e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176275e52-true-d176458e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d176275e52-true-d176458e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d176445e5-true-d176480e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176445e5-true-d176480e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d176445e5-true-d176480e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12638-true-d176512e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12638-true-d176512e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12638-true-d176512e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')])]"
         id="d176499e8-true-d176534e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176499e8-true-d176534e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:code[(@code = 'LVR1AdmNr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] (rule-reference: d176499e8-true-d176534e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12647-true-d176584e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12647-true-d176584e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12647-true-d176584e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d176553e8-true-d176639e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176553e8-true-d176639e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d176553e8-true-d176639e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d176553e37-true-d176671e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176553e37-true-d176671e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d176553e37-true-d176671e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')])]"
         id="d176658e5-true-d176693e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176658e5-true-d176693e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')] (rule-reference: d176658e5-true-d176693e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d176553e44-true-d176725e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176553e44-true-d176725e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d176553e44-true-d176725e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d176712e5-true-d176756e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176712e5-true-d176756e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d176712e5-true-d176756e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d176553e51-true-d176802e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176553e51-true-d176802e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d176553e51-true-d176802e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d176783e5-true-d176835e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176783e5-true-d176835e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d176783e5-true-d176835e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d176783e44-true-d176867e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176783e44-true-d176867e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d176783e44-true-d176867e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient])]"
         id="d176854e5-true-d176894e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176854e5-true-d176894e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient] (rule-reference: d176854e5-true-d176894e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/*[not(self::hl7:patient[hl7:statusCode[@code = 'completed']])]"
         id="d176854e53-true-d176923e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176854e53-true-d176923e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code = 'completed']] (rule-reference: d176854e53-true-d176923e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:statusCode[@code = 'completed'] | self::hl7:Person[not(@nullFlavor)])]"
         id="d176854e57-true-d176950e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176854e57-true-d176950e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:statusCode[@code = 'completed'] | hl7:Person[not(@nullFlavor)] (rule-reference: d176854e57-true-d176950e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:Person[not(@nullFlavor)]/*[not(self::hl7:birthTime)]"
         id="d176854e69-true-d176979e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176854e69-true-d176979e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:birthTime (rule-reference: d176854e69-true-d176979e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12656-true-d177005e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12656-true-d177005e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12656-true-d177005e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d176992e8-true-d177031e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d176992e8-true-d177031e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Amnionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d176992e8-true-d177031e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12666-true-d177065e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12666-true-d177065e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12666-true-d177065e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d177052e8-true-d177091e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177052e8-true-d177091e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Chorionic' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.9-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d177052e8-true-d177091e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12675-true-d177125e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12675-true-d177125e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12675-true-d177125e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177112e8-true-d177147e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177112e8-true-d177147e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177112e8-true-d177147e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e12684-true-d177179e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12684-true-d177179e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e12684-true-d177179e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177166e8-true-d177201e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177166e8-true-d177201e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '56077-1' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177166e8-true-d177201e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e12694-true-d177233e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12694-true-d177233e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e12694-true-d177233e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177220e8-true-d177255e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177220e8-true-d177255e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177220e8-true-d177255e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_IVDIASTPREG' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/*[not(self::hl7:high)]"
         id="d177220e32-true-d177278e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177220e32-true-d177278e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:high (rule-reference: d177220e32-true-d177278e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12703-true-d177316e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12703-true-d177316e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12703-true-d177316e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]]])]"
         id="d177291e8-true-d177350e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177291e8-true-d177350e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]]] (rule-reference: d177291e8-true-d177350e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d177291e44-true-d177382e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177291e44-true-d177382e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d177291e44-true-d177382e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177369e5-true-d177404e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177369e5-true-d177404e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177369e5-true-d177404e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '2889-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/*[not(self::hl7:high)]"
         id="d177369e16-true-d177427e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177369e16-true-d177427e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:high (rule-reference: d177369e16-true-d177427e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d177291e51-true-d177453e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177291e51-true-d177453e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d177291e51-true-d177453e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN420204-bl' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.89-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.89-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d177440e5-true-d177479e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177440e5-true-d177479e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '20454-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.89-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.89-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d177440e5-true-d177479e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d15e12712-true-d177519e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12712-true-d177519e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d15e12712-true-d177519e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]])]"
         id="d177500e8-true-d177548e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177500e8-true-d177548e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] (rule-reference: d177500e8-true-d177548e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d177565e5-true-d177585e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900211-2011-01-28T000000.html"
              test="not(.)">(Faciliteittoekomstplaatsbaring)/d177565e5-true-d177585e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d177565e5-true-d177585e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN4209' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d177565e20-true-d177608e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900211-2011-01-28T000000.html"
              test="not(.)">(Faciliteittoekomstplaatsbaring)/d177565e20-true-d177608e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d177565e20-true-d177608e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12722-true-d177636e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12722-true-d177636e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12722-true-d177636e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177623e8-true-d177658e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177623e8-true-d177658e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'KraamZorg' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177623e8-true-d177658e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12731-true-d177690e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12731-true-d177690e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12731-true-d177690e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177677e8-true-d177712e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177677e8-true-d177712e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'IUVD1contr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177677e8-true-d177712e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12740-true-d177744e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12740-true-d177744e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12740-true-d177744e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d177731e8-true-d177766e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177731e8-true-d177766e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'NBorn16' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d177731e8-true-d177766e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d15e12750-true-d177804e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12750-true-d177804e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d15e12750-true-d177804e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]])]"
         id="d177785e8-true-d177833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177785e8-true-d177833e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] (rule-reference: d177785e8-true-d177833e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d177850e5-true-d177870e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900211-2011-01-28T000000.html"
              test="not(.)">(Faciliteittoekomstplaatsbaring)/d177850e5-true-d177870e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d177850e5-true-d177870e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN5104' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d177850e20-true-d177893e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900211-2011-01-28T000000.html"
              test="not(.)">(Faciliteittoekomstplaatsbaring)/d177850e20-true-d177893e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.105-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d177850e20-true-d177893e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]]/*[not(self::hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]])]"
         id="d15e12759-true-d177921e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12759-true-d177921e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]] (rule-reference: d15e12759-true-d177921e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]]/hl7:observation[hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor]]/*[not(self::hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor] | self::hl7:effectiveTime | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.10-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.10-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d177908e8-true-d177952e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177908e8-true-d177952e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'TypeDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13') or @nullFlavor] | hl7:effectiveTime | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.10-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.10-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d177908e8-true-d177952e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12768-true-d177992e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12768-true-d177992e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12768-true-d177992e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.15-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.15-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d177979e8-true-d178018e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d177979e8-true-d178018e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN5102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.15-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.15-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d177979e8-true-d178018e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12778-true-d178064e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12778-true-d178064e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12778-true-d178064e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]])]"
         id="d178039e8-true-d178107e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178039e8-true-d178107e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] (rule-reference: d178039e8-true-d178107e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d178039e43-true-d178147e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178039e43-true-d178147e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d178039e43-true-d178147e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]])]"
         id="d178128e5-true-d178189e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178128e5-true-d178189e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.17-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] (rule-reference: d178128e5-true-d178189e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d178128e42-true-d178229e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178128e42-true-d178229e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d178128e42-true-d178229e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN520102' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d178216e5-true-d178255e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178216e5-true-d178255e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN520103' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.18-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d178216e5-true-d178255e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d15e12787-true-d178295e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12787-true-d178295e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d15e12787-true-d178295e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.19-2013-01-10T132058.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.19-2013-01-10T132058.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d178276e8-true-d178324e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178276e8-true-d178324e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'PRN540101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.19-2013-01-10T132058.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.19-2013-01-10T132058.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d178276e8-true-d178324e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12796-true-d178366e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12796-true-d178366e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12796-true-d178366e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:effectiveTime)]"
         id="d178353e8-true-d178388e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178353e8-true-d178388e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN520301' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:effectiveTime (rule-reference: d178353e8-true-d178388e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12806-true-d178420e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12806-true-d178420e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12806-true-d178420e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:effectiveTime)]"
         id="d178407e8-true-d178442e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178407e8-true-d178442e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN530101' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:effectiveTime (rule-reference: d178407e8-true-d178442e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e12815-true-d178474e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12815-true-d178474e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e12815-true-d178474e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d178461e8-true-d178500e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178461e8-true-d178500e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d178461e8-true-d178500e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12824-true-d178537e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12824-true-d178537e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12824-true-d178537e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']])]"
         id="d178521e8-true-d178567e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178521e8-true-d178567e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']] (rule-reference: d178521e8-true-d178567e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/*[not(self::hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']])]"
         id="d178521e45-true-d178599e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178521e45-true-d178599e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']] (rule-reference: d178521e45-true-d178599e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/*[not(self::hl7:consumable[@typeCode = 'CSM'][hl7:medication[@classCode = 'ADMM']])]"
         id="d178586e5-true-d178616e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178586e5-true-d178616e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:consumable[@typeCode = 'CSM'][hl7:medication[@classCode = 'ADMM']] (rule-reference: d178586e5-true-d178616e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[@typeCode = 'CSM'][hl7:medication[@classCode = 'ADMM']]/*[not(self::hl7:medication[hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]])]"
         id="d178586e28-true-d178637e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178586e28-true-d178637e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:medication[hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] (rule-reference: d178586e28-true-d178637e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[@typeCode = 'CSM'][hl7:medication[@classCode = 'ADMM']]/hl7:medication[hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d178586e32-true-d178660e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178586e32-true-d178660e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d178586e32-true-d178660e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[@typeCode = 'CSM'][hl7:medication[@classCode = 'ADMM']]/hl7:medication[hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:administerableMedicine[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d178586e36-true-d178683e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178586e36-true-d178683e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d178586e36-true-d178683e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12834-true-d178711e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12834-true-d178711e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12834-true-d178711e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d178698e8-true-d178737e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178698e8-true-d178737e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d178698e8-true-d178737e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12843-true-d178771e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12843-true-d178771e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12843-true-d178771e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d178758e8-true-d178793e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178758e8-true-d178793e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN5703' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d178758e8-true-d178793e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12852-true-d178825e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12852-true-d178825e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12852-true-d178825e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d178812e8-true-d178851e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178812e8-true-d178851e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN550403' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.23-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d178812e8-true-d178851e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d15e12862-true-d179083e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d15e12862-true-d179083e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d15e12862-true-d179083e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | self::hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | self::hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | self::hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d178872e8-true-d179378e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e8-true-d179378e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d178872e8-true-d179378e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/*[not(self::hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]])]"
         id="d179395e5-true-d179433e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900717-2012-08-29T000000.html"
              test="not(.)">(Uitkomstperkindsubject)/d179395e5-true-d179433e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] (rule-reference: d179395e5-true-d179433e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d179395e87-true-d179483e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900717-2012-08-29T000000.html"
              test="not(.)">(Uitkomstperkindsubject)/d179395e87-true-d179483e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | hl7:relationshipHolder[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d179395e87-true-d179483e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:id[not(@nullFlavor)] | self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::hl7:deceasedInd[not(@nullFlavor)] | self::hl7:deceasedTime | self::hl7:multipleBirthInd[not(@nullFlavor)] | self::hl7:multipleBirthOrderNumber | self::hl7:addr | self::hl7:asOtherIDs[@classCode = 'IDENT'])]"
         id="d179395e96-true-d179555e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900717-2012-08-29T000000.html"
              test="not(.)">(Uitkomstperkindsubject)/d179395e96-true-d179555e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | hl7:deceasedInd[not(@nullFlavor)] | hl7:deceasedTime | hl7:multipleBirthInd[not(@nullFlavor)] | hl7:multipleBirthOrderNumber | hl7:addr | hl7:asOtherIDs[@classCode = 'IDENT'] (rule-reference: d179395e96-true-d179555e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/*[not(self::hl7:postalCode[not(@nullFlavor)])]"
         id="d179395e149-true-d179630e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900717-2012-08-29T000000.html"
              test="not(.)">(Uitkomstperkindsubject)/d179395e149-true-d179630e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:postalCode[not(@nullFlavor)] (rule-reference: d179395e149-true-d179630e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.5-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:asOtherIDs[@classCode = 'IDENT']/*[not(self::hl7:id[not(@nullFlavor)])]"
         id="d179395e164-true-d179653e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900717-2012-08-29T000000.html"
              test="not(.)">(Uitkomstperkindsubject)/d179395e164-true-d179653e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d179395e164-true-d179653e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d179664e5-true-d179690e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900369-2009-10-01T000000.html"
              test="not(.)">(Rolaanpakkerkind)/d179664e5-true-d179690e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d179664e5-true-d179690e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:agentPerson)]"
         id="d179664e24-true-d179723e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900369-2009-10-01T000000.html"
              test="not(.)">(Rolaanpakkerkind)/d179664e24-true-d179723e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.34-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:agentPerson (rule-reference: d179664e24-true-d179723e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d179750e5-true-d179776e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900385-2009-10-01T000000.html"
              test="not(.)">(Roleindverantwoordelijke)/d179750e5-true-d179776e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d179750e5-true-d179776e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d179750e22-true-d179804e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900385-2009-10-01T000000.html"
              test="not(.)">(Roleindverantwoordelijke)/d179750e22-true-d179804e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.35-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d179750e22-true-d179804e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d179825e5-true-d179845e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2009-10-01T000000.html"
              test="not(.)">(Faciliteitwerkelijkeplaatsbaring)/d179825e5-true-d179845e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d179825e5-true-d179845e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:location[hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:healthCareFacility[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d179825e20-true-d179868e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2009-10-01T000000.html"
              test="not(.)">(Faciliteitwerkelijkeplaatsbaring)/d179825e20-true-d179868e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.106-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d179825e20-true-d179868e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d178872e41-true-d179896e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e41-true-d179896e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d178872e41-true-d179896e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d179883e5-true-d179922e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d179883e5-true-d179922e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d179883e5-true-d179922e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d178872e48-true-d179956e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e48-true-d179956e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d178872e48-true-d179956e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d179943e5-true-d179978e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d179943e5-true-d179978e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d179943e5-true-d179978e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d178872e56-true-d180010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e56-true-d180010e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d178872e56-true-d180010e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d179997e5-true-d180036e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d179997e5-true-d180036e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '11951-1' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.72-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d179997e5-true-d180036e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d178872e63-true-d180070e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e63-true-d180070e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d178872e63-true-d180070e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d180057e5-true-d180092e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180057e5-true-d180092e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d180057e5-true-d180092e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d178872e70-true-d180124e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e70-true-d180124e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d178872e70-true-d180124e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-01-10T132504.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-01-10T132504.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d180111e5-true-d180150e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180111e5-true-d180150e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-01-10T132504.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-01-10T132504.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d180111e5-true-d180150e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d178872e78-true-d180190e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e78-true-d180190e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d178872e78-true-d180190e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d180171e5-true-d180219e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180171e5-true-d180219e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d180171e5-true-d180219e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d178872e85-true-d180261e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e85-true-d180261e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d178872e85-true-d180261e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d180248e5-true-d180292e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180248e5-true-d180292e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Outcome' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.11-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d180248e5-true-d180292e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d178872e92-true-d180332e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e92-true-d180332e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d178872e92-true-d180332e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d180319e5-true-d180354e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180319e5-true-d180354e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d180319e5-true-d180354e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d178872e100-true-d180386e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e100-true-d180386e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d178872e100-true-d180386e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d180373e5-true-d180408e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180373e5-true-d180408e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '9272-6' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d180373e5-true-d180408e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d178872e107-true-d180440e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e107-true-d180440e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d178872e107-true-d180440e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d180427e5-true-d180462e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180427e5-true-d180462e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d180427e5-true-d180462e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d178872e114-true-d180494e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e114-true-d180494e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d178872e114-true-d180494e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.111-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.111-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d180481e5-true-d180529e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180481e5-true-d180529e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CongMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.111-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.111-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d180481e5-true-d180529e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d178872e122-true-d180571e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e122-true-d180571e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d178872e122-true-d180571e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.32-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.32-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d180558e5-true-d180606e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180558e5-true-d180606e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'ChromMalf' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.50-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.32-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.32-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d180558e5-true-d180606e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d178872e129-true-d180648e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e129-true-d180648e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d178872e129-true-d180648e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d180635e5-true-d180674e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180635e5-true-d180674e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d180635e5-true-d180674e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d178872e136-true-d180720e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e136-true-d180720e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d178872e136-true-d180720e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.41-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.41-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:performer[@typeCode = 'SPRF'][hl7:assignedEntity1])]"
         id="d180695e5-true-d180763e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180695e5-true-d180763e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.41-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.41-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:performer[@typeCode = 'SPRF'][hl7:assignedEntity1] (rule-reference: d180695e5-true-d180763e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:performer[@typeCode = 'SPRF'][hl7:assignedEntity1]/*[not(self::hl7:time | self::hl7:assignedEntity1[not(@nullFlavor)])]"
         id="d180695e49-true-d180805e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180695e49-true-d180805e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedEntity1[not(@nullFlavor)] (rule-reference: d180695e49-true-d180805e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:performer[@typeCode = 'SPRF'][hl7:assignedEntity1]/hl7:time/*[not(self::hl7:low | self::hl7:high)]"
         id="d180810e5-true-d180829e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900706-2009-10-01T000000.html"
              test="not(.)">(Datumbetrokkenheidanderezorgverlener)/d180810e5-true-d180829e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d180810e5-true-d180829e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ZorgverlBetr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:performer[@typeCode = 'SPRF'][hl7:assignedEntity1]/hl7:assignedEntity1[not(@nullFlavor)]/*[not(self::hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111') or @nullFlavor])]"
         id="d180695e57-true-d180858e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180695e57-true-d180858e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111') or @nullFlavor] (rule-reference: d180695e57-true-d180858e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d178872e144-true-d180886e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e144-true-d180886e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d178872e144-true-d180886e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d180873e5-true-d180912e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180873e5-true-d180912e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d180873e5-true-d180912e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d178872e154-true-d180967e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e154-true-d180967e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d178872e154-true-d180967e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime | self::hl7:approachSiteCode[(@code = '408728001' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] | self::hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]])]"
         id="d180933e5-true-d181020e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180933e5-true-d181020e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime | hl7:approachSiteCode[(@code = '408728001' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]] | hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]] (rule-reference: d180933e5-true-d181020e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/*[not(self::hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d181051e5-true-d181071e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900495-2011-01-28T000000.html"
              test="not(.)">(Afnemeridentificatie)/d181051e5-true-d181071e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d181051e5-true-d181071e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | self::hl7:Organization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d181051e9-true-d181113e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900495-2011-01-28T000000.html"
              test="not(.)">(Afnemeridentificatie)/d181051e9-true-d181113e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | hl7:Organization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d181051e9-true-d181113e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:assignedPerson[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/*[not(self::hl7:name)]"
         id="d181051e26-true-d181144e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900495-2011-01-28T000000.html"
              test="not(.)">(Afnemeridentificatie)/d181051e26-true-d181144e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d181051e26-true-d181144e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:Organization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | self::hl7:name | self::hl7:addr)]"
         id="d181051e35-true-d181188e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900495-2011-01-28T000000.html"
              test="not(.)">(Afnemeridentificatie)/d181051e35-true-d181188e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] | hl7:name | hl7:addr (rule-reference: d181051e35-true-d181188e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:performer[hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]]/hl7:assignedEntity1[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/hl7:Organization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/*[not(self::hl7:houseNumber | self::hl7:postalCode)]"
         id="d181051e53-true-d181230e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900495-2011-01-28T000000.html"
              test="not(.)">(Afnemeridentificatie)/d181051e53-true-d181230e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:houseNumber | hl7:postalCode (rule-reference: d181051e53-true-d181230e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d180933e107-true-d181268e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d180933e107-true-d181268e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d180933e107-true-d181268e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:statusCode[@code = 'active' or @nullFlavor] | self::hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity1[@classCode = 'ASSIGNED']])]"
         id="d181249e5-true-d181295e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d181249e5-true-d181295e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:statusCode[@code = 'active' or @nullFlavor] | hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity1[@classCode = 'ASSIGNED']] (rule-reference: d181249e5-true-d181295e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity1[@classCode = 'ASSIGNED']]/*[not(self::hl7:assignedEntity1[hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]])]"
         id="d181312e5-true-d181326e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900500-2011-01-28T000000.html"
              test="not(.)">(Uitvoerendlab)/d181312e5-true-d181326e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedEntity1[hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]] (rule-reference: d181312e5-true-d181326e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity1[@classCode = 'ASSIGNED']]/hl7:assignedEntity1[hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]]/*[not(self::hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]])]"
         id="d181312e9-true-d181343e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900500-2011-01-28T000000.html"
              test="not(.)">(Uitvoerendlab)/d181312e9-true-d181343e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]] (rule-reference: d181312e9-true-d181343e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity1[@classCode = 'ASSIGNED']]/hl7:assignedEntity1[hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]]/hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')] | self::hl7:name | self::hl7:addr)]"
         id="d181312e13-true-d181375e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900500-2011-01-28T000000.html"
              test="not(.)">(Uitvoerendlab)/d181312e13-true-d181375e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')] | hl7:name | hl7:addr (rule-reference: d181312e13-true-d181375e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '82078001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:act[hl7:code[(@code = 'X-LAB-ORDER' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:performer[@typeCode = 'PRF'][hl7:assignedEntity1[@classCode = 'ASSIGNED']]/hl7:assignedEntity1[hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]]/hl7:Organization[hl7:code[(@code = 'L1' and @codeSystem = '2.16.840.1.113883.2.4.15.1060')]]/hl7:addr/*[not(self::hl7:houseNumber | self::hl7:postalCode)]"
         id="d181312e29-true-d181415e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900500-2011-01-28T000000.html"
              test="not(.)">(Uitvoerendlab)/d181312e29-true-d181415e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:houseNumber | hl7:postalCode (rule-reference: d181312e29-true-d181415e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d178872e161-true-d181447e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d178872e161-true-d181447e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d178872e161-true-d181447e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:product[@typeCode = 'PRD'][hl7:product1[@classCode = 'ACCESS']])]"
         id="d181434e5-true-d181474e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d181434e5-true-d181474e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:product[@typeCode = 'PRD'][hl7:product1[@classCode = 'ACCESS']] (rule-reference: d181434e5-true-d181474e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:product[@typeCode = 'PRD'][hl7:product1[@classCode = 'ACCESS']]/*[not(self::hl7:product1[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]]])]"
         id="d181434e40-true-d181507e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d181434e40-true-d181507e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:product1[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]]] (rule-reference: d181434e40-true-d181507e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:product[@typeCode = 'PRD'][hl7:product1[@classCode = 'ACCESS']]/hl7:product1[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d181434e44-true-d181530e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d181434e44-true-d181530e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d181434e44-true-d181530e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.51']]/hl7:pertinentInformation3[hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:targetOf[hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:supply[hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:product[@typeCode = 'PRD'][hl7:product1[@classCode = 'ACCESS']]/hl7:product1[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d181434e48-true-d181553e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.51-2012-03-11T000000.html"
              test="not(.)">(uitkomst-1c-1el)/d181434e48-true-d181553e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.122-2011-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d181434e48-true-d181553e0)</assert>
   </rule>
</pattern>
