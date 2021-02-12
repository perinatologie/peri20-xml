<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.54
Name: Counseling bericht fase 1c
Description: Template: Counseling bericht fase 1c vanuit 1e lijn naar registraties
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000">
   <title>Counseling bericht fase 1c</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]
Item: (counseling-1c)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]"
         id="d15e12870-false-d181701e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']) &gt;= 1">(counseling-1c): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']) &lt;= 1">(counseling-1c): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(counseling-1c): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(counseling-1c): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:statusCode[@code = 'active' or @nullFlavor]) &lt;= 1">(counseling-1c): element hl7:statusCode[@code = 'active' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(counseling-1c): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:subject[@typeCode = 'SBJ']) &gt;= 1">(counseling-1c): element hl7:subject[@typeCode = 'SBJ'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:subject[@typeCode = 'SBJ']) &lt;= 1">(counseling-1c): element hl7:subject[@typeCode = 'SBJ'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]) &gt;= 1">(counseling-1c): element hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]) &lt;= 1">(counseling-1c): element hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &gt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(counseling-1c): element hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']
Item: (counseling-1c)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']"
         id="d15e12877-false-d182037e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(counseling-1c): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.54')">(counseling-1c): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.54' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900002
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:id[not(@nullFlavor)]
Item: (CareProvisionID)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:id[not(@nullFlavor)]"
         id="d182050e5-false-d182058e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900002-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CareProvisionID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:statusCode[@code = 'active' or @nullFlavor]
Item: (counseling-1c)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:statusCode[@code = 'active' or @nullFlavor]"
         id="d15e12892-false-d182071e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(counseling-1c): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="@nullFlavor or (@code='active')">(counseling-1c): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime
Item: (counseling-1c)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime"
         id="d15e12902-false-d182093e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="count(hl7:low) &lt;= 1">(counseling-1c): element hl7:low komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900115
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime/hl7:low
Item: (Datumstartzorgverantwoordelijkheid)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:effectiveTime/hl7:low"
         id="d182111e5-false-d182119e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900115-2012-09-02T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Datumstartzorgverantwoordelijkheid): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900115-2012-09-02T000000.html"
              test="not(*)">(Datumstartzorgverantwoordelijkheid): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900617
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']
Item: (Vrouwcounseling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']"
         id="d182130e5-false-d182148e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="string(@typeCode) = ('SBJ')">(Vrouwcounseling): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900617
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]
Item: (Vrouwcounseling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]"
         id="d182130e17-false-d182187e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="string(@classCode) = ('PAT')">(Vrouwcounseling): de waarde van classCode MOET 'PAT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:id)&gt;0">(Vrouwcounseling): identification mother requires either a BSN or a local id or both</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:id) &gt;= 1">(Vrouwcounseling): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:id) &lt;= 1">(Vrouwcounseling): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &gt;= 1">(Vrouwcounseling): element hl7:statusCode[@code = 'active'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:statusCode[@code = 'active']) &lt;= 1">(Vrouwcounseling): element hl7:statusCode[@code = 'active'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(Vrouwcounseling): element hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(Vrouwcounseling): element hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900028
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:id
Item: (Burgerservicenummer)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:id"
         id="d182265e5-false-d182273e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Burgerservicenummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900028-2009-10-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.3') or not(@root)">(Burgerservicenummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900029
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:id
Item: (Lokalepersoonsidentificatie)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:id"
         id="d182286e5-false-d182294e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900029-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Lokalepersoonsidentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900617
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:statusCode[@code = 'active']
Item: (Vrouwcounseling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:statusCode[@code = 'active']"
         id="d182130e33-false-d182307e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Vrouwcounseling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="@nullFlavor or (@code='active')">(Vrouwcounseling): de elementwaarde MOET een zijn van 'code 'active''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900617
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Vrouwcounseling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d182130e43-false-d182335e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="string(@classCode) = ('PSN')">(Vrouwcounseling): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(Vrouwcounseling): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:name) &gt;= 1">(Vrouwcounseling): element hl7:name is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:name) &lt;= 2">(Vrouwcounseling): element hl7:name komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:birthTime[not(@nullFlavor)]) &gt;= 1">(Vrouwcounseling): element hl7:birthTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:birthTime[not(@nullFlavor)]) &lt;= 1">(Vrouwcounseling): element hl7:birthTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Vrouwcounseling): element hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900617-2011-01-28T000000.html"
              test="count(hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Vrouwcounseling): element hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900030
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name
Item: (Naamvrouw)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name"
         id="d182415e5-false-d182423e0">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900030-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900030-2009-10-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('OR','L','OR L','L OR')))])">(Naamvrouw): de waarde van use MOET 'code OR of code L of code OR L of code L OR' zijn. Gevonden: "<value-of select="@use"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900031
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime
Item: (Geboortedatumvrouw)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:birthTime"
         id="d182456e5-false-d182464e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumvrouw): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900031-2009-10-01T000000.html"
              test="not(*)">(Geboortedatumvrouw): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900033
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Etniciteit)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:subject[@typeCode = 'SBJ']/hl7:patient[hl7:statusCode[@code = 'active']]/hl7:Person[hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d182475e5-false-d182485e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Etniciteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Etniciteit): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.3-2014-05-19T143530.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900033-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Etniciteit): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.3 EthnicGroup (2014-05-19T14:35:30).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]"
         id="d182506e5-false-d182530e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@typeCode) = ('PPRF')">(Zorgverlenereninstelling): de waarde van typeCode MOET 'PPRF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(Zorgverlenereninstelling): element hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(Zorgverlenereninstelling): element hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d182506e59-false-d182592e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(Zorgverlenereninstelling): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="$elmcount &gt;= 1">(Zorgverlenereninstelling): keuze (hl7:id[@root = '2.16.528.1.1007.3.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Zorgverlenereninstelling): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Zorgverlenereninstelling): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:agentPerson[not(@nullFlavor)]) &gt;= 1">(Zorgverlenereninstelling): element hl7:agentPerson[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:agentPerson[not(@nullFlavor)]) &lt;= 1">(Zorgverlenereninstelling): element hl7:agentPerson[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &gt;= 1">(Zorgverlenereninstelling): element hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]) &lt;= 1">(Zorgverlenereninstelling): element hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d182506e65-false-d182715e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(Zorgverlenereninstelling): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d182506e70-false-d182734e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(Zorgverlenereninstelling): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.2']"
         id="d182506e75-false-d182753e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.98.2')">(Zorgverlenereninstelling): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.98.2' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900124
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Zorgverlenertype)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d182766e5-false-d182778e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenertype): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Zorgverlenertype): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.58 ZorgverlenerType (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900124-2011-01-28T000000.html"
              test="count(hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Zorgverlenertype): element hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900013
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ZorgverlenertypeLVR2code)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]/hl7:translation[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d182813e5-false-d182823e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900013-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorgverlenertypeLVR2code): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900013-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ZorgverlenertypeLVR2code): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.2 ZorgverlenerTypeLVR (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900013-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ZorgverlenertypeLVR2code): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.2 ZorgverlenerTypeLVR (DYNAMISCH).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]
Item: (Zorgverlenereninstelling)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]
Item: (Naamzorgverlener)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900006
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]/hl7:name
Item: (Naamzorgverlener)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:agentPerson[not(@nullFlavor)]/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900006-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]"
         id="d182506e93-false-d182905e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]) &gt;= 1">(Zorgverlenereninstelling): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)]) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')][not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="$elmcount &gt;= 1">(Zorgverlenereninstelling): keuze (hl7:id[@root = '2.16.840.1.113883.2.4.6.1']  of  hl7:id[@root = '2.16.528.1.1007.3.3']  of  hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']) &lt;= 1">(Zorgverlenereninstelling): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(Zorgverlenereninstelling): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(Zorgverlenereninstelling): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &gt;= 1">(Zorgverlenereninstelling): element hl7:name[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:name[not(@nullFlavor)]) &lt;= 1">(Zorgverlenereninstelling): element hl7:name[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &gt;= 1">(Zorgverlenereninstelling): element hl7:addr[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="count(hl7:addr[not(@nullFlavor)]) &lt;= 1">(Zorgverlenereninstelling): element hl7:addr[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900022
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]
Item: (ZorginstellingOID)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.1' or @root='2.16.840.1.113883.2.4.3.22.98.1' or @root='2.16.528.1.1007.3.3')]"
         id="d183033e5-false-d183039e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900022-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ZorginstellingOID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d182506e101-false-d183052e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(Zorgverlenereninstelling): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d182506e106-false-d183071e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(Zorgverlenereninstelling): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900608
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']
Item: (Zorgverlenereninstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.98.1']"
         id="d182506e111-false-d183090e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorgverlenereninstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900608-2011-01-28T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.98.1')">(Zorgverlenereninstelling): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.98.1' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900609
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Zorginstellingtype)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d183103e5-false-d183113e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900609-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingtype): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900609-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Zorginstellingtype): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.59 ZorgaanbiederType (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900025
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:name
Item: (Naamzorginstelling)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:name"
         id="d183131e5-false-d183139e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900025-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Naamzorginstelling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr"
         id="d183146e5-false-d183154e0">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:streetName
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:streetName"
         id="d183146e7-false-d183199e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:houseNumber
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:houseNumber"
         id="d183146e13-false-d183212e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:buildingNumberSuffix
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:buildingNumberSuffix"
         id="d183146e19-false-d183225e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:additionalLocator
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:additionalLocator"
         id="d183146e25-false-d183238e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ST' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:postalCode
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:postalCode"
         id="d183146e31-false-d183251e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:city
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:city"
         id="d183146e38-false-d183264e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:county
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:county"
         id="d183146e44-false-d183277e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900026
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:country
Item: (Zorginstellingadres)
-->

   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.58-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:representedOrganization[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.59-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]]/hl7:addr/hl7:country"
         id="d183146e50-false-d183290e0">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900026-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Zorginstellingadres): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Graviditeit)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Graviditeit)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Graviditeit): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Graviditeit): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Graviditeit): element hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Graviditeit): element hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Graviditeit): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Graviditeit)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Graviditeit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@nullFlavor or (@code='Gravidity' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Graviditeit): de elementwaarde MOET een zijn van 'code 'Gravidity' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900004
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Graviditeit)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'Gravidity' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=75))">(Graviditeit): value MOET in bereik [0..75] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Graviditeit): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900004-2011-01-28T000000.html"
              test="@xsi:type">(Graviditeit): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (HoeveellingMax)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (HoeveellingMax)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="string(@classCode) = ('OBS')">(HoeveellingMax): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="string(@moodCode) = ('EVN')">(HoeveellingMax): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(HoeveellingMax): element hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(HoeveellingMax): element hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(HoeveellingMax): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(HoeveellingMax): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(HoeveellingMax): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (HoeveellingMax)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HoeveellingMax): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@nullFlavor or (@code='NFetusMax' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(HoeveellingMax): de elementwaarde MOET een zijn van 'code 'NFetusMax' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (HoeveellingMax)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(HoeveellingMax): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="not(*)">(HoeveellingMax): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900054
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (HoeveellingMax)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusMax' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(HoeveellingMax): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(HoeveellingMax): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900054-2009-10-01T000000.html"
              test="@xsi:type">(HoeveellingMax): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Actueleaantalfoetus)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Actueleaantalfoetus)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Actueleaantalfoetus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Actueleaantalfoetus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:id) &lt;= 1">(Actueleaantalfoetus): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Actueleaantalfoetus): element hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Actueleaantalfoetus): element hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(Actueleaantalfoetus): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Actueleaantalfoetus): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Actueleaantalfoetus): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (Actueleaantalfoetus)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Actueleaantalfoetus)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@nullFlavor or (@code='NFetusCur' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Actueleaantalfoetus): de elementwaarde MOET een zijn van 'code 'NFetusCur' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (Actueleaantalfoetus)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Actueleaantalfoetus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="not(*)">(Actueleaantalfoetus): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900165
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Actueleaantalfoetus)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'NFetusCur' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=9))">(Actueleaantalfoetus): value MOET in bereik [0..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Actueleaantalfoetus): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900165-2011-01-28T000000.html"
              test="@xsi:type">(Actueleaantalfoetus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (EDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(EDD): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(EDD): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EDD): element hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EDD): element hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &gt;= 1">(EDD): element hl7:effectiveTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(EDD): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(EDD): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(EDD): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(EDD): element hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(EDD): element hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(EDD): element hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="@nullFlavor or (@code='EDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDD): de elementwaarde MOET een zijn van 'code 'EDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime
Item: (EDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:effectiveTime">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="not(*)">(EDD): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (EDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="not(*)">(EDD): <value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="@xsi:type">(EDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="string(@typeCode) = ('SPRT')">(EDD): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDDBasis)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (EDDBasis)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="string(@classCode) = ('OBS')">(EDDBasis): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="string(@moodCode) = ('EVN')">(EDDBasis): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:id) &lt;= 1">(EDDBasis): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EDDBasis): element hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EDDBasis): element hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(EDDBasis): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(EDDBasis): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (EDDBasis)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDBasis): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDBasis)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(EDDBasis): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or (@code='EDDBasedOn' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDBasis): de elementwaarde MOET een zijn van 'code 'EDDBasedOn' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900008
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (EDDBasis)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDDBasedOn' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(EDDBasis): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(EDDBasis): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.4 EDDBasis (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900008-2012-08-01T000000.html"
              test="@xsi:type">(EDDBasis): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900007
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (EDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900007-2011-01-28T000000.html"
              test="string(@typeCode) = ('PERT')">(EDD): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (ActualEDD)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (ActualEDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(ActualEDD): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(ActualEDD): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(ActualEDD): element hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(ActualEDD): element hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(ActualEDD): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="count(hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(ActualEDD): element hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (ActualEDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(ActualEDD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@nullFlavor or (@code='ActualEDD' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ActualEDD): de elementwaarde MOET een zijn van 'code 'ActualEDD' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900009
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (ActualEDD)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'EDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'ActualEDD' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[not(@nullFlavor)][(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900009-2011-01-28T000000.html"
              test="@xsi:type">(ActualEDD): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]
Item: (Subfertiliteitsbehandeling_2)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]
Item: (Subfertiliteitsbehandeling_2)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Subfertiliteitsbehandeling_2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Subfertiliteitsbehandeling_2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='61285001'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0">(Subfertiliteitsbehandeling_2): Ovulatie-inductie toegepast: required if Subfertiliteitsbehandeling value = true</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='63487001'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0">(Subfertiliteitsbehandeling_2): Geassisteerde conceptie: required if Subfertiliteitsbehandeling value = true</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="hl7:value/@value='false' or hl7:value/@nullFlavor or count(hl7:targetOf[hl7:procedure[hl7:code[@code='176843009'][@codeSystem='2.16.840.1.113883.6.96']]])&gt;0">(Subfertiliteitsbehandeling_2): Eiceldonatie toegepast: required if Subfertiliteitsbehandeling value = true</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &gt;= 1">(Subfertiliteitsbehandeling_2): element hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &lt;= 1">(Subfertiliteitsbehandeling_2): element hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(Subfertiliteitsbehandeling_2): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(Subfertiliteitsbehandeling_2): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(Subfertiliteitsbehandeling_2): element hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Subfertiliteitsbehandeling_2)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Subfertiliteitsbehandeling_2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="@nullFlavor or (@code='PRN3206' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Subfertiliteitsbehandeling_2): de elementwaarde MOET een zijn van 'code 'PRN3206' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (Subfertiliteitsbehandeling_2)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="@xsi:type">(Subfertiliteitsbehandeling_2): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Subfertiliteitsbehandeling_2)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <extends rule="d184498e0-false-d184504e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="string(@typeCode) = ('PERT')">(Subfertiliteitsbehandeling_2): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Ovulatieinductietoegepast)
-->
   <rule id="d184498e0-false-d184504e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(Ovulatieinductietoegepast): element hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(Ovulatieinductietoegepast): element hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (Ovulatieinductietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="string(@classCode) = ('PROC')">(Ovulatieinductietoegepast): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Ovulatieinductietoegepast): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="@negationInd">(Ovulatieinductietoegepast): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(Ovulatieinductietoegepast): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(Ovulatieinductietoegepast): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Ovulatieinductietoegepast): element hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Ovulatieinductietoegepast): element hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']
Item: (Ovulatieinductietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Ovulatieinductietoegepast): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="string(@nullFlavor) = ('NI')">(Ovulatieinductietoegepast): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900174
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Ovulatieinductietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '61285001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Ovulatieinductietoegepast): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900174-2011-01-28T000000.html"
              test="@nullFlavor or (@code='61285001' and @codeSystem='2.16.840.1.113883.6.96')">(Ovulatieinductietoegepast): de elementwaarde MOET een zijn van 'code '61285001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Subfertiliteitsbehandeling_2)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <extends rule="d184640e0-false-d184646e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="string(@typeCode) = ('PERT')">(Subfertiliteitsbehandeling_2): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Geassisteerdeconceptie)
-->
   <rule id="d184640e0-false-d184646e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(Geassisteerdeconceptie): element hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(Geassisteerdeconceptie): element hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (Geassisteerdeconceptie)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="string(@classCode) = ('PROC')">(Geassisteerdeconceptie): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Geassisteerdeconceptie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="@negationInd">(Geassisteerdeconceptie): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="../hl7:procedure[string(@negationInd)='true'] or hl7:methodCode">(Geassisteerdeconceptie): If Geassisteerdeconceptie=true (negationInd=false) an hl7:methodCode shall be present</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(Geassisteerdeconceptie): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(Geassisteerdeconceptie): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Geassisteerdeconceptie): element hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Geassisteerdeconceptie): element hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Geassisteerdeconceptie): element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']
Item: (Geassisteerdeconceptie)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geassisteerdeconceptie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="string(@nullFlavor) = ('NI')">(Geassisteerdeconceptie): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Geassisteerdeconceptie)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geassisteerdeconceptie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="@nullFlavor or (@code='63487001' and @codeSystem='2.16.840.1.113883.6.96')">(Geassisteerdeconceptie): de elementwaarde MOET een zijn van 'code '63487001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900175
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Geassisteerdeconceptie)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '63487001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geassisteerdeconceptie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Geassisteerdeconceptie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.199 GeassConceptie (2014-01-28T00:00:00)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.199-2014-01-28T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900175-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Geassisteerdeconceptie): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.199 GeassConceptie (2014-01-28T00:00:00).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900172
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Subfertiliteitsbehandeling_2)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <extends rule="d184825e0-false-d184831e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900172-2011-01-28T000000.html"
              test="string(@typeCode) = ('PERT')">(Subfertiliteitsbehandeling_2): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Eiceldonatietoegepast)
-->
   <rule id="d184825e0-false-d184831e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(Eiceldonatietoegepast): element hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(Eiceldonatietoegepast): element hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (Eiceldonatietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="string(@classCode) = ('PROC')">(Eiceldonatietoegepast): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Eiceldonatietoegepast): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="@negationInd">(Eiceldonatietoegepast): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(Eiceldonatietoegepast): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(Eiceldonatietoegepast): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Eiceldonatietoegepast): element hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Eiceldonatietoegepast): element hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(Eiceldonatietoegepast): element hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']
Item: (Eiceldonatietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eiceldonatietoegepast): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="string(@nullFlavor) = ('NI')">(Eiceldonatietoegepast): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Eiceldonatietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Eiceldonatietoegepast): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="@nullFlavor or (@code='176843009' and @codeSystem='2.16.840.1.113883.6.96')">(Eiceldonatietoegepast): de elementwaarde MOET een zijn van 'code '176843009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900180
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Eiceldonatietoegepast)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <extends rule="d184982e0-false-d184988e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900180-2011-01-28T000000.html"
              test="string(@typeCode) = ('PERT')">(Eiceldonatietoegepast): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Geboortedatumeiceldonatrice)
-->
   <rule id="d184982e0-false-d184988e0" abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="string(@classCode) = ('PROC')">(Geboortedatumeiceldonatrice): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Geboortedatumeiceldonatrice): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumeiceldonatrice): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="string(@nullFlavor) = ('NI')">(Geboortedatumeiceldonatrice): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumeiceldonatrice): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="@nullFlavor or (@code='177037000' and @codeSystem='2.16.840.1.113883.6.96')">(Geboortedatumeiceldonatrice): de elementwaarde MOET een zijn van 'code '177037000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="string(@typeCode) = ('SBJ')">(Geboortedatumeiceldonatrice): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:patient[hl7:statusCode[@code = 'completed']]) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:patient[hl7:statusCode[@code = 'completed']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:patient[hl7:statusCode[@code = 'completed']]) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:patient[hl7:statusCode[@code = 'completed']] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:statusCode[@code = 'completed'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:statusCode[@code = 'completed']) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:statusCode[@code = 'completed'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:Person[not(@nullFlavor)]) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:Person[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:Person[not(@nullFlavor)]) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:Person[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:id[@nullFlavor = 'NI']
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumeiceldonatrice): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="string(@nullFlavor) = ('NI')">(Geboortedatumeiceldonatrice): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "<value-of select="@nullFlavor"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:statusCode[@code = 'completed']
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:statusCode[@code = 'completed']">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumeiceldonatrice): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="@nullFlavor or (@code='completed')">(Geboortedatumeiceldonatrice): de elementwaarde MOET een zijn van 'code 'completed''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:Person[not(@nullFlavor)]
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:Person[not(@nullFlavor)]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:birthTime) &gt;= 1">(Geboortedatumeiceldonatrice): element hl7:birthTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(Geboortedatumeiceldonatrice): element hl7:birthTime komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900183
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:Person[not(@nullFlavor)]/hl7:birthTime
Item: (Geboortedatumeiceldonatrice)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]]/hl7:observation[hl7:code[(@code = 'PRN3206' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '176843009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '177037000' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:subject[not(@nullFlavor)][@typeCode = 'SBJ'][hl7:patient]/hl7:patient[hl7:statusCode[@code = 'completed']]/hl7:Person[not(@nullFlavor)]/hl7:birthTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Geboortedatumeiceldonatrice): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900183-2011-01-28T000000.html"
              test="not(*)">(Geboortedatumeiceldonatrice): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Prenatalescreeningaangekaart)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Prenatalescreeningaangekaart)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Prenatalescreeningaangekaart): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Prenatalescreeningaangekaart): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Prenatalescreeningaangekaart): element hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Prenatalescreeningaangekaart): element hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Prenatalescreeningaangekaart): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Prenatalescreeningaangekaart): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Prenatalescreeningaangekaart)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Prenatalescreeningaangekaart): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="@nullFlavor or (@code='BroachDown' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Prenatalescreeningaangekaart): de elementwaarde MOET een zijn van 'code 'BroachDown' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900184
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Prenatalescreeningaangekaart)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'BroachDown' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Prenatalescreeningaangekaart): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.6 BroachDownSEOScreening (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Prenatalescreeningaangekaart): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.6 BroachDownSEOScreening (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900184-2011-01-28T000000.html"
              test="@xsi:type">(Prenatalescreeningaangekaart): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalegewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Counselingprenatalegewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Counselingprenatalegewenst): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Counselingprenatalegewenst): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Counselingprenatalegewenst): element hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Counselingprenatalegewenst): element hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Counselingprenatalegewenst): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Counselingprenatalegewenst): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Counselingprenatalegewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Counselingprenatalegewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="@nullFlavor or (@code='CounselDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Counselingprenatalegewenst): de elementwaarde MOET een zijn van 'code 'CounselDesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900187
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Counselingprenatalegewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounselDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Counselingprenatalegewenst): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.7 DownSEOCounselingDesired (DYNAMISCH)'.</assert>
      <let name="theNullFlavor" value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Counselingprenatalegewenst): de nulwaarde '<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.7 DownSEOCounselingDesired (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900187-2011-01-28T000000.html"
              test="@xsi:type">(Counselingprenatalegewenst): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (TrisomyInHistory)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (TrisomyInHistory)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="string(@classCode) = ('OBS')">(TrisomyInHistory): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="string(@moodCode) = ('EVN')">(TrisomyInHistory): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:id) &lt;= 1">(TrisomyInHistory): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(TrisomyInHistory): element hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(TrisomyInHistory): element hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(TrisomyInHistory): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id
Item: (TrisomyInHistory)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TrisomyInHistory): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (TrisomyInHistory)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TrisomyInHistory): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="@nullFlavor or (@code='TrisomyAnam' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(TrisomyInHistory): de elementwaarde MOET een zijn van 'code 'TrisomyAnam' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900860
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (TrisomyInHistory)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'TrisomyAnam' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900860-2012-06-26T000000.html"
              test="@xsi:type">(TrisomyInHistory): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (DiabetesTypeI)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (DiabetesTypeI)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="string(@classCode) = ('OBS')">(DiabetesTypeI): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="string(@moodCode) = ('EVN')">(DiabetesTypeI): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:id) &lt;= 1">(DiabetesTypeI): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(DiabetesTypeI): element hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(DiabetesTypeI): element hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(DiabetesTypeI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(DiabetesTypeI): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id
Item: (DiabetesTypeI)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DiabetesTypeI): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (DiabetesTypeI)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DiabetesTypeI): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="@nullFlavor or (@code='46635009' and @codeSystem='2.16.840.1.113883.6.96')">(DiabetesTypeI): de elementwaarde MOET een zijn van 'code '46635009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900858
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (DiabetesTypeI)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '46635009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900858-2012-06-26T000000.html"
              test="@xsi:type">(DiabetesTypeI): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (TobaccoSmoker)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (TobaccoSmoker)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="string(@classCode) = ('OBS')">(TobaccoSmoker): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="string(@moodCode) = ('EVN')">(TobaccoSmoker): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:id) &lt;= 1">(TobaccoSmoker): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(TobaccoSmoker): element hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(TobaccoSmoker): element hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(TobaccoSmoker): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(TobaccoSmoker): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id
Item: (TobaccoSmoker)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TobaccoSmoker): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (TobaccoSmoker)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(TobaccoSmoker): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="@nullFlavor or (@code='77176002' and @codeSystem='2.16.840.1.113883.6.96')">(TobaccoSmoker): de elementwaarde MOET een zijn van 'code '77176002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900857
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (TobaccoSmoker)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:observation[hl7:code[(@code = '77176002' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900857-2012-06-26T000000.html"
              test="@xsi:type">(TobaccoSmoker): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (BodyWeight)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (BodyWeight)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(BodyWeight): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(BodyWeight): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(BodyWeight): element hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(BodyWeight): element hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(BodyWeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (BodyWeight)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyWeight): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="@nullFlavor or (@code='3141-9' and @codeSystem='2.16.840.1.113883.6.1')">(BodyWeight): de elementwaarde MOET een zijn van 'code '3141-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900571
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (BodyWeight)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3141-9' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='kg'))">(BodyWeight): value MOET eenheid 'kg' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=249.9))">(BodyWeight): value MOET in bereik [0..249.9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BodyWeight): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(BodyWeight): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900571-2011-01-28T000000.html"
              test="@xsi:type">(BodyWeight): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]
Item: (BodyHeight)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]
Item: (BodyHeight)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(BodyHeight): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(BodyHeight): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(BodyHeight): element hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(BodyHeight): element hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &gt;= 1">(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="count(hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(BodyHeight): element hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (BodyHeight)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(BodyHeight): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="@nullFlavor or (@code='3137-7' and @codeSystem='2.16.840.1.113883.6.1')">(BodyHeight): de elementwaarde MOET een zijn van 'code '3137-7' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900570
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (BodyHeight)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]]/hl7:observation[hl7:code[(@code = '3137-7' and @codeSystem = '2.16.840.1.113883.6.1')]]/hl7:value[(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="(@nullFlavor or (@unit='cm'))">(BodyHeight): value MOET eenheid 'cm' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=270))">(BodyHeight): value MOET in bereik [0..270] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(BodyHeight): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(BodyHeight): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900570-2011-01-28T000000.html"
              test="@xsi:type">(BodyHeight): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.54
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (counseling-1c)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@typeCode) = ('PERT')">(counseling-1c): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.54-2012-10-20T000000.html"
              test="string(@contextConductionInd) = ('true')">(counseling-1c): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "<value-of select="@contextConductionInd"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@classCode) = ('ENC')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van classCode MOET 'ENC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf/hl7:observation[hl7:code[@code='CounsConcerns'][@codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:value/@code='1'])=0 or             count(hl7:targetOf[hl7:act/hl7:code[@code='IPDDesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']])&gt;=1">(Counselingprenatalescreeningenprenatalediagnostiek):  Counseling prenatale screening en prenatale diagnostiek: direct IPD mandatory als counseling betreft is 'combinatietest'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf/hl7:observation[hl7:code[@code='CounsConcerns'][@codeSystem='2.16.840.1.113883.2.4.4.13']][hl7:value/@code='2'])=0 or             count(hl7:targetOf[hl7:act/hl7:code[@code='InstantGUODesired'][@codeSystem='2.16.840.1.113883.2.4.4.13']])&gt;=1">(Counselingprenatalescreeningenprenatalediagnostiek):  Counseling prenatale screening en prenatale diagnostiek: direct GUO mandatory als counseling betreft is 'SEO'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:effectiveTime[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:effectiveTime[not(@nullFlavor)]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:effectiveTime[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 2">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 2x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &gt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="count(hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]) &lt;= 1">(Counselingprenatalescreeningenprenatalediagnostiek): element hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900226
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id
Item: (Counselingidentificatie)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900226-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Counselingidentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Counselingprenatalescreeningenprenatalediagnostiek): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="@nullFlavor or (@code='225328009' and @codeSystem='2.16.840.1.113883.6.96')">(Counselingprenatalescreeningenprenatalediagnostiek): de elementwaarde MOET een zijn van 'code '225328009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900227
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime
Item: (Datumcounseling)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:effectiveTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Datumcounseling): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900227-2011-01-28T000000.html"
              test="not(*)">(Datumcounseling): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@typeCode) = ('COMP')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900228
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingbetreft)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900228
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Counselingbetreft)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="string(@classCode) = ('OBS')">(Counselingbetreft): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="string(@moodCode) = ('EVN')">(Counselingbetreft): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Counselingbetreft): element hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Counselingbetreft): element hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Counselingbetreft): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Counselingbetreft): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900228
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Counselingbetreft)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Counselingbetreft): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="@nullFlavor or (@code='CounsConcerns' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Counselingbetreft): de elementwaarde MOET een zijn van 'code 'CounsConcerns' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900228
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Counselingbetreft)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:observation[hl7:code[(@code = 'CounsConcerns' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.70-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Counselingbetreft): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.70 CounselingConcerns (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900228-2011-01-28T000000.html"
              test="@xsi:type">(Counselingbetreft): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900231
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (DirectIPDgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900231
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (DirectIPDgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html"
              test="string(@classCode) = ('CONS')">(DirectIPDgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html"
              test="string(@moodCode) = ('INT')">(DirectIPDgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(DirectIPDgewenst): element hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(DirectIPDgewenst): element hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900231
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (DirectIPDgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'IPDDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DirectIPDgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900231-2011-01-28T000000.html"
              test="@nullFlavor or (@code='IPDDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(DirectIPDgewenst): de elementwaarde MOET een zijn van 'code 'IPDDesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900232
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Combinatietestgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900232
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (Combinatietestgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html"
              test="string(@classCode) = ('CONS')">(Combinatietestgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html"
              test="string(@moodCode) = ('INT')">(Combinatietestgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Combinatietestgewenst): element hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Combinatietestgewenst): element hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900232
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Combinatietestgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'CombiTestDesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(Combinatietestgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900232-2011-01-28T000000.html"
              test="@nullFlavor or (@code='CombiTestDesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Combinatietestgewenst): de elementwaarde MOET een zijn van 'code 'CombiTestDesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900235
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (DirectGUOgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900235
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (DirectGUOgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html"
              test="string(@classCode) = ('CONS')">(DirectGUOgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html"
              test="string(@moodCode) = ('INT')">(DirectGUOgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(DirectGUOgewenst): element hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(DirectGUOgewenst): element hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900235
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (DirectGUOgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'InstantGUODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(DirectGUOgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900235-2011-01-28T000000.html"
              test="@nullFlavor or (@code='InstantGUODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(DirectGUOgewenst): de elementwaarde MOET een zijn van 'code 'InstantGUODesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900869
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (Counselingprenatalescreeningenprenatalediagnostiek)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900869-2011-01-28T000000.html"
              test="string(@typeCode) = ('SUBJ')">(Counselingprenatalescreeningenprenatalediagnostiek): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900234
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (SEOgewenst)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900234
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (SEOgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html"
              test="string(@classCode) = ('CONS')">(SEOgewenst): de waarde van classCode MOET 'CONS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html"
              test="string(@moodCode) = ('INT')">(SEOgewenst): de waarde van moodCode MOET 'INT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(SEOgewenst): element hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html"
              test="count(hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(SEOgewenst): element hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900234
Context: *[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (SEOgewenst)
-->
   <rule context="*[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.54']]/hl7:pertinentInformation3[hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:encounter[hl7:code[(@code = '225328009' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:targetOf[hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:act[hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'SEODesired' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SEOgewenst): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.2.4.6.10.90.900234-2011-01-28T000000.html"
              test="@nullFlavor or (@code='SEODesired' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(SEOgewenst): de elementwaarde MOET een zijn van 'code 'SEODesired' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
</pattern>
