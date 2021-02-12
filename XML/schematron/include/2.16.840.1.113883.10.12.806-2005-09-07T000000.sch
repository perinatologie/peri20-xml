<?xml version="1.0" encoding="UTF-8"?>
<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.10.12.806
Name: CDA Procedure SDTC
Description: Template CDA Procedure (prototype, directly derived from POCD_RM000040 MIF) + SDTC extensions
-->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron"
         id="template-2.16.840.1.113883.10.12.806-2005-09-07T000000">
   <title>CDA Procedure SDTC</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]"
         id="d15e1241-false-d46246e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="string(@classCode) = ('PROC')">(CDAProcedureSDTC): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="@moodCode">(CDAProcedureSDTC): attribute @moodCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@moodCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19460-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(CDAProcedureSDTC): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19460' x_DocumentProcedureMood (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAProcedureSDTC): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.806']) &gt;= 1">(CDAProcedureSDTC): element hl7:templateId[@root = '2.16.840.1.113883.10.12.806'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.10.12.806']) &lt;= 1">(CDAProcedureSDTC): element hl7:templateId[@root = '2.16.840.1.113883.10.12.806'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAProcedureSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAProcedureSDTC): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(CDAProcedureSDTC): element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAProcedureSDTC): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:priorityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16866-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAProcedureSDTC): element hl7:priorityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16866-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:languageCode) &lt;= 1">(CDAProcedureSDTC): element hl7:languageCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:subject[hl7:relatedSubject[@classCode]]) &lt;= 1">(CDAProcedureSDTC): element hl7:subject[hl7:relatedSubject[@classCode]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.806']
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:templateId[@root = '2.16.840.1.113883.10.12.806']"
         id="d15e1254-false-d46589e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="string(@root) = ('2.16.840.1.113883.10.12.806')">(CDAProcedureSDTC): de waarde van root MOET '2.16.840.1.113883.10.12.806' zijn. Gevonden: "<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:id
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:id"
         id="d15e1259-false-d46608e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:code
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:code"
         id="d15e1262-false-d46621e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:text
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:text"
         id="d15e1267-false-d46634e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]"
         id="d15e1269-false-d46649e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(CDAProcedureSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.15933 ActStatus (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:effectiveTime
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:effectiveTime"
         id="d15e1276-false-d46673e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:priorityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16866-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:priorityCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16866-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d15e1278-false-d46688e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16866-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAProcedureSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16866 ActPriority (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:languageCode
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:languageCode"
         id="d15e1285-false-d46714e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:methodCode
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:methodCode"
         id="d15e1293-false-d46731e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:approachSiteCode
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:approachSiteCode"
         id="d15e1298-false-d46744e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:targetSiteCode
Item: (CDAProcedureSDTC)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:targetSiteCode"
         id="d15e1303-false-d46757e0">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="string(@typeCode) = ('SBJ') or not(@typeCode)">(CDASubjectBodySDTC): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(CDASubjectBodySDTC): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDASubjectBodySDTC): element hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:relatedSubject[@classCode]) &gt;= 1">(CDASubjectBodySDTC): element hl7:relatedSubject[@classCode] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:relatedSubject[@classCode]) &lt;= 1">(CDASubjectBodySDTC): element hl7:relatedSubject[@classCode] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASubjectBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10310 TargetAwareness (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="@classCode">(CDASubjectBodySDTC): attribute @classCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@classCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="not(@classCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19368-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(CDASubjectBodySDTC): de waarde van classCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19368' x_DocumentSubject (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDASubjectBodySDTC): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:subject) &lt;= 1">(CDASubjectBodySDTC): element hl7:subject komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/sdtc:id
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/sdtc:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASubjectBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.19563 PersonalRelationshipRoleType (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:addr
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:telecom
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDASubjectBodySDTC): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDASubjectBodySDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(sdtc:desc) &lt;= 1">(CDASubjectBodySDTC): element sdtc:desc komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDASubjectBodySDTC): element hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(hl7:birthTime) &lt;= 1">(CDASubjectBodySDTC): element hl7:birthTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(sdtc:deceasedInd) &lt;= 1">(CDASubjectBodySDTC): element sdtc:deceasedInd komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(sdtc:deceasedTime) &lt;= 1">(CDASubjectBodySDTC): element sdtc:deceasedTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(sdtc:multipleBirthInd) &lt;= 1">(CDASubjectBodySDTC): element sdtc:multipleBirthInd komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="count(sdtc:multipleBirthOrderNumber) &lt;= 1">(CDASubjectBodySDTC): element sdtc:multipleBirthOrderNumber komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:id
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/hl7:name
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:desc
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.1-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASubjectBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.1 AdministrativeGender (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/hl7:birthTime
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/hl7:birthTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="not(*)">(CDASubjectBodySDTC): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:deceasedInd
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:deceasedInd">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:deceasedTime
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:deceasedTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="not(*)">(CDASubjectBodySDTC): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:multipleBirthInd
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:multipleBirthInd">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:multipleBirthOrderNumber
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:multipleBirthOrderNumber">
      <extends rule="INT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDASubjectBodySDTC): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:raceCode
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:raceCode">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASubjectBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.820
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.15836-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASubjectBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:subject[hl7:relatedSubject[@classCode]]/hl7:relatedSubject[@classCode]/hl7:subject/sdtc:ethnicGroupCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.15836-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.820-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15836-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDASubjectBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.15836 Ethnicity (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="string(@typeCode) = ('SPC') or not(@typeCode)">(CDASpecimenSDTC): de waarde van typeCode MOET 'SPC' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="count(hl7:specimenRole) &gt;= 1">(CDASpecimenSDTC): element hl7:specimenRole is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="count(hl7:specimenRole) &lt;= 1">(CDASpecimenSDTC): element hl7:specimenRole komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="string(@classCode) = ('SPEC') or not(@classCode)">(CDASpecimenSDTC): de waarde van classCode MOET 'SPEC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="count(hl7:specimenPlayingEntity) &lt;= 1">(CDASpecimenSDTC): element hl7:specimenPlayingEntity komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:id
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASpecimenSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="string(@classCode) = ('ENT') or not(@classCode)">(CDASpecimenSDTC): de waarde van classCode MOET 'ENT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDASpecimenSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDASpecimenSDTC): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="count(hl7:desc) &lt;= 1">(CDASpecimenSDTC): element hl7:desc komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASpecimenSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem] | completeCodeSystem[@codeSystem=$theCodeSystem]])">(CDASpecimenSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16040 EntityCode (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:quantity
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:quantity">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASpecimenSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(CDASpecimenSDTC): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(CDASpecimenSDTC): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:name
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASpecimenSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.822
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:desc
Item: (CDASpecimenSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:specimen[hl7:specimenRole]/hl7:specimenRole/hl7:specimenPlayingEntity/hl7:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.822-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDASpecimenSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.823
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]
Item: (CDAPerformerBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="string(@typeCode) = ('PRF') or not(@typeCode)">(CDAPerformerBodySDTC): de waarde van typeCode MOET 'PRF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:time) &lt;= 1">(CDAPerformerBodySDTC): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16543-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAPerformerBodySDTC): element hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16543-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:assignedEntity) &gt;= 1">(CDAPerformerBodySDTC): element hl7:assignedEntity is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:assignedEntity) &lt;= 1">(CDAPerformerBodySDTC): element hl7:assignedEntity komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.823
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:time
Item: (CDAPerformerBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:time">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPerformerBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.823
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16543-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAPerformerBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:modeCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16543-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPerformerBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16543-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAPerformerBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16543 ParticipationMode (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.823
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity
Item: (CDAPerformerBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(CDAPerformerBodySDTC): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:id) &gt;= 1">(CDAPerformerBodySDTC): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAPerformerBodySDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(CDAPerformerBodySDTC): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(CDAPerformerBodySDTC): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.823-2005-09-07T000000.html"
              test="count(sdtc:patient) &lt;= 1">(CDAPerformerBodySDTC): element sdtc:patient komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:id
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:code
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:addr
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:telecom
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:assignedPerson
Item: (CDAAssignedEntitySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/hl7:representedOrganization
Item: (CDAAssignedEntitySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/sdtc:patient
Item: (SDTCpatient)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/sdtc:patient">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.902-2005-09-07T000000.html"
              test="count(sdtc:id) &gt;= 1">(SDTCpatient): element sdtc:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.902-2005-09-07T000000.html"
              test="count(sdtc:id) &lt;= 1">(SDTCpatient): element sdtc:id komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/sdtc:patient/sdtc:id
Item: (SDTCpatient)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:performer[hl7:assignedEntity]/hl7:assignedEntity/sdtc:patient/sdtc:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.902-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SDTCpatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(CDAAuthorBodySDTC): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(CDAAuthorBodySDTC): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAAuthorBodySDTC): element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:time) &gt;= 1">(CDAAuthorBodySDTC): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:time) &lt;= 1">(CDAAuthorBodySDTC): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:assignedAuthor) &gt;= 1">(CDAAuthorBodySDTC): element hl7:assignedAuthor is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:assignedAuthor) &lt;= 1">(CDAAuthorBodySDTC): element hl7:assignedAuthor komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAuthorBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAAuthorBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10267 ParticipationFunction (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:time
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:time">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAuthorBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="not(*)">(CDAAuthorBodySDTC): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(CDAAuthorBodySDTC): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:id) &gt;= 1">(CDAAuthorBodySDTC): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAAuthorBodySDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:assignedPerson | hl7:assignedAuthoringDevice)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="$elmcount &lt;= 1">(CDAAuthorBodySDTC): keuze (hl7:assignedPerson  of  hl7:assignedAuthoringDevice) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(CDAAuthorBodySDTC): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:id
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAuthorBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:code
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAuthorBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAuthorBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom
Item: (CDAAuthorBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.818-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAuthorBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAAuthorBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDAPersonSDTC): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPersonSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:desc) &lt;= 1">(CDAPersonSDTC): element sdtc:desc komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:asPatientRelationship[@classCode = 'PRS']) &lt;= 1">(CDAPersonSDTC): element sdtc:asPatientRelationship[@classCode = 'PRS'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:desc
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@classCode) = ('PRS')">(CDAPersonSDTC): de waarde van classCode MOET 'PRS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPersonSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:code) &gt;= 1">(CDAPersonSDTC): element sdtc:code is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:code) &lt;= 1">(CDAPersonSDTC): element sdtc:code komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:templateId
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:templateId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice
Item: (CDAAuthorBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="string(@classCode) = ('DEV') or not(@classCode)">(CDADeviceSDTC): de waarde van classCode MOET 'DEV' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDADeviceSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDADeviceSDTC): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="count(hl7:manufacturerModelName) &lt;= 1">(CDADeviceSDTC): element hl7:manufacturerModelName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="count(hl7:softwareName) &lt;= 1">(CDADeviceSDTC): element hl7:softwareName komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADeviceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem] | completeCodeSystem[@codeSystem=$theCodeSystem]])">(CDADeviceSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16040 EntityCode (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:manufacturerModelName
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:manufacturerModelName">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADeviceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:softwareName
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedAuthoringDevice/hl7:softwareName">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADeviceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.818
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAAuthorBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDAOrganizationSDTC): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAOrganizationSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:standardIndustryClassCode) &lt;= 1">(CDAOrganizationSDTC): element hl7:standardIndustryClassCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(CDAOrganizationSDTC): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@classCode) = ('PART') or not(@classCode)">(CDAOrganizationSDTC): de waarde van classCode MOET 'PART' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAOrganizationSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(CDAOrganizationSDTC): element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAOrganizationSDTC): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(CDAOrganizationSDTC): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:id
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(CDAOrganizationSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.15999 RoleStatus (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:effectiveTime
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDAOrganizationSDTC): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAOrganizationSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:standardIndustryClassCode) &lt;= 1">(CDAOrganizationSDTC): element hl7:standardIndustryClassCode komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.819
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant
Item: (CDAinformantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.819-2005-09-07T000000.html"
              test="string(@typeCode) = ('INF') or not(@typeCode)">(CDAinformantBodySDTC): de waarde van typeCode MOET 'INF' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.819-2005-09-07T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(CDAinformantBodySDTC): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:assignedEntity | hl7:relatedEntity[@classCode])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.819-2005-09-07T000000.html"
              test="$elmcount &gt;= 1">(CDAinformantBodySDTC): keuze (hl7:assignedEntity  of  hl7:relatedEntity[@classCode]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.819-2005-09-07T000000.html"
              test="$elmcount &lt;= 1">(CDAinformantBodySDTC): keuze (hl7:assignedEntity  of  hl7:relatedEntity[@classCode]) bevat te veel elementen [max 1x]</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.819
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity
Item: (CDAinformantBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(CDAAssignedEntitySDTC): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="count(hl7:id) &gt;= 1">(CDAAssignedEntitySDTC): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAAssignedEntitySDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(CDAAssignedEntitySDTC): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(CDAAssignedEntitySDTC): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="count(sdtc:patient) &lt;= 1">(CDAAssignedEntitySDTC): element sdtc:patient komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:id
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:code
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:addr
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:telecom
Item: (CDAAssignedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.653-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAAssignedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson
Item: (CDAAssignedEntitySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDAPersonSDTC): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPersonSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:desc) &lt;= 1">(CDAPersonSDTC): element sdtc:desc komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:asPatientRelationship[@classCode = 'PRS']) &lt;= 1">(CDAPersonSDTC): element sdtc:asPatientRelationship[@classCode = 'PRS'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/hl7:name
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:desc
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@classCode) = ('PRS')">(CDAPersonSDTC): de waarde van classCode MOET 'PRS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPersonSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:code) &gt;= 1">(CDAPersonSDTC): element sdtc:code is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:code) &lt;= 1">(CDAPersonSDTC): element sdtc:code komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:templateId
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:templateId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:assignedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.653
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization
Item: (CDAAssignedEntitySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDAOrganizationSDTC): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAOrganizationSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:standardIndustryClassCode) &lt;= 1">(CDAOrganizationSDTC): element hl7:standardIndustryClassCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(CDAOrganizationSDTC): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:id
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:name
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:name">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:telecom
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:addr
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:standardIndustryClassCode
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:standardIndustryClassCode">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@classCode) = ('PART') or not(@classCode)">(CDAOrganizationSDTC): de waarde van classCode MOET 'PART' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAOrganizationSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]) &lt;= 1">(CDAOrganizationSDTC): element hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDAOrganizationSDTC): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(CDAOrganizationSDTC): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:id
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor]">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.15999-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@code = $theCode] or completeCodeSystem)">(CDAOrganizationSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.15999 RoleStatus (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:effectiveTime
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(CDAOrganizationSDTC): de waarde van classCode MOET 'ORG' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAOrganizationSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="count(hl7:standardIndustryClassCode) &lt;= 1">(CDAOrganizationSDTC): element hl7:standardIndustryClassCode komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ON' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.651
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode
Item: (CDAOrganizationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:standardIndustryClassCode">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.651-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAOrganizationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/sdtc:patient
Item: (SDTCpatient)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/sdtc:patient">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.902-2005-09-07T000000.html"
              test="count(sdtc:id) &gt;= 1">(SDTCpatient): element sdtc:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.902-2005-09-07T000000.html"
              test="count(sdtc:id) &lt;= 1">(SDTCpatient): element sdtc:id komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/sdtc:patient/sdtc:id
Item: (SDTCpatient)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:assignedEntity/sdtc:patient/sdtc:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.902-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SDTCpatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.819
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]
Item: (CDAinformantBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.816
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]
Item: (CDARelatedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="@classCode">(CDARelatedEntitySDTC): attribute @classCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@classCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="not(@classCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19316-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(CDARelatedEntitySDTC): de waarde van classCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19316' RoleClassMutualRelationship (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDARelatedEntitySDTC): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(CDARelatedEntitySDTC): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="count(hl7:relatedPerson) &lt;= 1">(CDARelatedEntitySDTC): element hl7:relatedPerson komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.816
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDARelatedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDARelatedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.19563-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDARelatedEntitySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.19563 PersonalRelationshipRoleType (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.816
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:addr
Item: (CDARelatedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDARelatedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.816
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:telecom
Item: (CDARelatedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDARelatedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.816
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:effectiveTime
Item: (CDARelatedEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:effectiveTime">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.816-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDARelatedEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.816
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson
Item: (CDARelatedEntitySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(CDAPersonSDTC): de waarde van classCode MOET 'PSN' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPersonSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:desc) &lt;= 1">(CDAPersonSDTC): element sdtc:desc komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:asPatientRelationship[@classCode = 'PRS']) &lt;= 1">(CDAPersonSDTC): element sdtc:asPatientRelationship[@classCode = 'PRS'] komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/hl7:name
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:desc
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@classCode) = ('PRS')">(CDAPersonSDTC): de waarde van classCode MOET 'PRS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPersonSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:code) &gt;= 1">(CDAPersonSDTC): element sdtc:code is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="count(sdtc:code) &lt;= 1">(CDAPersonSDTC): element sdtc:code komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:templateId
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:templateId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.652
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code
Item: (CDAPersonSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:informant/hl7:relatedEntity[@classCode]/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.652-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPersonSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="@typeCode">(CDAParticipantBodySDTC): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.10901-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(CDAParticipantBodySDTC): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.10901' ParticipationType (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(CDAParticipantBodySDTC): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:time) &lt;= 1">(CDAParticipantBodySDTC): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAParticipantBodySDTC): element hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:participantRole) &gt;= 1">(CDAParticipantBodySDTC): element hl7:participantRole is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:participantRole) &lt;= 1">(CDAParticipantBodySDTC): element hl7:participantRole komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:time
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:time">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:awarenessCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10310-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CDAParticipantBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10310 TargetAwareness (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="string(@classCode) = ('ROL') or not(@classCode)">(CDAParticipantBodySDTC): de waarde van classCode MOET 'ROL' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAParticipantBodySDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <let name="elmcount" value="count(hl7:playingDevice | hl7:playingEntity)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="$elmcount &lt;= 1">(CDAParticipantBodySDTC): keuze (hl7:playingDevice  of  hl7:playingEntity) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:scopingEntity) &lt;= 1">(CDAParticipantBodySDTC): element hl7:scopingEntity komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:id
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:code
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:code">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:addr
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='AD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:telecom
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:telecom">
      <extends rule="TEL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TEL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice
Item: (CDAParticipantBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="string(@classCode) = ('DEV') or not(@classCode)">(CDADeviceSDTC): de waarde van classCode MOET 'DEV' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDADeviceSDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDADeviceSDTC): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="count(hl7:manufacturerModelName) &lt;= 1">(CDADeviceSDTC): element hl7:manufacturerModelName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="count(hl7:softwareName) &lt;= 1">(CDADeviceSDTC): element hl7:softwareName komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADeviceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem] | completeCodeSystem[@codeSystem=$theCodeSystem]])">(CDADeviceSDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16040 EntityCode (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice/hl7:manufacturerModelName
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice/hl7:manufacturerModelName">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADeviceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.815
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice/hl7:softwareName
Item: (CDADeviceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingDevice/hl7:softwareName">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.815-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='SC' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDADeviceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity
Item: (CDAParticipantBodySDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.813
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity
Item: (CDAPlayingEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="string(@classCode) = ('ENT') or not(@classCode)">(CDAPlayingEntitySDTC): de waarde van classCode MOET 'ENT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAPlayingEntitySDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAPlayingEntitySDTC): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="count(sdtc:birthTime) &lt;= 1">(CDAPlayingEntitySDTC): element sdtc:birthTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="count(hl7:desc) &lt;= 1">(CDAPlayingEntitySDTC): element hl7:desc komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.813
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAPlayingEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPlayingEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem] | completeCodeSystem[@codeSystem=$theCodeSystem]])">(CDAPlayingEntitySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16040 EntityCode (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.813
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:quantity
Item: (CDAPlayingEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:quantity">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PQ' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPlayingEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(CDAPlayingEntitySDTC): @value is geen geldig PQ getal <value-of select="@value"/>
      </assert>
      <let name="theUnit" value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(CDAPlayingEntitySDTC): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (<value-of select="$UCUMtest"/>).</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.813
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:name
Item: (CDAPlayingEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:name">
      <extends rule="PN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='PN' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPlayingEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PN" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.813
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/sdtc:birthTime
Item: (CDAPlayingEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/sdtc:birthTime">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPlayingEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="not(*)">(CDAPlayingEntitySDTC): <value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.813
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:desc
Item: (CDAPlayingEntitySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:playingEntity/hl7:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.813-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPlayingEntitySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="string(@classCode) = ('ENT') or not(@classCode)">(CDAParticipantBodySDTC): de waarde van classCode MOET 'ENT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(CDAParticipantBodySDTC): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(CDAParticipantBodySDTC): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="count(hl7:desc) &lt;= 1">(CDAParticipantBodySDTC): element hl7:desc komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity/hl7:id
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CE' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode" value="@code"/>
      <let name="theCodeSystem" value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem] | completeCodeSystem[@codeSystem=$theCodeSystem]])">(CDAParticipantBodySDTC): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.16040 EntityCode (DYNAMISCH)'.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.821
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity/hl7:desc
Item: (CDAParticipantBodySDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:participant[@typeCode][hl7:participantRole]/hl7:participantRole/hl7:scopingEntity/hl7:desc">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.821-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAParticipantBodySDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]
Item: (CDAProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]">
      <extends rule="d50670e0-false-d50676e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="@typeCode">(CDAProcedureSDTC): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19447-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(CDAProcedureSDTC): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19447' x_ActRelationshipEntryRelationship (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@contextConductionInd) or string(@contextConductionInd)=('true','false')">(CDAProcedureSDTC): attribuut @contextConductionInd MOET datatype 'bl' hebben  - '<value-of select="@contextConductionInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@inversionInd) or string(@inversionInd)=('true','false')">(CDAProcedureSDTC): attribuut @inversionInd MOET datatype 'bl' hebben  - '<value-of select="@inversionInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CDAProcedureSDTC): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:sequenceNumber) &lt;= 1">(CDAProcedureSDTC): element hl7:sequenceNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="count(hl7:seperatableInd) &lt;= 1">(CDAProcedureSDTC): element hl7:seperatableInd komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]/hl7:sequenceNumber
Item: (CDAProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]/hl7:sequenceNumber">
      <extends rule="INT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDAProcedureSDTC): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]/hl7:seperatableInd
Item: (CDAProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]/hl7:seperatableInd">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.806-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.800
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:entryRelationship[@typeCode]
Item: (CDAClinicalStatementSDTC)
-->
   <rule id="d50670e0-false-d50676e0" abstract="true">
      <let name="elmcount"
           value="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.12.801']] | hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.10.12.802']] | hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.12.803']] | hl7:observationMedia[hl7:templateId[@root = '2.16.840.1.113883.10.12.804']] | hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.10.12.805']] | hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']] | hl7:regionOfInterest[hl7:templateId[@root = '2.16.840.1.113883.10.12.807']] | hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.12.808']] | hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.10.12.809']])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.800-2005-09-07T000000.html"
              test="$elmcount &gt;= 1">(CDAClinicalStatementSDTC): keuze (hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.12.801']]  of  hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.10.12.802']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]  of  hl7:observationMedia[hl7:templateId[@root = '2.16.840.1.113883.10.12.804']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.10.12.805']]  of  hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]  of  hl7:regionOfInterest[hl7:templateId[@root = '2.16.840.1.113883.10.12.807']]  of  hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]  of  hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.10.12.809']]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.800-2005-09-07T000000.html"
              test="$elmcount &lt;= 1">(CDAClinicalStatementSDTC): keuze (hl7:act[hl7:templateId[@root = '2.16.840.1.113883.10.12.801']]  of  hl7:encounter[hl7:templateId[@root = '2.16.840.1.113883.10.12.802']]  of  hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.10.12.803']]  of  hl7:observationMedia[hl7:templateId[@root = '2.16.840.1.113883.10.12.804']]  of  hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.10.12.805']]  of  hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]  of  hl7:regionOfInterest[hl7:templateId[@root = '2.16.840.1.113883.10.12.807']]  of  hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.10.12.808']]  of  hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.10.12.809']]) bevat te veel elementen [max 1x]</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.824
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]
Item: (CDAReferenceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.824-2005-09-07T000000.html"
              test="@typeCode">(CDAReferenceSDTC): attribute @typeCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@typeCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.824-2005-09-07T000000.html"
              test="not(@typeCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19000-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(CDAReferenceSDTC): de waarde van typeCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19000' x_ActRelationshipExternalReference (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.824-2005-09-07T000000.html"
              test="count(hl7:seperatableInd) &lt;= 1">(CDAReferenceSDTC): element hl7:seperatableInd komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:externalAct | hl7:externalObservation | hl7:externalProcedure | hl7:externalDocument)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.824-2005-09-07T000000.html"
              test="$elmcount &gt;= 1">(CDAReferenceSDTC): keuze (hl7:externalAct  of  hl7:externalObservation  of  hl7:externalProcedure  of  hl7:externalDocument) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.824-2005-09-07T000000.html"
              test="$elmcount &lt;= 1">(CDAReferenceSDTC): keuze (hl7:externalAct  of  hl7:externalObservation  of  hl7:externalProcedure  of  hl7:externalDocument) bevat te veel elementen [max 1x]</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.824
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:seperatableInd
Item: (CDAReferenceSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:seperatableInd">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.824-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='BL' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAReferenceSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.825
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct
Item: (CDAExternalActSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="string(@classCode) = ('ACT') or not(@classCode)">(CDAExternalActSDTC): de waarde van classCode MOET 'ACT' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAExternalActSDTC): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAExternalActSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAExternalActSDTC): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.825
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct/hl7:id
Item: (CDAExternalActSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalActSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.825
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct/hl7:code
Item: (CDAExternalActSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct/hl7:code">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalActSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.825
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct/hl7:text
Item: (CDAExternalActSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalAct/hl7:text">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.825-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalActSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.826
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation
Item: (CDAExternalObservationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAExternalObservationSDTC): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAExternalObservationSDTC): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAExternalObservationSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAExternalObservationSDTC): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.826
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation/hl7:id
Item: (CDAExternalObservationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalObservationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.826
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation/hl7:code
Item: (CDAExternalObservationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation/hl7:code">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalObservationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.826
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation/hl7:text
Item: (CDAExternalObservationSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalObservation/hl7:text">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.826-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalObservationSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.827
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure
Item: (CDAExternalProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="string(@classCode) = ('PROC') or not(@classCode)">(CDAExternalProcedureSDTC): de waarde van classCode MOET 'PROC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAExternalProcedureSDTC): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAExternalProcedureSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAExternalProcedureSDTC): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.827
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure/hl7:id
Item: (CDAExternalProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.827
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure/hl7:code
Item: (CDAExternalProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure/hl7:code">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.827
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure/hl7:text
Item: (CDAExternalProcedureSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalProcedure/hl7:text">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.827-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalProcedureSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.828
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument
Item: (CDAExternalDocumentSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="string(@classCode) = ('DOC') or not(@classCode)">(CDAExternalDocumentSDTC): de waarde van classCode MOET 'DOC' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="string(@moodCode) = ('EVN') or not(@moodCode)">(CDAExternalDocumentSDTC): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="count(hl7:code[@codeSystem = '2.16.840.1.113883.6.1' or @nullFlavor]) &lt;= 1">(CDAExternalDocumentSDTC): element hl7:code[@codeSystem = '2.16.840.1.113883.6.1' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAExternalDocumentSDTC): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="count(hl7:setId) &lt;= 1">(CDAExternalDocumentSDTC): element hl7:setId komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="count(hl7:versionNumber) &lt;= 1">(CDAExternalDocumentSDTC): element hl7:versionNumber komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.828
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:id
Item: (CDAExternalDocumentSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalDocumentSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.828
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:code[@codeSystem = '2.16.840.1.113883.6.1' or @nullFlavor]
Item: (CDAExternalDocumentSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:code[@codeSystem = '2.16.840.1.113883.6.1' or @nullFlavor]">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalDocumentSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.6.1')">(CDAExternalDocumentSDTC): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.828
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:text
Item: (CDAExternalDocumentSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:text">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalDocumentSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.828
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:setId
Item: (CDAExternalDocumentSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:setId">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalDocumentSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.828
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:versionNumber
Item: (CDAExternalDocumentSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:reference[@typeCode]/hl7:externalDocument/hl7:versionNumber">
      <extends rule="INT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='INT' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAExternalDocumentSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.828-2005-09-07T000000.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(CDAExternalDocumentSDTC): @value is geen geldig INT getal <value-of select="@value"/>
      </assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.806
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]
Item: (CDAProcedureSDTC)
-->

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.829
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]
Item: (CDAPreconditionSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="string(@typeCode) = ('PRCN') or not(@typeCode)">(CDAPreconditionSDTC): de waarde van typeCode MOET 'PRCN' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="count(hl7:criterion) &gt;= 1">(CDAPreconditionSDTC): element hl7:criterion is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="count(hl7:criterion) &lt;= 1">(CDAPreconditionSDTC): element hl7:criterion komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.829
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion
Item: (CDAPreconditionSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="string(@classCode) = ('OBS') or not(@classCode)">(CDAPreconditionSDTC): de waarde van classCode MOET 'OBS' zijn. Gevonden: "<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="string(@moodCode) = ('EVN.CRT') or not(@moodCode)">(CDAPreconditionSDTC): de waarde van moodCode MOET 'EVN.CRT' zijn. Gevonden: "<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="count(hl7:code) &lt;= 1">(CDAPreconditionSDTC): element hl7:code komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="count(hl7:text) &lt;= 1">(CDAPreconditionSDTC): element hl7:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="count(hl7:value) &lt;= 1">(CDAPreconditionSDTC): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.829
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion/hl7:code
Item: (CDAPreconditionSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion/hl7:code">
      <extends rule="CD.SDTC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='CD' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPreconditionSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.829
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion/hl7:text
Item: (CDAPreconditionSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion/hl7:text">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.829-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='ED' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(CDAPreconditionSDTC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>

   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.829
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion/hl7:value
Item: (CDAPreconditionSDTC)
-->
   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/hl7:precondition[hl7:criterion]/hl7:criterion/hl7:value">
      <extends rule="ANY"/>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.901
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']
Item: (SDTCinFulfillmentOf1)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']"
         id="d52838e11-false-d52846e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="string(@typeCode) = ('FLFS')">(SDTCinFulfillmentOf1): de waarde van typeCode MOET 'FLFS' zijn. Gevonden: "<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="not(@inversionInd) or string(@inversionInd)=('true','false')">(SDTCinFulfillmentOf1): attribuut @inversionInd MOET datatype 'bl' hebben  - '<value-of select="@inversionInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(SDTCinFulfillmentOf1): attribuut @negationInd MOET datatype 'bl' hebben  - '<value-of select="@negationInd"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.901
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:templateId
Item: (SDTCinFulfillmentOf1)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:templateId"
         id="d52838e19-false-d52881e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SDTCinFulfillmentOf1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.901
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:actReference[@classCode][@determinerCode = 'INSTANCE'][@moodCode]
Item: (SDTCinFulfillmentOf1)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:actReference[@classCode][@determinerCode = 'INSTANCE'][@moodCode]"
         id="d52838e21-false-d52894e0">
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="@classCode">(SDTCinFulfillmentOf1): attribute @classCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@classCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="not(@classCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.11527-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(SDTCinFulfillmentOf1): de waarde van classCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.11527' ActClass (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="@moodCode">(SDTCinFulfillmentOf1): attribute @moodCode MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@moodCode),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="not(@moodCode) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.19458-DYNAMIC.xml')/*/valueSet/conceptList/concept/@code))])">(SDTCinFulfillmentOf1): de waarde van moodCode MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.19458' x_DocumentActMood (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="string(@determinerCode) = ('INSTANCE')">(SDTCinFulfillmentOf1): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="count(sdtc:id) &gt;= 1">(SDTCinFulfillmentOf1): element sdtc:id is required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.901
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:actReference[@classCode][@determinerCode = 'INSTANCE'][@moodCode]/sdtc:templateId
Item: (SDTCinFulfillmentOf1)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:actReference[@classCode][@determinerCode = 'INSTANCE'][@moodCode]/sdtc:templateId"
         id="d52838e39-false-d52961e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SDTCinFulfillmentOf1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.10.12.901
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:actReference[@classCode][@determinerCode = 'INSTANCE'][@moodCode]/sdtc:id
Item: (SDTCinFulfillmentOf1)
-->

   <rule context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.10.12.806']]/sdtc:inFulfillmentOf1[@typeCode = 'FLFS']/sdtc:actReference[@classCode][@determinerCode = 'INSTANCE'][@moodCode]/sdtc:id"
         id="d52838e41-false-d52974e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/perinatologie/peri20-html-20190926T163541/tmp-2.16.840.1.113883.10.12.901-2005-09-07T000000.html"
              test="(local-name-from-QName(resolve-QName(@xsi:type,.))='II' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') or not(@xsi:type)">(SDTCinFulfillmentOf1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
