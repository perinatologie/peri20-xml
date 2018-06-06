<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.54
Name: Counseling bericht fase 1c
Description: Template: Counseling bericht fase 1c vanuit 1e lijn naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000-closed">
   <title>Counseling bericht fase 1c</title>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/*[not(self::hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'] | self::hl7:id[not(@nullFlavor)] | self::hl7:statusCode[@code='active' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:subject[@typeCode='SBJ'] | self::hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="d14e4402-true-d81256e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4402-true-d81256e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54'] | hl7:id[not(@nullFlavor)] | hl7:statusCode[@code='active' or @nullFlavor] | hl7:effectiveTime | hl7:subject[@typeCode='SBJ'] | hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]] (rule-reference: d14e4402-true-d81256e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime/*[not(self::hl7:low)]"
         id="d14e4434-true-d81292e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4434-true-d81292e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low (rule-reference: d14e4434-true-d81292e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/*[not(self::hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']])]"
         id="d81304e5-true-d81348e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="not(.)">(Vrouwcounseling)/d81304e5-true-d81348e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']] (rule-reference: d81304e5-true-d81348e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/*[not(self::hl7:id | self::hl7:id | self::hl7:statusCode[@code='active'] | self::hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d81304e17-true-d81401e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="not(.)">(Vrouwcounseling)/d81304e17-true-d81401e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:id | hl7:statusCode[@code='active'] | hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d81304e17-true-d81401e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode='SBJ']/hl7:patient[@classCode='PAT'][hl7:statusCode[@code='active']]/hl7:Person[@classCode='PSN'][hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d81304e43-true-d81453e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="not(.)">(Vrouwcounseling)/d81304e43-true-d81453e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:ethnicGroupCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d81304e43-true-d81453e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/*[not(self::hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])]"
         id="d81483e5-true-d81545e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d81483e5-true-d81545e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] (rule-reference: d81483e5-true-d81545e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/*[not(self::hl7:id[@root='2.16.528.1.1007.3.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:agentPerson[not(@nullFlavor)] | self::hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]])]"
         id="d81483e59-true-d81619e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d81483e59-true-d81619e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.528.1.1007.3.1'] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.2'] | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:agentPerson[not(@nullFlavor)] | hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]] (rule-reference: d81483e59-true-d81619e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor]/*[not(self::hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d81641e5-true-d81659e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenertype)/d81641e5-true-d81659e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d81641e5-true-d81659e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]/*[not(self::hl7:name)]"
         id="d81483e91-true-d81688e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d81483e91-true-d81688e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d81483e91-true-d81688e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | self::hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root='2.16.528.1.1007.3.3'] | self::hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'] | self::hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | self::hl7:name | self::hl7:addr)]"
         id="d81483e93-true-d81733e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d81483e93-true-d81733e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | hl7:id[@root='2.16.840.1.113883.2.4.6.1'] | hl7:id[@root='2.16.528.1.1007.3.3'] | hl7:id[@root='2.16.840.1.113883.2.4.3.22.98.1'] | hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] | hl7:name | hl7:addr (rule-reference: d81483e93-true-d81733e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[@typeCode='PPRF'][hl7:responsibleParty[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]]/hl7:responsibleParty[@classCode='ASSIGNED'][hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem)]]/hl7:addr/*[not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:county | self::hl7:country)]"
         id="d81779e5-true-d81828e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="not(.)">(Zorginstellingadres)/d81779e5-true-d81828e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:county | hl7:country (rule-reference: d81779e5-true-d81828e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4452-true-d81895e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4452-true-d81895e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4452-true-d81895e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d81882e8-true-d81916e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d81882e8-true-d81916e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d81882e8-true-d81916e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4461-true-d81947e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4461-true-d81947e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4461-true-d81947e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d81934e8-true-d81973e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d81934e8-true-d81973e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d81934e8-true-d81973e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4470-true-d82010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4470-true-d82010e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4470-true-d82010e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d81997e8-true-d82041e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d81997e8-true-d82041e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d81997e8-true-d82041e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4480-true-d82096e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4480-true-d82096e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4480-true-d82096e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] | self::hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])]"
         id="d82071e8-true-d82144e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82071e8-true-d82144e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] | hl7:targetOf[@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d82071e8-true-d82144e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d82071e45-true-d82181e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82071e45-true-d82181e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d82071e45-true-d82181e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='SPRT'][@typeCode='SPRT'][hl7:observation[hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d82168e5-true-d82211e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82168e5-true-d82211e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82168e5-true-d82211e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d82071e52-true-d82250e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82071e52-true-d82250e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d82071e52-true-d82250e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)])]"
         id="d82237e5-true-d82271e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82237e5-true-d82271e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)][not(@nullFlavor)] (rule-reference: d82237e5-true-d82271e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d14e4489-true-d82320e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4489-true-d82320e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d14e4489-true-d82320e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="d82289e8-true-d82374e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82289e8-true-d82374e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]] (rule-reference: d82289e8-true-d82374e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d82289e37-true-d82405e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82289e37-true-d82405e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82289e37-true-d82405e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')])]"
         id="d82392e5-true-d82426e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82392e5-true-d82426e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')] (rule-reference: d82392e5-true-d82426e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d82289e44-true-d82457e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82289e44-true-d82457e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82289e44-true-d82457e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d82444e5-true-d82487e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82444e5-true-d82487e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:methodCode[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82444e5-true-d82487e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d82289e51-true-d82532e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82289e51-true-d82532e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82289e51-true-d82532e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]])]"
         id="d82513e5-true-d82564e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82513e5-true-d82564e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:targetOf[@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]] (rule-reference: d82513e5-true-d82564e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d82513e44-true-d82595e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82513e44-true-d82595e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d82513e44-true-d82595e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:subject[@typeCode='SBJ'][not(@nullFlavor)])]"
         id="d82582e5-true-d82621e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82582e5-true-d82621e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:subject[@typeCode='SBJ'][not(@nullFlavor)] (rule-reference: d82582e5-true-d82621e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/*[not(self::hl7:patient[hl7:statusCode[@code='completed']])]"
         id="d82582e53-true-d82649e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82582e53-true-d82649e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code='completed']] (rule-reference: d82582e53-true-d82649e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/*[not(self::hl7:id | self::hl7:statusCode[@code='completed'] | self::hl7:Person[not(@nullFlavor)])]"
         id="d82582e57-true-d82675e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82582e57-true-d82675e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:statusCode[@code='completed'] | hl7:Person[not(@nullFlavor)] (rule-reference: d82582e57-true-d82675e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='PERT'][@typeCode='PERT'][hl7:procedure[hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:procedure[@classCode='PROC'][@moodCode='EVN'][hl7:code[(@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:subject[@typeCode='SBJ'][not(@nullFlavor)]/hl7:patient[hl7:statusCode[@code='completed']]/hl7:Person[not(@nullFlavor)]/*[not(self::hl7:birthTime)]"
         id="d82582e69-true-d82703e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82582e69-true-d82703e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:birthTime (rule-reference: d82582e69-true-d82703e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4498-true-d82728e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4498-true-d82728e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4498-true-d82728e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d82715e8-true-d82753e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82715e8-true-d82753e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82715e8-true-d82753e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4508-true-d82786e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4508-true-d82786e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4508-true-d82786e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d82773e8-true-d82811e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82773e8-true-d82811e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor=doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d82773e8-true-d82811e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d14e4517-true-d82844e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4517-true-d82844e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d14e4517-true-d82844e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d82831e8-true-d82870e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82831e8-true-d82870e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d82831e8-true-d82870e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d14e4526-true-d82907e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4526-true-d82907e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d14e4526-true-d82907e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d82894e8-true-d82933e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82894e8-true-d82933e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d82894e8-true-d82933e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d14e4536-true-d82970e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4536-true-d82970e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d14e4536-true-d82970e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d82957e8-true-d82996e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d82957e8-true-d82996e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d82957e8-true-d82996e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="d14e4545-true-d83033e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4545-true-d83033e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]] (rule-reference: d14e4545-true-d83033e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d83020e8-true-d83054e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83020e8-true-d83054e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d83020e8-true-d83054e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]])]"
         id="d14e4554-true-d83085e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4554-true-d83085e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]] (rule-reference: d14e4554-true-d83085e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:observation[hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)])]"
         id="d83072e8-true-d83106e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83072e8-true-d83106e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)] (rule-reference: d83072e8-true-d83106e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/*[not(self::hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]])]"
         id="d14e4564-true-d83179e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d14e4564-true-d83179e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]] (rule-reference: d14e4564-true-d83179e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')] | self::hl7:effectiveTime | self::hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]])]"
         id="d83124e8-true-d83260e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83124e8-true-d83260e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')] | hl7:effectiveTime | hl7:targetOf[@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d83124e8-true-d83260e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d83124e51-true-d83301e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83124e51-true-d83301e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e51-true-d83301e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='COMP'][@typeCode='COMP'][hl7:observation[hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[@classCode='OBS'][@moodCode='EVN'][hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor])]"
         id="d83288e5-true-d83326e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83288e5-true-d83326e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code,@codeSystem)=doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code,@codeSystem) or @nullFlavor] (rule-reference: d83288e5-true-d83326e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d83124e58-true-d83359e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83124e58-true-d83359e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e58-true-d83359e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d83346e5-true-d83375e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83346e5-true-d83375e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83346e5-true-d83375e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d83124e65-true-d83400e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83124e65-true-d83400e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e65-true-d83400e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d83387e5-true-d83416e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83387e5-true-d83416e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83387e5-true-d83416e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d83124e73-true-d83441e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83124e73-true-d83441e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e73-true-d83441e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d83428e5-true-d83457e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83428e5-true-d83457e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83428e5-true-d83457e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]])]"
         id="d83124e80-true-d83482e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83124e80-true-d83482e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]] (rule-reference: d83124e80-true-d83482e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root='2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[@typeCode='PERT'][@typeCode='PERT'][hl7:encounter[hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]]/hl7:encounter[@classCode='ENC'][@moodCode='EVN'][hl7:code[(@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')]]/hl7:targetOf[@typeCode='SUBJ'][@typeCode='SUBJ'][hl7:act[hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]]/hl7:act[@classCode='CONS'][@moodCode='INT'][hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')])]"
         id="d83469e5-true-d83498e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20180320T180627/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d83469e5-true-d83498e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')] (rule-reference: d83469e5-true-d83498e0)</assert>
   </rule>
</pattern>
