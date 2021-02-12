<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.63
Name: Overdracht Acute Fase bericht
Description: Template: Overdracht Acute Fase bericht
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000-closed">
   <title>Overdracht Acute Fase bericht</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/*[not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63'] | self::hl7:id[not(@nullFlavor)] | self::hl7:statusCode[@code = 'active' or @nullFlavor] | self::hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']] | self::hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']] | self::hl7:reason[hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]]] | self::hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']] | self::hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009'] | self::hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005'] | self::hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring'] | self::hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']])]"
         id="d15e13210-true-d213088e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13210-true-d213088e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63'] | hl7:id[not(@nullFlavor)] | hl7:statusCode[@code = 'active' or @nullFlavor] | hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']] | hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']] | hl7:reason[hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]]] | hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']] | hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009'] | hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005'] | hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring'] | hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']] (rule-reference: d15e13210-true-d213088e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/*[not(self::hl7:patient[hl7:statusCode[@code = 'active']])]"
         id="d213113e5-true-d213151e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900729-2013-03-14T000000.html"
              test="not(.)">(Vrouwacuut)/d213113e5-true-d213151e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code = 'active']] (rule-reference: d213113e5-true-d213151e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/*[not(self::hl7:id | self::hl7:statusCode[@code = 'active'] | self::hl7:patientPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'])]"
         id="d213113e17-true-d213196e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900729-2013-03-14T000000.html"
              test="not(.)">(Vrouwacuut)/d213113e17-true-d213196e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:statusCode[@code = 'active'] | hl7:patientPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] (rule-reference: d213113e17-true-d213196e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:patientPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:languageCommunication[hl7:languageCode[(@code = 'nl-NL' and @codeSystem = '2.16.840.1.113883.6.121')]])]"
         id="d213113e35-true-d213237e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900729-2013-03-14T000000.html"
              test="not(.)">(Vrouwacuut)/d213113e35-true-d213237e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:languageCommunication[hl7:languageCode[(@code = 'nl-NL' and @codeSystem = '2.16.840.1.113883.6.121')]] (rule-reference: d213113e35-true-d213237e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:patientPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name/*[not(self::hl7:given | self::hl7:prefix | self::hl7:family | self::hl7:delimiter | self::hl7:suffix)]"
         id="d213242e5-true-d213261e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900916-2013-03-20T000000.html"
              test="not(.)">(NaamORofL)/d213242e5-true-d213261e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given | hl7:prefix | hl7:family | hl7:delimiter | hl7:suffix (rule-reference: d213242e5-true-d213261e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:subject[@typeCode = 'SBJ'][hl7:patient[@classCode = 'PAT']]/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:patientPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:languageCommunication[hl7:languageCode[(@code = 'nl-NL' and @codeSystem = '2.16.840.1.113883.6.121')]]/*[not(self::hl7:languageCode[(@code = 'nl-NL' and @codeSystem = '2.16.840.1.113883.6.121')] | self::hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.141-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.141-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d213304e5-true-d213327e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900727-2012-05-03T000000.html"
              test="not(.)">(TaalvaardigheidNederlandsetaal)/d213304e5-true-d213327e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:languageCode[(@code = 'nl-NL' and @codeSystem = '2.16.840.1.113883.6.121')] | hl7:proficiencyLevelCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.141-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.141-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d213304e5-true-d213327e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']]/*[not(self::hl7:time | self::hl7:modeCode[@nullFlavor = 'NA'] | self::hl7:signatureCode[@nullFlavor = 'NA'] | self::hl7:responsibleParty[not(@nullFlavor)][@classCode = 'ASSIGNED'])]"
         id="d213346e5-true-d213411e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900668-2012-03-17T000000.html"
              test="not(.)">(Zorgverlenereninstellingkort)/d213346e5-true-d213411e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:modeCode[@nullFlavor = 'NA'] | hl7:signatureCode[@nullFlavor = 'NA'] | hl7:responsibleParty[not(@nullFlavor)][@classCode = 'ASSIGNED'] (rule-reference: d213346e5-true-d213411e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']]/hl7:responsibleParty[not(@nullFlavor)][@classCode = 'ASSIGNED']/*[not(self::hl7:telecom | self::hl7:agentPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | self::hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'])]"
         id="d213346e76-true-d213492e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900668-2012-03-17T000000.html"
              test="not(.)">(Zorgverlenereninstellingkort)/d213346e76-true-d213492e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:telecom | hl7:agentPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] (rule-reference: d213346e76-true-d213492e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']]/hl7:responsibleParty[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:agentPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/*[not(self::hl7:name)]"
         id="d213346e119-true-d213515e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900668-2012-03-17T000000.html"
              test="not(.)">(Zorgverlenereninstellingkort)/d213346e119-true-d213515e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d213346e119-true-d213515e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']]/hl7:responsibleParty[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:agentPerson[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:name/*[not(self::hl7:given | self::hl7:prefix | self::hl7:family | self::hl7:delimiter | self::hl7:suffix)]"
         id="d213520e5-true-d213539e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900916-2013-03-20T000000.html"
              test="not(.)">(NaamORofL)/d213520e5-true-d213539e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given | hl7:prefix | hl7:family | hl7:delimiter | hl7:suffix (rule-reference: d213520e5-true-d213539e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:author[not(@nullFlavor)][@typeCode = 'AUT'][hl7:responsibleParty[@classCode = 'ASSIGNED']]/hl7:responsibleParty[not(@nullFlavor)][@classCode = 'ASSIGNED']/hl7:representedOrganization[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] | self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:name)]"
         id="d213346e131-true-d213604e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900668-2012-03-17T000000.html"
              test="not(.)">(Zorgverlenereninstellingkort)/d213346e131-true-d213604e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] | hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:name (rule-reference: d213346e131-true-d213604e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:reason[hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d15e13253-true-d213663e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13253-true-d213663e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d15e13253-true-d213663e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:reason[hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:conditionEvent[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:text)]"
         id="d213668e5-true-d213698e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900037-2012-03-15T000000.html"
              test="not(.)">(CategorieRedenAcuteOverdracht)/d213668e5-true-d213698e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.153-2012-08-29T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:text (rule-reference: d213668e5-true-d213698e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/*[not(self::hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]])]"
         id="d15e13266-true-d213741e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13266-true-d213741e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]] (rule-reference: d15e13266-true-d213741e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/*[not(self::hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)])]"
         id="d15e13275-true-d213758e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13275-true-d213758e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)] (rule-reference: d15e13275-true-d213758e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)]/*[not(self::hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13281-true-d213773e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13281-true-d213773e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13281-true-d213773e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d213778e5-true-d213803e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900897-2013-01-01T000000.html"
              test="not(.)">(Ziektenenbijzonderhedenvrouwindealgemeneanamnese_5)/d213778e5-true-d213803e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d213778e5-true-d213803e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d213778e24-true-d213832e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900897-2013-01-01T000000.html"
              test="not(.)">(Ziektenenbijzonderhedenvrouwindealgemeneanamnese_5)/d213778e24-true-d213832e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d213778e24-true-d213832e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d213778e33-true-d213865e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900897-2013-01-01T000000.html"
              test="not(.)">(Ziektenenbijzonderhedenvrouwindealgemeneanamnese_5)/d213778e33-true-d213865e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d213778e33-true-d213865e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d213778e76-true-d213897e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900897-2013-01-01T000000.html"
              test="not(.)">(Ziektenenbijzonderhedenvrouwindealgemeneanamnese_5)/d213778e76-true-d213897e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d213778e76-true-d213897e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='VERLIND']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]]]/hl7:pertinentInformation2[hl7:actList[hl7:code[@code='VERLIND']]][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:uncertaintyCode | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d213884e10-true-d213933e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900897-2013-01-01T000000.html"
              test="not(.)">(Ziektenenbijzonderhedenvrouwindealgemeneanamnese_5)/d213884e10-true-d213933e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'VERLIND' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:uncertaintyCode | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.125-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d213884e10-true-d213933e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/*[not(self::hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]])]"
         id="d15e13294-true-d213982e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13294-true-d213982e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]] (rule-reference: d15e13294-true-d213982e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/*[not(self::hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)])]"
         id="d15e13303-true-d213999e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13303-true-d213999e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)] (rule-reference: d15e13303-true-d213999e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)]/*[not(self::hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13309-true-d214014e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13309-true-d214014e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13309-true-d214014e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d214019e5-true-d214044e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900711-2012-05-03T000000.html"
              test="not(.)">(Bijzonderhedenobstetrischeanamnese_3)/d214019e5-true-d214044e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d214019e5-true-d214044e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d214019e24-true-d214073e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900711-2012-05-03T000000.html"
              test="not(.)">(Bijzonderhedenobstetrischeanamnese_3)/d214019e24-true-d214073e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d214019e24-true-d214073e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d214019e33-true-d214106e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900711-2012-05-03T000000.html"
              test="not(.)">(Bijzonderhedenobstetrischeanamnese_3)/d214019e33-true-d214106e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d214019e33-true-d214106e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d214019e68-true-d214138e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900711-2012-05-03T000000.html"
              test="not(.)">(Bijzonderhedenobstetrischeanamnese_3)/d214019e68-true-d214138e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d214019e68-true-d214138e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation2[hl7:careProvisionEvent/hl7:pertinentInformation2/hl7:actList/hl7:code[@code='OBSTANAM']]/hl7:careProvisionEvent[not(@nullFlavor)][@classCode = 'PCPR'][@moodCode = 'EVN'][hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']]]/hl7:pertinentInformation2[hl7:actList/hl7:code[@code='OBSTANAM']][not(@nullFlavor)]/hl7:actList[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:component[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:uncertaintyCode | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d214125e10-true-d214174e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900711-2012-05-03T000000.html"
              test="not(.)">(Bijzonderhedenobstetrischeanamnese_3)/d214125e10-true-d214174e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'OBSTANAM' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:uncertaintyCode | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.126-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d214125e10-true-d214174e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13324-true-d214220e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13324-true-d214220e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13324-true-d214220e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214207e8-true-d214242e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214207e8-true-d214242e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214207e8-true-d214242e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13333-true-d214274e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13333-true-d214274e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13333-true-d214274e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214261e8-true-d214305e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214261e8-true-d214305e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:uncertaintyCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214261e8-true-d214305e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13343-true-d214345e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13343-true-d214345e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13343-true-d214345e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.154-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.154-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d214332e8-true-d214371e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214332e8-true-d214371e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '106190000' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.154-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.154-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d214332e8-true-d214371e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13352-true-d214411e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13352-true-d214411e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13352-true-d214411e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:inboundRelationship[@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']])]"
         id="d214392e8-true-d214444e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214392e8-true-d214444e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:inboundRelationship[@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']] (rule-reference: d214392e8-true-d214444e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/*[not(self::hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']])]"
         id="d214392e53-true-d214476e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214392e53-true-d214476e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']] (rule-reference: d214392e53-true-d214476e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/*[not(self::hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']])]"
         id="d214463e5-true-d214493e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214463e5-true-d214493e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']] (rule-reference: d214463e5-true-d214493e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']]/*[not(self::hl7:manufacturedProduct[@classCode = 'MANU'][hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND']])]"
         id="d214463e29-true-d214510e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214463e29-true-d214510e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[@classCode = 'MANU'][hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND']] (rule-reference: d214463e29-true-d214510e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[@classCode = 'MANU'][hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND']]/*[not(self::hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND'])]"
         id="d214463e33-true-d214527e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214463e33-true-d214527e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND'] (rule-reference: d214463e33-true-d214527e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '129019007' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[@classCode = 'MANU'][hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND']]/hl7:manufacturedProduct[@classCode = 'MMAT'][@determinerCode = 'KIND']/*[not(self::hl7:name)]"
         id="d214463e37-true-d214544e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214463e37-true-d214544e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d214463e37-true-d214544e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13361-true-d214570e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13361-true-d214570e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13361-true-d214570e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214557e8-true-d214592e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214557e8-true-d214592e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'NEGSE' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214557e8-true-d214592e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13371-true-d214624e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13371-true-d214624e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13371-true-d214624e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214611e8-true-d214646e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214611e8-true-d214646e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '266096002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214611e8-true-d214646e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13380-true-d214678e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13380-true-d214678e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13380-true-d214678e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214665e8-true-d214700e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214665e8-true-d214700e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '161664006' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214665e8-true-d214700e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13389-true-d214732e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13389-true-d214732e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13389-true-d214732e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214719e8-true-d214759e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214719e8-true-d214759e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '39156-5' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214719e8-true-d214759e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13399-true-d214809e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13399-true-d214809e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13399-true-d214809e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:component[hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d214784e8-true-d214848e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214784e8-true-d214848e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:component[hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:component[hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d214784e8-true-d214848e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d214784e56-true-d214874e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214784e56-true-d214874e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d214784e56-true-d214874e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214861e5-true-d214896e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214861e5-true-d214896e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '271649006' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214861e5-true-d214896e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d214784e63-true-d214928e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214784e63-true-d214928e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d214784e63-true-d214928e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '75367002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d214915e5-true-d214950e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214915e5-true-d214950e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '271650006' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d214915e5-true-d214950e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13408-true-d214982e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13408-true-d214982e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13408-true-d214982e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.155-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.155-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d214969e8-true-d215008e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d214969e8-true-d215008e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '883-9' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.155-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.155-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d214969e8-true-d215008e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13417-true-d215042e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13417-true-d215042e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13417-true-d215042e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d215029e8-true-d215068e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215029e8-true-d215068e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '978-7' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d215029e8-true-d215068e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13427-true-d215102e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13427-true-d215102e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13427-true-d215102e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.157-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.157-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d215089e8-true-d215128e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215089e8-true-d215128e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.157-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.157-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d215089e8-true-d215128e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13436-true-d215162e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13436-true-d215162e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13436-true-d215162e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:effectiveTime | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.164-2012-03-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.164-2012-03-17T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d215149e8-true-d215193e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215149e8-true-d215193e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '948-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:effectiveTime | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.164-2012-03-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.164-2012-03-17T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d215149e8-true-d215193e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13445-true-d215233e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13445-true-d215233e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13445-true-d215233e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d215220e8-true-d215255e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215220e8-true-d215255e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '165806002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d215220e8-true-d215255e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13455-true-d215371e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13455-true-d215371e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13455-true-d215371e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:component[hl7:procedure/hl7:code/@code='236973005'])]"
         id="d215274e8-true-d215444e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e8-true-d215444e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:component[hl7:procedure/hl7:code/@code='236973005'] (rule-reference: d215274e8-true-d215444e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d215274e47-true-d215470e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e47-true-d215470e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d215274e47-true-d215470e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d215457e11-true-d215492e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215457e11-true-d215492e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d215457e11-true-d215492e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d215274e59-true-d215524e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e59-true-d215524e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d215274e59-true-d215524e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d215511e11-true-d215550e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215511e11-true-d215550e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d215511e11-true-d215550e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215274e71-true-d215584e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e71-true-d215584e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215274e71-true-d215584e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d215571e11-true-d215606e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215571e11-true-d215606e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '412726003' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d215571e11-true-d215606e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/*[not(self::hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215274e81-true-d215677e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e81-true-d215677e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215274e81-true-d215677e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring'])]"
         id="d215274e111-true-d215758e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e111-true-d215758e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring'] (rule-reference: d215274e111-true-d215758e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215274e147-true-d215790e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e147-true-d215790e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215274e147-true-d215790e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d215777e8-true-d215812e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215777e8-true-d215812e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d215777e8-true-d215812e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215274e157-true-d215844e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e157-true-d215844e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215274e157-true-d215844e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d215831e8-true-d215866e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215831e8-true-d215866e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '169821004' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d215831e8-true-d215866e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215274e167-true-d215898e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e167-true-d215898e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215274e167-true-d215898e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d215885e8-true-d215920e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215885e8-true-d215920e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '169822006' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d215885e8-true-d215920e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d215274e178-true-d215952e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e178-true-d215952e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d215274e178-true-d215952e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d215939e8-true-d215978e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215939e8-true-d215978e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d215939e8-true-d215978e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/*[not(self::hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d215274e188-true-d216034e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215274e188-true-d216034e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d215274e188-true-d216034e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]]] | self::hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]])]"
         id="d215999e8-true-d216127e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e8-true-d216127e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]]] | hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]] (rule-reference: d215999e8-true-d216127e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/*[not(self::hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]])]"
         id="d215999e35-true-d216156e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e35-true-d216156e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] (rule-reference: d215999e35-true-d216156e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'])]"
         id="d215999e52-true-d216178e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e52-true-d216178e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] (rule-reference: d215999e52-true-d216178e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215999e73-true-d216210e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e73-true-d216210e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215999e73-true-d216210e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d216197e5-true-d216236e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216197e5-true-d216236e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d216197e5-true-d216236e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d215999e80-true-d216270e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e80-true-d216270e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d215999e80-true-d216270e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d216257e5-true-d216292e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216257e5-true-d216292e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d216257e5-true-d216292e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d215999e87-true-d216324e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e87-true-d216324e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d215999e87-true-d216324e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d216311e5-true-d216350e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216311e5-true-d216350e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d216311e5-true-d216350e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d215999e95-true-d216384e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e95-true-d216384e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d215999e95-true-d216384e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d216371e5-true-d216406e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216371e5-true-d216406e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d216371e5-true-d216406e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]])]"
         id="d215999e102-true-d216438e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e102-true-d216438e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]] (rule-reference: d215999e102-true-d216438e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]]]/hl7:procedure[hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')] | self::hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d216425e5-true-d216469e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216425e5-true-d216469e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'KuVerl' and @codeSystem = '2.16.840.1.113883.2.4.4.14')] | hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d216425e5-true-d216469e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/*[not(self::hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d215999e109-true-d216509e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d215999e109-true-d216509e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d215999e109-true-d216509e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:procedure/hl7:code/@code='236973005']/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]]/hl7:procedure[hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.38-2013-01-14T180209.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.38-2013-01-14T180209.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d216496e5-true-d216540e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216496e5-true-d216540e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'SectioCae' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.38-2013-01-14T180209.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.38-2013-01-14T180209.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d216496e5-true-d216540e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/*[not(self::hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13462-true-d216607e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13462-true-d216607e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13462-true-d216607e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d15e13471-true-d216707e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13471-true-d216707e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d15e13471-true-d216707e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13499-true-d216733e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13499-true-d216733e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13499-true-d216733e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d216720e8-true-d216755e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216720e8-true-d216755e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_PREGNBR' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d216720e8-true-d216755e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13508-true-d216787e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13508-true-d216787e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13508-true-d216787e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d216774e11-true-d216813e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216774e11-true-d216813e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d216774e11-true-d216813e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13520-true-d216847e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13520-true-d216847e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13520-true-d216847e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d216834e8-true-d216869e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216834e8-true-d216869e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d216834e8-true-d216869e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13530-true-d216901e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13530-true-d216901e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13530-true-d216901e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d216888e18-true-d216923e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216888e18-true-d216923e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Parturit' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d216888e18-true-d216923e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13548-true-d216955e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13548-true-d216955e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13548-true-d216955e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d216942e8-true-d216977e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216942e8-true-d216977e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'AantalLevendeKinderen' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d216942e8-true-d216977e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13557-true-d217015e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13557-true-d217015e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13557-true-d217015e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d216996e15-true-d217048e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216996e15-true-d217048e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d216996e15-true-d217048e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d216996e52-true-d217080e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d216996e52-true-d217080e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d216996e52-true-d217080e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d217067e5-true-d217102e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217067e5-true-d217102e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d217067e5-true-d217102e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13573-true-d217134e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13573-true-d217134e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13573-true-d217134e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='364320009']/hl7:organizer[hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d217121e8-true-d217156e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217121e8-true-d217156e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Bevalplan' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d217121e8-true-d217156e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/*[not(self::hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13582-true-d217213e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13582-true-d217213e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13582-true-d217213e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:component[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]])]"
         id="d15e13591-true-d217310e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13591-true-d217310e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:component[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:component[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:component[hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] (rule-reference: d15e13591-true-d217310e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13619-true-d217336e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13619-true-d217336e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13619-true-d217336e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d217323e8-true-d217362e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217323e8-true-d217362e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d217323e8-true-d217362e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13628-true-d217396e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13628-true-d217396e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13628-true-d217396e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime)]"
         id="d217383e8-true-d217418e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217383e8-true-d217418e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '249120008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime (rule-reference: d217383e8-true-d217418e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13637-true-d217450e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13637-true-d217450e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13637-true-d217450e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d217437e8-true-d217476e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217437e8-true-d217476e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d217437e8-true-d217476e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13647-true-d217513e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13647-true-d217513e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13647-true-d217513e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:inboundRelationship[@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']])]"
         id="d217497e8-true-d217543e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217497e8-true-d217543e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:inboundRelationship[@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']] (rule-reference: d217497e8-true-d217543e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/*[not(self::hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']])]"
         id="d217497e42-true-d217575e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217497e42-true-d217575e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']] (rule-reference: d217497e42-true-d217575e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/*[not(self::hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']])]"
         id="d217562e5-true-d217592e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217562e5-true-d217592e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']] (rule-reference: d217562e5-true-d217592e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']]/*[not(self::hl7:manufacturedProduct[hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]])]"
         id="d217562e28-true-d217613e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217562e28-true-d217613e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] (rule-reference: d217562e28-true-d217613e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/*[not(self::hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d217562e32-true-d217636e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217562e32-true-d217636e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d217562e32-true-d217636e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Medic3stage' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:inboundRelationship[@typeCode = 'COMP'][@typeCode = 'COMP'][hl7:substanceAdministration[@classCode = 'SBADM'][@moodCode = 'EVN']]/hl7:substanceAdministration[not(@nullFlavor)][@classCode = 'SBADM'][@moodCode = 'EVN'][hl7:consumable[@typeCode = 'CSM']]/hl7:consumable[not(@nullFlavor)][@typeCode = 'CSM'][hl7:manufacturedProduct[@classCode = 'MANU']]/hl7:manufacturedProduct[hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:manufacturedProduct[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d217562e36-true-d217659e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217562e36-true-d217659e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.21-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d217562e36-true-d217659e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e13656-true-d217687e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13656-true-d217687e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e13656-true-d217687e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d217674e8-true-d217713e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217674e8-true-d217713e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d217674e8-true-d217713e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13665-true-d217747e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13665-true-d217747e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13665-true-d217747e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.160-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d217734e8-true-d217773e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217734e8-true-d217773e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364343000' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.160-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.160-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d217734e8-true-d217773e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e13675-true-d217807e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13675-true-d217807e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e13675-true-d217807e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer/hl7:code/@code='236973005']/hl7:organizer[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d217794e8-true-d217833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217794e8-true-d217833e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN5704' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.27-2013-04-23T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d217794e8-true-d217833e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/*[not(self::hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]])]"
         id="d15e13686-true-d217917e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13686-true-d217917e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]] (rule-reference: d15e13686-true-d217917e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | self::hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]])]"
         id="d217854e11-true-d218077e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e11-true-d218077e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] | hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] (rule-reference: d217854e11-true-d218077e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/*[not(self::hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]])]"
         id="d217854e28-true-d218118e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e28-true-d218118e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] (rule-reference: d217854e28-true-d218118e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'])]"
         id="d217854e50-true-d218152e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e50-true-d218152e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] (rule-reference: d217854e50-true-d218152e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.3.22.6.3') and not(@root='2.16.840.1.113883.2.4.6.3')] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.22.6.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | self::hl7:birthTime | self::hl7:deceasedInd)]"
         id="d217854e59-true-d218191e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e59-true-d218191e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.3.22.6.3') and not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.6.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] | hl7:birthTime | hl7:deceasedInd (rule-reference: d217854e59-true-d218191e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d217854e105-true-d218243e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e105-true-d218243e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d217854e105-true-d218243e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d218230e5-true-d218269e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218230e5-true-d218269e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d218230e5-true-d218269e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d217854e112-true-d218303e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e112-true-d218303e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d217854e112-true-d218303e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d218290e11-true-d218329e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218290e11-true-d218329e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN810201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.42-2013-01-10T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d218290e11-true-d218329e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d217854e125-true-d218363e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e125-true-d218363e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d217854e125-true-d218363e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime)]"
         id="d218350e5-true-d218385e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218350e5-true-d218385e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime (rule-reference: d218350e5-true-d218385e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d217854e133-true-d218417e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e133-true-d218417e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d217854e133-true-d218417e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime)]"
         id="d218404e5-true-d218439e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218404e5-true-d218439e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '249160009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime (rule-reference: d218404e5-true-d218439e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d217854e140-true-d218471e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e140-true-d218471e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d217854e140-true-d218471e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d218458e5-true-d218497e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218458e5-true-d218497e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '289258004' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.170-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d218458e5-true-d218497e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d217854e147-true-d218531e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e147-true-d218531e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d217854e147-true-d218531e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d218518e5-true-d218553e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218518e5-true-d218553e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d218518e5-true-d218553e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d217854e155-true-d218585e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e155-true-d218585e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d217854e155-true-d218585e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d218572e5-true-d218611e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218572e5-true-d218611e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d218572e5-true-d218611e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d217854e162-true-d218645e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e162-true-d218645e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d217854e162-true-d218645e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d218632e5-true-d218667e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218632e5-true-d218667e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d218632e5-true-d218667e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d217854e169-true-d218699e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e169-true-d218699e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d217854e169-true-d218699e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d218686e5-true-d218721e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218686e5-true-d218721e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '66091009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d218686e5-true-d218721e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d217854e177-true-d218753e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e177-true-d218753e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d217854e177-true-d218753e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d218740e5-true-d218779e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218740e5-true-d218779e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.33-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d218740e5-true-d218779e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d217854e184-true-d218813e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d217854e184-true-d218813e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d217854e184-true-d218813e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:procedure/hl7:code/@code='Baring']/hl7:procedure[hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.40-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.40-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d218800e8-true-d218839e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218800e8-true-d218839e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.40-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.40-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d218800e8-true-d218839e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13699-true-d218933e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13699-true-d218933e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13699-true-d218933e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:effectiveTime | self::hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:component[hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d218860e11-true-d219070e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e11-true-d219070e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:effectiveTime | hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] | hl7:component[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:component[hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d218860e11-true-d219070e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/*[not(self::hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]])]"
         id="d218860e37-true-d219099e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e37-true-d219099e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] (rule-reference: d218860e37-true-d219099e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/*[not(self::hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | self::hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'])]"
         id="d218860e54-true-d219121e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e54-true-d219121e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] | hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] (rule-reference: d218860e54-true-d219121e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d218860e74-true-d219153e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e74-true-d219153e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d218860e74-true-d219153e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219140e8-true-d219175e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219140e8-true-d219175e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219140e8-true-d219175e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e83-true-d219207e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e83-true-d219207e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e83-true-d219207e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219194e8-true-d219229e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219194e8-true-d219229e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '11820-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219194e8-true-d219229e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e93-true-d219261e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e93-true-d219261e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e93-true-d219261e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219248e8-true-d219283e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219248e8-true-d219283e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_BPD_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219248e8-true-d219283e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e102-true-d219315e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e102-true-d219315e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e102-true-d219315e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219302e8-true-d219337e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219302e8-true-d219337e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '11984-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219302e8-true-d219337e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e111-true-d219369e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e111-true-d219369e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e111-true-d219369e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219356e8-true-d219391e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219356e8-true-d219391e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_HC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219356e8-true-d219391e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e121-true-d219423e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e121-true-d219423e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e121-true-d219423e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219410e8-true-d219445e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219410e8-true-d219445e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '11979-2' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219410e8-true-d219445e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e130-true-d219477e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e130-true-d219477e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e130-true-d219477e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219464e8-true-d219499e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219464e8-true-d219499e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_AC_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219464e8-true-d219499e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e139-true-d219531e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e139-true-d219531e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e139-true-d219531e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219518e8-true-d219553e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219518e8-true-d219553e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '11963-6' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219518e8-true-d219553e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d218860e149-true-d219585e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e149-true-d219585e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d218860e149-true-d219585e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219572e8-true-d219607e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219572e8-true-d219607e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_FL_PRCTL' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219572e8-true-d219607e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d218860e158-true-d219639e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d218860e158-true-d219639e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d218860e158-true-d219639e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:organizer[hl7:code[(@code = '12130-1' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219626e8-true-d219661e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219626e8-true-d219661e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Echoparameters' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219626e8-true-d219661e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/*[not(self::hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13711-true-d219715e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d15e13711-true-d219715e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13711-true-d219715e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:component[hl7:observation/hl7:code[@code='59260-0' and @codeSystem='2.16.840.1.113883.6.1']] | self::hl7:component[hl7:observation/hl7:code[@code='X_RHFETBM' and @codeSystem='2.16.840.1.113883.6.1']] | self::hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']])]"
         id="d219680e11-true-d219747e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219680e11-true-d219747e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:component[hl7:observation/hl7:code[@code='59260-0' and @codeSystem='2.16.840.1.113883.6.1']] | hl7:component[hl7:observation/hl7:code[@code='X_RHFETBM' and @codeSystem='2.16.840.1.113883.6.1']] | hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']] (rule-reference: d219680e11-true-d219747e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='59260-0' and @codeSystem='2.16.840.1.113883.6.1']]/*[not(self::hl7:observation[hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d219680e35-true-d219775e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219680e35-true-d219775e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d219680e35-true-d219775e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='59260-0' and @codeSystem='2.16.840.1.113883.6.1']]/hl7:observation[hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d219760e8-true-d219813e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219760e8-true-d219813e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d219760e8-true-d219813e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='59260-0' and @codeSystem='2.16.840.1.113883.6.1']]/hl7:observation[hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d219760e50-true-d219851e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219760e50-true-d219851e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d219760e50-true-d219851e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='59260-0' and @codeSystem='2.16.840.1.113883.6.1']]/hl7:observation[hl7:code[(@code = '59260-0' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219838e8-true-d219873e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219838e8-true-d219873e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219838e8-true-d219873e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='X_RHFETBM' and @codeSystem='2.16.840.1.113883.6.1']]/*[not(self::hl7:observation[hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d219680e44-true-d219907e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219680e44-true-d219907e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d219680e44-true-d219907e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='X_RHFETBM' and @codeSystem='2.16.840.1.113883.6.1']]/hl7:observation[hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:effectiveTime | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d219892e8-true-d219949e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219892e8-true-d219949e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:effectiveTime | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.156-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d219892e8-true-d219949e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='X_RHFETBM' and @codeSystem='2.16.840.1.113883.6.1']]/hl7:observation[hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d219892e68-true-d219989e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219892e68-true-d219989e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d219892e68-true-d219989e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:observation/hl7:code[@code='X_RHFETBM' and @codeSystem='2.16.840.1.113883.6.1']]/hl7:observation[hl7:code[(@code = 'X_RHFETBM' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d219976e8-true-d220011e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219976e8-true-d220011e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d219976e8-true-d220011e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/*[not(self::hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d219680e53-true-d220045e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d219680e53-true-d220045e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d219680e53-true-d220045e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime | self::hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:inboundRelationship[hl7:observation/hl7:code[@code='249021005']] | self::hl7:inboundRelationship[hl7:observation/hl7:code[@code='289761004']] | self::hl7:inboundRelationship[hl7:observation/hl7:code[@code='112074005']] | self::hl7:inboundRelationship[hl7:observation/hl7:code[@code='364611006']] | self::hl7:inboundRelationship[hl7:observation/hl7:code[@code='364612004']] | self::hl7:inboundRelationship[hl7:observation/hl7:code[@code='163520002']])]"
         id="d220030e8-true-d220089e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e8-true-d220089e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime | hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:inboundRelationship[hl7:observation/hl7:code[@code='249021005']] | hl7:inboundRelationship[hl7:observation/hl7:code[@code='289761004']] | hl7:inboundRelationship[hl7:observation/hl7:code[@code='112074005']] | hl7:inboundRelationship[hl7:observation/hl7:code[@code='364611006']] | hl7:inboundRelationship[hl7:observation/hl7:code[@code='364612004']] | hl7:inboundRelationship[hl7:observation/hl7:code[@code='163520002']] (rule-reference: d220030e8-true-d220089e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e60-true-d220127e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e60-true-d220127e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e60-true-d220127e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d220114e8-true-d220149e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220114e8-true-d220149e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '445872007' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d220114e8-true-d220149e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='249021005']]/*[not(self::hl7:observation[hl7:code[(@code = '249021005' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e67-true-d220176e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e67-true-d220176e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '249021005' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e67-true-d220176e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='249021005']]/hl7:observation[hl7:code[(@code = '249021005' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '249021005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.158-2012-03-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.158-2012-03-17T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d220030e87-true-d220202e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e87-true-d220202e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '249021005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.158-2012-03-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.158-2012-03-17T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d220030e87-true-d220202e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='289761004']]/*[not(self::hl7:observation[hl7:code[(@code = '289761004' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e137-true-d220231e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e137-true-d220231e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '289761004' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e137-true-d220231e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='289761004']]/hl7:observation[hl7:code[(@code = '289761004' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '289761004' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.175-2013-04-22T173433.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.175-2013-04-22T173433.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d220030e157-true-d220257e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e157-true-d220257e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '289761004' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.175-2013-04-22T173433.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.175-2013-04-22T173433.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d220030e157-true-d220257e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='112074005']]/*[not(self::hl7:observation[hl7:code[(@code = '112074005' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e206-true-d220286e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e206-true-d220286e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '112074005' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e206-true-d220286e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='112074005']]/hl7:observation[hl7:code[(@code = '112074005' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '112074005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.173-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.173-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d220030e226-true-d220312e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e226-true-d220312e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '112074005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.173-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.173-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d220030e226-true-d220312e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='364611006']]/*[not(self::hl7:observation[hl7:code[(@code = '364611006' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e276-true-d220341e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e276-true-d220341e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '364611006' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e276-true-d220341e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='364611006']]/hl7:observation[hl7:code[(@code = '364611006' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364611006' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.159-2012-03-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d220030e296-true-d220367e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e296-true-d220367e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364611006' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.159-2012-03-17T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d220030e296-true-d220367e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='364612004']]/*[not(self::hl7:observation[hl7:code[(@code = '364612004' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e346-true-d220396e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e346-true-d220396e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '364612004' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e346-true-d220396e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='364612004']]/hl7:observation[hl7:code[(@code = '364612004' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '364612004' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.172-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.172-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d220030e366-true-d220422e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e366-true-d220422e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '364612004' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.172-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.172-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d220030e366-true-d220422e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='163520002']]/*[not(self::hl7:observation[hl7:code[(@code = '163520002' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d220030e416-true-d220451e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e416-true-d220451e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '163520002' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d220030e416-true-d220451e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.63']]/hl7:pertinentInformation3[hl7:organizer[hl7:code/@code='12131-9']]/hl7:organizer[hl7:code[(@code = '12131-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:component[hl7:procedure/hl7:code[@code='51597003' and @codeSystem='2.16.840.1.113883.6.96']]/hl7:procedure[hl7:code[(@code = '51597003' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:inboundRelationship[hl7:observation/hl7:code[@code='163520002']]/hl7:observation[hl7:code[(@code = '163520002' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:code[(@code = '163520002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.174-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.174-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d220030e436-true-d220477e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.63-2013-11-08T000000.html"
              test="not(.)">(acufov)/d220030e436-true-d220477e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '163520002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.174-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.174-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d220030e436-true-d220477e0)</assert>
   </rule>
</pattern>
