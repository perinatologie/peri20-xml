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
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/*[not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54'] | self::hl7:id[not(@nullFlavor)] | self::hl7:statusCode[@code = 'active' or @nullFlavor] | self::hl7:effectiveTime | self::hl7:subject[@typeCode = 'SBJ'] | self::hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] | self::hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d15e12870-true-d187455e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12870-true-d187455e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54'] | hl7:id[not(@nullFlavor)] | hl7:statusCode[@code = 'active' or @nullFlavor] | hl7:effectiveTime | hl7:subject[@typeCode = 'SBJ'] | hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] | hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d15e12870-true-d187455e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime/*[not(self::hl7:low)]"
         id="d15e12902-true-d187492e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12902-true-d187492e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low (rule-reference: d15e12902-true-d187492e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/*[not(self::hl7:patient[hl7:statusCode[@code = 'active']])]"
         id="d187505e5-true-d187549e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="not(.)">(Vrouwcounseling)/d187505e5-true-d187549e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code = 'active']] (rule-reference: d187505e5-true-d187549e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/*[not(self::hl7:id | self::hl7:id | self::hl7:statusCode[@code = 'active'] | self::hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d187505e17-true-d187603e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="not(.)">(Vrouwcounseling)/d187505e17-true-d187603e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:id | hl7:statusCode[@code = 'active'] | hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d187505e17-true-d187603e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(self::hl7:name | self::hl7:birthTime | self::hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d187505e43-true-d187656e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="not(.)">(Vrouwcounseling)/d187505e43-true-d187656e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:birthTime | hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d187505e43-true-d187656e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/*[not(self::hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d187687e5-true-d187749e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d187687e5-true-d187749e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d187687e5-true-d187749e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:agentPerson[not(@nullFlavor)] | self::hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]])]"
         id="d187687e59-true-d187824e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d187687e59-true-d187824e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:agentPerson[not(@nullFlavor)] | hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] (rule-reference: d187687e59-true-d187824e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/*[not(self::hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d187847e5-true-d187865e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenertype)/d187847e5-true-d187865e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d187847e5-true-d187865e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]/*[not(self::hl7:name)]"
         id="d187687e91-true-d187895e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d187687e91-true-d187895e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d187687e91-true-d187895e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/*[not(self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:name | self::hl7:addr)]"
         id="d187687e93-true-d187941e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="not(.)">(Zorgverlenereninstelling)/d187687e93-true-d187941e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:name | hl7:addr (rule-reference: d187687e93-true-d187941e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/*[not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:county | self::hl7:country)]"
         id="d187988e5-true-d188037e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="not(.)">(Zorginstellingadres)/d187988e5-true-d188037e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:county | hl7:country (rule-reference: d187988e5-true-d188037e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12920-true-d188105e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12920-true-d188105e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12920-true-d188105e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d188092e8-true-d188127e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188092e8-true-d188127e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d188092e8-true-d188127e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12929-true-d188159e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12929-true-d188159e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12929-true-d188159e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d188146e8-true-d188186e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188146e8-true-d188186e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d188146e8-true-d188186e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12938-true-d188224e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12938-true-d188224e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12938-true-d188224e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d188211e8-true-d188256e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188211e8-true-d188256e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d188211e8-true-d188256e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12948-true-d188312e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12948-true-d188312e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12948-true-d188312e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:effectiveTime | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d188287e8-true-d188361e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188287e8-true-d188361e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:effectiveTime | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d188287e8-true-d188361e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d188287e45-true-d188399e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188287e45-true-d188399e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d188287e45-true-d188399e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d188386e5-true-d188430e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188386e5-true-d188430e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d188386e5-true-d188430e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d188287e52-true-d188470e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188287e52-true-d188470e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d188287e52-true-d188470e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d188457e5-true-d188492e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188457e5-true-d188492e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d188457e5-true-d188492e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]])]"
         id="d15e12957-true-d188542e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12957-true-d188542e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]] (rule-reference: d15e12957-true-d188542e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/*[not(self::hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d188511e8-true-d188597e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188511e8-true-d188597e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d188511e8-true-d188597e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d188511e37-true-d188629e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188511e37-true-d188629e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d188511e37-true-d188629e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')])]"
         id="d188616e5-true-d188651e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188616e5-true-d188651e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')] (rule-reference: d188616e5-true-d188651e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d188511e44-true-d188683e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188511e44-true-d188683e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d188511e44-true-d188683e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d188670e5-true-d188714e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188670e5-true-d188714e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d188670e5-true-d188714e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d188511e51-true-d188760e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188511e51-true-d188760e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d188511e51-true-d188760e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]])]"
         id="d188741e5-true-d188793e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188741e5-true-d188793e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]] (rule-reference: d188741e5-true-d188793e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d188741e44-true-d188825e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188741e44-true-d188825e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d188741e44-true-d188825e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient])]"
         id="d188812e5-true-d188852e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188812e5-true-d188852e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient] (rule-reference: d188812e5-true-d188852e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/*[not(self::hl7:patient[hl7:statusCode[@code = 'completed']])]"
         id="d188812e53-true-d188881e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188812e53-true-d188881e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patient[hl7:statusCode[@code = 'completed']] (rule-reference: d188812e53-true-d188881e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/*[not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:statusCode[@code = 'completed'] | self::hl7:Person[not(@nullFlavor)])]"
         id="d188812e57-true-d188908e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188812e57-true-d188908e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:statusCode[@code = 'completed'] | hl7:Person[not(@nullFlavor)] (rule-reference: d188812e57-true-d188908e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:Person[not(@nullFlavor)]/*[not(self::hl7:birthTime)]"
         id="d188812e69-true-d188937e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188812e69-true-d188937e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:birthTime (rule-reference: d188812e69-true-d188937e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12966-true-d188963e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12966-true-d188963e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12966-true-d188963e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d188950e8-true-d188989e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d188950e8-true-d188989e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d188950e8-true-d188989e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12976-true-d189023e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12976-true-d189023e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12976-true-d189023e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d189010e8-true-d189049e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189010e8-true-d189049e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d189010e8-true-d189049e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d15e12985-true-d189083e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12985-true-d189083e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d15e12985-true-d189083e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:id | self::hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d189070e8-true-d189110e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189070e8-true-d189110e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d189070e8-true-d189110e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e12994-true-d189148e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e12994-true-d189148e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e12994-true-d189148e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d189135e8-true-d189175e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189135e8-true-d189175e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d189135e8-true-d189175e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13004-true-d189213e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e13004-true-d189213e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13004-true-d189213e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d189200e8-true-d189240e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189200e8-true-d189240e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d189200e8-true-d189240e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13013-true-d189278e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e13013-true-d189278e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13013-true-d189278e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d189265e8-true-d189300e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189265e8-true-d189300e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d189265e8-true-d189300e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/*[not(self::hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]])]"
         id="d15e13022-true-d189332e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e13022-true-d189332e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]] (rule-reference: d15e13022-true-d189332e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/*[not(self::hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')])]"
         id="d189319e8-true-d189354e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189319e8-true-d189354e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] (rule-reference: d189319e8-true-d189354e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/*[not(self::hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]])]"
         id="d15e13032-true-d189428e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d15e13032-true-d189428e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]] (rule-reference: d15e13032-true-d189428e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/*[not(self::hl7:id | self::hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:effectiveTime | self::hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | self::hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]])]"
         id="d189373e8-true-d189510e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189373e8-true-d189510e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:effectiveTime | hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] | hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] (rule-reference: d189373e8-true-d189510e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d189373e51-true-d189552e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189373e51-true-d189552e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d189373e51-true-d189552e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d189539e5-true-d189578e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189539e5-true-d189578e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d189539e5-true-d189578e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d189373e58-true-d189612e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189373e58-true-d189612e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d189373e58-true-d189612e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')])]"
         id="d189599e5-true-d189629e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189599e5-true-d189629e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] (rule-reference: d189599e5-true-d189629e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d189373e65-true-d189655e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189373e65-true-d189655e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d189373e65-true-d189655e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')])]"
         id="d189642e5-true-d189672e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189642e5-true-d189672e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] (rule-reference: d189642e5-true-d189672e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d189373e73-true-d189698e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189373e73-true-d189698e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d189373e73-true-d189698e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')])]"
         id="d189685e5-true-d189715e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189685e5-true-d189715e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] (rule-reference: d189685e5-true-d189715e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/*[not(self::hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]])]"
         id="d189373e80-true-d189741e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189373e80-true-d189741e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] (rule-reference: d189373e80-true-d189741e0)</assert>
   </rule>

   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/*[not(self::hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')])]"
         id="d189728e5-true-d189758e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="not(.)">(counseling-1c)/d189728e5-true-d189758e0: dit element '<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] (rule-reference: d189728e5-true-d189758e0)</assert>
   </rule>
</pattern>
